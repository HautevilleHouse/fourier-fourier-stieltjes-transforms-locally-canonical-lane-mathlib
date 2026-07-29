import canonicalLaneMathlib.AdmissibleClass
import FourierFourierStieltjesTransformsLocallyCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace FourierFourierStieltjesTransformsLocallyCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end FourierFourierStieltjesTransformsLocallyCanonicalLaneLean
end HautevilleHouse
