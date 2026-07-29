import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FourierFourierStieltjesTransformsLocallyCanonicalLaneLean

structure WienerAlgebraPackage where
  group : Type u
  topology : TopologicalSpace group
  wienerAlgebra : Type v
  fourierTransforms : Type w
  wienerLevyTheorem : Prop
  spectralSynthesis : Prop

structure WienerAlgebraEvidence (W : WienerAlgebraPackage) where
  wienerLevyClosed : W.wienerLevyTheorem
  spectralSynthesisClosed : W.spectralSynthesis

def WienerAlgebraClosed (W : WienerAlgebraPackage) : Prop :=
  W.wienerLevyTheorem ∧ W.spectralSynthesis

theorem wiener_algebra_closed_from_evidence
    (W : WienerAlgebraPackage) (E : WienerAlgebraEvidence W) :
    WienerAlgebraClosed W := by
  exact And.intro E.wienerLevyClosed E.spectralSynthesisClosed

end FourierFourierStieltjesTransformsLocallyCanonicalLaneLean
end HautevilleHouse