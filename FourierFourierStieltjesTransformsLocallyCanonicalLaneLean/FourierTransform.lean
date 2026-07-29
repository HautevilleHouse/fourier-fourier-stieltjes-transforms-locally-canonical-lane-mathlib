import canonicalLaneMathlib.AdmissibleClass
import FourierFourierStieltjesTransformsLocallyCanonicalLaneLean.FourierStieltjesMeasure

namespace HautevilleHouse
namespace FourierFourierStieltjesTransformsLocallyCanonicalLaneLean

structure FourierTransformPackage (μ : FourierStieltjesMeasurePackage) where
  characterGroup : Type u
  characterTopology : TopologicalSpace characterGroup
  transform : characterGroup → ℂ
  boundedContinuous : Prop
  positiveDefinite : Prop
  injectiveOnMeasures : Prop

structure FourierTransformEvidence {μ : FourierStieltjesMeasurePackage}
    (F : FourierTransformPackage μ) where
  boundedContinuousClosed : F.boundedContinuous
  positiveDefiniteClosed : F.positiveDefinite
  injectiveOnMeasuresClosed : F.injectiveOnMeasures

def FourierTransformClosed {μ : FourierStieltjesMeasurePackage}
    (F : FourierTransformPackage μ) : Prop :=
  F.boundedContinuous ∧ F.positiveDefinite ∧ F.injectiveOnMeasures

theorem fourier_transform_closed_from_evidence
    {μ : FourierStieltjesMeasurePackage} (F : FourierTransformPackage μ)
    (E : FourierTransformEvidence F) : FourierTransformClosed F := by
  exact And.intro E.boundedContinuousClosed
    (And.intro E.positiveDefiniteClosed E.injectiveOnMeasuresClosed)

end FourierFourierStieltjesTransformsLocallyCanonicalLaneLean
end HautevilleHouse
