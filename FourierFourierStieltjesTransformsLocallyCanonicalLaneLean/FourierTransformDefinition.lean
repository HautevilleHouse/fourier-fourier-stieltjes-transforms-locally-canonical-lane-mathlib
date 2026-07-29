import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FourierFourierStieltjesTransformsLocallyCanonicalLaneLean

structure FourierTransformPackage where
  domain : Type u
  codomain : Type v
  dualGroup : Type w
  transformMap : (domain → ℂ) → (dualGroup → ℂ)
  inversionMap : (dualGroup → ℂ) → (domain → ℂ)
  isContinuous : Prop
  isIsometric : Prop

structure FourierTransformEvidence (F : FourierTransformPackage) where
  transformContinuous : F.isContinuous
  transformIsometric : F.isIsometric

def FourierTransformClosed (F : FourierTransformPackage) : Prop :=
  F.isContinuous ∧ F.isIsometric

theorem fourier_transform_closed_from_evidence (F : FourierTransformPackage) (E : FourierTransformEvidence F) :
    FourierTransformClosed F := by
  exact And.intro E.transformContinuous E.transformIsometric

end FourierFourierStieltjesTransformsLocallyCanonicalLaneLean
end HautevilleHouse
