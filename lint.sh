#!/bin/sh
# Optional Lean quality checks.
set -u

usage() {
	cat <<'EOF'
Usage: lint.sh [option ...] [file ...]

Optional Lean quality checks. Each flag selects one tool;
--all runs every tool serially.

  --lake-lint      lake lint (always the whole package)
  --axiom-audit    axiom-audit --json
  --lean-fmt       leanfmt --check, or lean-fmt
  --import-mem     import modules; print peak RSS
  --all            run all of the above, in that order
  -h, --help       show this help
  file             .lean path or module (Solutions.Sol_foo)

If files are given, --lean-fmt, --axiom-audit, and --import-mem
run on those theorems or solutions only. --import-mem then
imports each target (plus what it imports). With no files,
those tools cover the whole project.

Selected tools must already be on PATH. Missing tools are
reported before anything is run. --import-mem uses /usr/bin/time
(Linux, macOS, FreeBSD). Exit status is non-zero if a tool is
missing or a check fails.
EOF
}

err() {
	echo "lint.sh: $*" >&2
}

need() {
	# need NAME  — require command NAME
	# need NAME alt1 alt2 ... — require NAME, or one of the alts
	primary=$1
	shift
	if command -v "$primary" >/dev/null 2>&1; then
		return 0
	fi
	for alt in "$@"; do
		if command -v "$alt" >/dev/null 2>&1; then
			return 0
		fi
	done
	if [ "$#" -gt 0 ]; then
		names="'$primary'"
		for alt in "$@"; do
			names="$names or '$alt'"
		done
		err "$names is not installed or on PATH"
	else
		err "'$primary' is not installed or on PATH"
	fi
	return 1
}

TIME_FLAVOR=

need_time() {
	if [ ! -x /usr/bin/time ]; then
		err "'/usr/bin/time' is not installed"
		return 1
	fi
	if /usr/bin/time -f '%M' -o /dev/null true >/dev/null 2>&1; then
		TIME_FLAVOR=gnu
		return 0
	fi
	if /usr/bin/time -l -o /dev/null true >/dev/null 2>&1; then
		TIME_FLAVOR=bsd
		return 0
	fi
	err "/usr/bin/time cannot report peak RSS on this platform"
	return 1
}

run_lake_lint() {
	echo "==> lake lint"
	if [ -s "$target_list" ]; then
		echo "lint.sh: --lake-lint always lints the whole package"
	fi
	lake lint
}

