import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FourierFourierStieltjesTransformsLocallyCanonicalLaneLean

structure FourierStieltjesMeasurePackage where
  group : Type u
  groupTopology : TopologicalSpace group
  groupAdd : AddGroup group
  groupTopologicalAdd : TopologicalAddGroup group
  characterGroup : Type v
  characterTopology : TopologicalSpace characterGroup
  characterGroupAdd : AddGroup characterGroup
  characterTopologicalAdd : TopologicalAddGroup characterGroup
  pairing : group → characterGroup → ℂ
  pairingContinuous : Continuous (Function.uncurry pairing)
  measure : Set group → ℂ
  measureFiniteAdditive : Prop
  measureRegular : Prop
  fourierStieltjesTransform : characterGroup → ℂ
  fourierStieltjesTransformDefined : Prop

structure FourierStieltjesMeasureEvidence (F : FourierStieltjesMeasurePackage) where
  measureFiniteAdditiveClosed : F.measureFiniteAdditive
  measureRegularClosed : F.measureRegular
  fourierStieltjesTransformDefinedClosed : F.fourierStieltjesTransformDefined

def FourierStieltjesMeasureClosed (F : FourierStieltjesMeasurePackage) : Prop :=
  F.measureFiniteAdditive ∧ F.measureRegular ∧ F.fourierStieltjesTransformDefined

theorem fourier_stieltjes_measure_closed_from_evidence
    (F : FourierStieltjesMeasurePackage) (E : FourierStieltjesMeasureEvidence F) :
    FourierStieltjesMeasureClosed F := by
  exact And.intro E.measureFiniteAdditiveClosed
    (And.intro E.measureRegularClosed E.fourierStieltjesTransformDefinedClosed)

end FourierFourierStieltjesTransformsLocallyCanonicalLaneLean
end HautevilleHouse