import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FourierFourierStieltjesTransformsLocallyCanonicalLaneLean

structure FourierStieltjesAlgebraPackage where
  group : Type u
  groupTopology : TopologicalSpace group
  groupAdd : AddGroup group
  groupTopologicalAdd : TopologicalAddGroup group
  characterGroup : Type v
  characterTopology : TopologicalSpace characterGroup
  characterGroupAdd : AddGroup characterGroup
  characterTopologicalAdd : TopologicalAddGroup characterGroup
  algebra : Type w
  algebraRing : Ring algebra
  algebraTopologicalRing : TopologicalRing algebra
  fourierStieltjesTransform : algebra → (characterGroup → ℂ)
  transformInjective : Prop
  transformIsometric : Prop
  subalgebraOfBoundedMeasures : Prop

structure FourierStieltjesAlgebraEvidence (A : FourierStieltjesAlgebraPackage) where
  transformInjectiveClosed : A.transformInjective
  transformIsometricClosed : A.transformIsometric
  subalgebraOfBoundedMeasuresClosed : A.subalgebraOfBoundedMeasures

def FourierStieltjesAlgebraClosed (A : FourierStieltjesAlgebraPackage) : Prop :=
  A.transformInjective ∧ A.transformIsometric ∧ A.subalgebraOfBoundedMeasures

theorem fourier_stieltjes_algebra_closed_from_evidence
    (A : FourierStieltjesAlgebraPackage) (E : FourierStieltjesAlgebraEvidence A) :
    FourierStieltjesAlgebraClosed A := by
  exact And.intro E.transformInjectiveClosed
    (And.intro E.transformIsometricClosed E.subalgebraOfBoundedMeasuresClosed)

end FourierFourierStieltjesTransformsLocallyCanonicalLaneLean
end HautevilleHouse