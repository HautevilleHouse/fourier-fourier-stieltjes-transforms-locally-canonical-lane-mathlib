import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FourierFourierStieltjesTransformsLocallyCanonicalLaneLean

def FourierFourierStieltjesTransformsLocallyClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem fourier_fourier_stieltjes_transforms_locally_endgame (A : AdmissibleClass) :
    FourierFourierStieltjesTransformsLocallyClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end FourierFourierStieltjesTransformsLocallyCanonicalLaneLean
end HautevilleHouse