import canonicalLaneMathlib.FourierTransform
import canonicalLaneMathlib.StieltjesTransform

namespace HautevilleHouse
namespace FourierFourierStieltjesTransformsLocallyCanonicalLaneLean

structure LocalTheoryPackage {A : FourierStieltjesAdmittedObject}
    (F : FourierTransformPackage A) (S : StieltjesTransformPackage A) where
  localization : Prop
  supportCompactness : Prop
  decayProperties : Prop

structure LocalTheoryEvidence {A : FourierStieltjesAdmittedObject}
    {F : FourierTransformPackage A} {S : StieltjesTransformPackage A}
    (L : LocalTheoryPackage F S) where
  localizationClosed : L.localization
  supportCompactnessClosed : L.supportCompactness
  decayPropertiesClosed : L.decayProperties

def LocalTheoryClosed {A : FourierStieltjesAdmittedObject}
    {F : FourierTransformPackage A} {S : StieltjesTransformPackage A}
    (L : LocalTheoryPackage F S) : Prop :=
  L.localization ∧ L.supportCompactness ∧ L.decayProperties

theorem local_theory_closed_from_evidence
    {A : FourierStieltjesAdmittedObject}
    {F : FourierTransformPackage A} {S : StieltjesTransformPackage A}
    (L : LocalTheoryPackage F S) (E : LocalTheoryEvidence L) :
    LocalTheoryClosed L := by
  exact And.intro E.localizationClosed
    (And.intro E.supportCompactnessClosed E.decayPropertiesClosed)

end FourierFourierStieltjesTransformsLocallyCanonicalLaneLean
end HautevilleHouse