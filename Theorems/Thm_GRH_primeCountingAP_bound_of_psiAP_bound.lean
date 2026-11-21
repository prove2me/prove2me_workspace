import Mathlib
import Definitions.Def_GRH_Defs
import Definitions.Def_LandauFunction_logIntegral
import Definitions.Def_ArtinBV

namespace GRH

/-- **Partial summation: a square-root bound for $\psi(x;q,a)$ yields one for
$\pi(x;q,a)-\mathrm{Li}(x)/\varphi(q)$.** Fix a modulus $q\ge1$ and suppose a constant
$C\ge0$ satisfies, for all real $x\ge2$,
$$\bigl|\psi(x;q,a)-\tfrac{x}{\varphi(q)}\bigr|\;\le\;C\,x^{1/2+\varepsilon}.$$
Then some $C'\ge0$ satisfies, for all real $x\ge2$,
$$\Bigl|\pi(x;q,a)-\frac{\mathrm{Li}(x)}{\varphi(q)}\Bigr|\;\le\;C'\,x^{1/2+\varepsilon}.$$

The argument is Abel (discrete) summation: writing $\theta(x;q,a)=\sum_{p\le x,\ p\equiv a(q)}\log p$
and $G(k)=\theta(k;q,a)-(k-1)/\varphi(q)$, the identity
$$\pi(Y;q,a)=\sum_{k\le Y}G(k)\Bigl(\tfrac1{\log k}-\tfrac1{\log(k+1)}\Bigr)+\text{boundary terms}
  +\frac1{\varphi(q)}\sum_{k\le Y}\tfrac1{\log k}$$
converts the bound on $G$ into the bound on $\pi$, and the logarithmic integral is compared with
$\sum_{k\le Y}1/\log k$. The passage $\psi\to\theta$ costs only $O(\sqrt{k}\log k)$. -/
theorem primeCountingAP_bound_of_psiAP_bound
    (q a : ℕ) (hq : q ≠ 0) (C ε : ℝ) (hC : 0 ≤ C) (hε : 0 < ε)
    (hpsi : ∀ x : ℝ, 2 ≤ x →
      |ArtinPrimitiveRoots.psiAP ⌊x⌋₊ q a - x / (q.totient : ℝ)| ≤
        C * x ^ ((1 : ℝ) / 2 + ε)) :
    ∃ C' : ℝ, 0 ≤ C' ∧ ∀ x : ℝ, 2 ≤ x →
      |(primeCountingAP q a x : ℝ) - LandauFunction.logIntegral x / (q.totient : ℝ)| ≤
        C' * x ^ ((1 : ℝ) / 2 + ε) := by sorry

end GRH
