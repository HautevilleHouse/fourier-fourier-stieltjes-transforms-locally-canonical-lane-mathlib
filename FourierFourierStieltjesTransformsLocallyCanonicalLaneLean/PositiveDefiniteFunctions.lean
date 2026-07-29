import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FourierFourierStieltjesTransformsLocallyCanonicalLaneLean

structure PositiveDefinitePackage where
  group : Type u
  topology : TopologicalSpace group
  positiveDefiniteFunction : Type v
  continuityProp : Prop
  bochnerWeilRaikovTheorem : Prop
  corollary : Prop

structure PositiveDefiniteEvidence (P : PositiveDefinitePackage) where
  continuityClosed : P.continuityProp
  bochnerWeilRaikovClosed : P.bochnerWeilRaikovTheorem
  corollaryClosed : P.corollary

def PositiveDefiniteClosed (P : PositiveDefinitePackage) : Prop :=
  P.continuityProp ∧ P.bochnerWeilRaikovTheorem ∧ P.corollary

theorem positive_definite_closed_from_evidence
    (P : PositiveDefinitePackage) (E : PositiveDefiniteEvidence P) :
    PositiveDefiniteClosed P := by
  exact And.intro E.continuityClosed (And.intro E.bochnerWeilRaikovClosed E.corollaryClosed)

end FourierFourierStieltjesTransformsLocallyCanonicalLaneLean
end HautevilleHouse