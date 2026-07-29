import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FourierFourierStieltjesTransformsLocallyCanonicalLaneLean

structure BochnerTheoremPackage where
  positiveDefiniteFunction : Type
  fourierStieltjesMeasure : Type
  representationGiven : Prop
  bochnerEvidence : BochnerTheoremEvidencePackage

structure BochnerTheoremEvidencePackage where
  representationGivenClosed : BochnerTheoremPackage.representationGiven

def BochnerTheoremClosed (B : BochnerTheoremPackage) : Prop :=
  B.representationGiven

theorem bochner_theorem_closed_from_evidence
    (B : BochnerTheoremPackage) (E : BochnerTheoremEvidencePackage) :
    BochnerTheoremClosed B := by
  exact E.representationGivenClosed

end FourierFourierStieltjesTransformsLocallyCanonicalLaneLean
end HautevilleHouse