module_of() {
	file=$1
	case $file in
	"$script_dir"/*) file=${file#"$script_dir"/} ;;
	esac
	file=${file#./}
	file=${file%.lean}
	printf '%s\n' "$file" | tr '/' '.'
}

resolve_target() {
	raw=$1
	case $raw in
	/*)
		if [ -f "$raw" ]; then
			printf '%s\n' "$raw"
			return 0
		fi
		;;
	*.lean)
		if [ -f "$raw" ]; then
			printf '%s\n' "$raw"
			return 0
		fi
		;;
	esac
	if [ -f "$raw.lean" ]; then
		printf '%s\n' "$raw.lean"
		return 0
	fi
	dotted=$(printf '%s\n' "$raw" | tr '.' '/')
	if [ -f "$dotted.lean" ]; then
		printf '%s\n' "$dotted.lean"
		return 0
	fi
	err "no such theorem or solution: $raw"
	return 1
}

selected_lean_files() {
	if [ -s "$target_list" ]; then
		cat "$target_list"
	else
		project_lean_files
	fi
}

run_axiom_audit() {
	echo "==> axiom-audit --json"
	if [ ! -s "$target_list" ]; then
		axiom-audit --json
		return $?
	fi
	mods=
	while IFS= read -r file; do
		m=$(module_of "$file")
		if [ -z "$mods" ]; then
			mods=$m
		else
			mods="$mods,$m"
		fi
	done <"$target_list"
	axiom-audit --json --modules "$mods"
}

lean_files() {
	find . \( -name .git -o -name .lake \) -prune -o -name '*.lean' -type f -print
}

project_lean_files() {
	listed=0
	for dir in Definitions Theorems Solutions; do
		if [ -d "$dir" ]; then
			find "$dir" -name '*.lean' -type f -print
			listed=1
		fi
	done
	if [ "$listed" -eq 0 ]; then
		find . \( -name .git -o -name .lake -o -name examples -o -name scripts \) -prune \
			-o -name '*.lean' -type f -print
	fi
}

run_lean_fmt() {
	if command -v leanfmt >/dev/null 2>&1; then
		fmt=leanfmt
	else
		fmt=lean-fmt
	fi
	echo "==> $fmt"

	list="${TMPDIR:-/tmp}/prove2me-lint-files.$$"
	if [ -s "$target_list" ]; then
		cat "$target_list"
	else
		lean_files
	fi | sort >"$list"
	if [ ! -s "$list" ]; then
		rm -f "$list"
		echo "lint.sh: no .lean files to check"
		return 0
	fi

	set --
	while IFS= read -r file; do
		set -- "$@" "$file"
	done <"$list"
	rm -f "$list"

	if [ "$fmt" = "leanfmt" ]; then
		leanfmt --check "$@"
		return $?
	fi

	formatted="${TMPDIR:-/tmp}/prove2me-lint-fmt.$$"
	fmt_status=0
	for file in "$@"; do
		if ! lean-fmt <"$file" >"$formatted"; then
			err "lean-fmt failed on $file"
			fmt_status=1
			continue
		fi
		if ! cmp -s "$file" "$formatted"; then
			err "$file differs from lean-fmt"
			fmt_status=1
		fi
	done
	rm -f "$formatted"
	return "$fmt_status"
}

mib_from_kb() {
	awk -v kb="$1" 'BEGIN { printf "%.1f MiB", kb / 1024 }'
}

mib_from_bytes() {
	awk -v b="$1" 'BEGIN { printf "%.1f MiB", b / 1024 / 1024 }'
}

print_peak_rss() {
	memfile=$1
	if [ ! -s "$memfile" ]; then
		err "no peak RSS recorded"
		return 1
	fi
	if [ "$TIME_FLAVOR" = "gnu" ]; then
		kb=$(sed -n '1p' "$memfile")
		echo "lint.sh: peak RSS $(mib_from_kb "$kb") (${kb} KiB)"
		return 0
	fi
	rss=$(awk '/maximum resident set size/ { print $1; exit }' "$memfile")
	if [ -z "$rss" ]; then
		err "could not parse peak RSS from /usr/bin/time -l"
		return 1
	fi
	case $(uname -s) in
	Darwin)
		echo "lint.sh: peak RSS $(mib_from_bytes "$rss") (${rss} bytes)"
		;;
	*)
		echo "lint.sh: peak RSS $(mib_from_kb "$rss") (${rss} KiB)"
		;;
	esac
}

run_import_mem() {
	echo "==> import-mem"

	list="${TMPDIR:-/tmp}/prove2me-import-mem.$$.files"
	probe="${TMPDIR:-/tmp}/prove2me-import-mem.$$.lean"
	memfile="${TMPDIR:-/tmp}/prove2me-import-mem.$$.rss"
	selected_lean_files | sort >"$list"
	if [ ! -s "$list" ]; then
		rm -f "$list"
		err "no project .lean files to import"
		return 1
	fi

	: >"$probe"
	n=0
	while IFS= read -r file; do
		mod=$(module_of "$file")
		printf 'import %s\n' "$mod" >>"$probe"
		n=$((n + 1))
	done <"$list"
	rm -f "$list"
	echo "lint.sh: importing $n module(s)"

	if [ "$TIME_FLAVOR" = "gnu" ]; then
		/usr/bin/time -f '%M' -o "$memfile" -- lake env lean "$probe"
		rc=$?
	else
		/usr/bin/time -l -o "$memfile" lake env lean "$probe"
		rc=$?
	fi
	print_peak_rss "$memfile"
	rss_rc=$?
	rm -f "$probe" "$memfile"
	if [ "$rc" -ne 0 ]; then
		return "$rc"
	fi
	return "$rss_rc"
}

script_dir=$(CDPATH= cd "$(dirname "$0")" && pwd)
cd "$script_dir" || exit 1

do_lake_lint=0
do_axiom_audit=0
do_lean_fmt=0
do_import_mem=0
target_list="${TMPDIR:-/tmp}/prove2me-lint-targets.$$"
: >"$target_list"
trap 'rm -f "$target_list"' EXIT

if [ "$#" -eq 0 ]; then
	usage >&2
	exit 1
fi

for arg in "$@"; do
	case $arg in
	--lake-lint) do_lake_lint=1 ;;
	--axiom-audit) do_axiom_audit=1 ;;
	--lean-fmt) do_lean_fmt=1 ;;
	--import-mem) do_import_mem=1 ;;
	--all)
		do_lake_lint=1
		do_axiom_audit=1
		do_lean_fmt=1
		do_import_mem=1
		;;
	-h | --help)
		usage
		exit 0
		;;
	-*)
		err "unknown option: $arg"
		usage >&2
		exit 1
		;;
	*)
		resolved=$(resolve_target "$arg") || exit 1
		printf '%s\n' "$resolved" >>"$target_list"
		;;
	esac
done

if [ "$do_lake_lint$do_axiom_audit$do_lean_fmt$do_import_mem" = "0000" ]; then
	err "select a tool (see --help)"
	exit 1
fi

missing=0
if [ "$do_lake_lint" -eq 1 ]; then
	need lake || missing=1
fi
if [ "$do_axiom_audit" -eq 1 ]; then
	need axiom-audit || missing=1
fi
if [ "$do_lean_fmt" -eq 1 ]; then
	need leanfmt lean-fmt || missing=1
fi
if [ "$do_import_mem" -eq 1 ]; then
	need lake || missing=1
	need_time || missing=1
fi
if [ "$missing" -ne 0 ]; then
	exit 1
fi

status=0
if [ "$do_lake_lint" -eq 1 ]; then
	run_lake_lint || status=1
fi
if [ "$do_axiom_audit" -eq 1 ]; then
	run_axiom_audit || status=1
fi
if [ "$do_lean_fmt" -eq 1 ]; then
	run_lean_fmt || status=1
fi
if [ "$do_import_mem" -eq 1 ]; then
	run_import_mem || status=1
fi
exit "$status"
