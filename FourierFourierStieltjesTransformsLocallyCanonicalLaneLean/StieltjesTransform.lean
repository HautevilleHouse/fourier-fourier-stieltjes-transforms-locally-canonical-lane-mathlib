import canonicalLaneMathlib.FourierStieltjesAdmittedObject

namespace HautevilleHouse
namespace FourierFourierStieltjesTransformsLocallyCanonicalLaneLean

structure StieltjesTransformPackage {A : FourierStieltjesAdmittedObject} where
  stieltjesTransform : (A.space → ℂ) → (ℂ → ℂ)
  analyticContinuation : Prop
  momentGenerating : Prop
  inversion : Prop

structure StieltjesTransformEvidence {A : FourierStieltjesAdmittedObject}
    (S : StieltjesTransformPackage A) where
  analyticContinuationClosed : S.analyticContinuation
  momentGeneratingClosed : S.momentGenerating
  inversionClosed : S.inversion

def StieltjesTransformClosed {A : FourierStieltjesAdmittedObject}
    (S : StieltjesTransformPackage A) : Prop :=
  S.analyticContinuation ∧ S.momentGenerating ∧ S.inversion

theorem stieltjes_transform_closed_from_evidence
    {A : FourierStieltjesAdmittedObject} (S : StieltjesTransformPackage A)
    (E : StieltjesTransformEvidence S) : StieltjesTransformClosed S := by
  exact And.intro E.analyticContinuationClosed
    (And.intro E.momentGeneratingClosed E.inversionClosed)

end FourierFourierStieltjesTransformsLocallyCanonicalLaneLean
end HautevilleHouse