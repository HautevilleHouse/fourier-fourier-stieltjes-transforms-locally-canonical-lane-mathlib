import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FourierFourierStieltjesTransformsLocallyCanonicalLaneLean

structure MeasureAlgebraPackage where
  group : Type u
  topology : TopologicalSpace group
  measureAlgebra : Type v
  convolution : Type w
  involution : Type x
  gelfandTransform : Prop
  idempotentMeasures : Prop

structure MeasureAlgebraEvidence (M : MeasureAlgebraPackage) where
  gelfandTransformClosed : M.gelfandTransform
  idempotentMeasuresClosed : M.idempotentMeasures

def MeasureAlgebraClosed (M : MeasureAlgebraPackage) : Prop :=
  M.gelfandTransform ∧ M.idempotentMeasures

theorem measure_algebra_closed_from_evidence
    (M : MeasureAlgebraPackage) (E : MeasureAlgebraEvidence M) :
    MeasureAlgebraClosed M := by
  exact And.intro E.gelfandTransformClosed E.idempotentMeasuresClosed

end FourierFourierStieltjesTransformsLocallyCanonicalLaneLean
end HautevilleHouse