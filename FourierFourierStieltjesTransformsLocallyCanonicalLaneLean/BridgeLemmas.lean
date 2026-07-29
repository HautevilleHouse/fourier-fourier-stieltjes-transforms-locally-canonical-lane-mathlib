import canonicalLaneMathlib.AdmissibleClass
import FourierFourierStieltjesTransformsLocallyCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace FourierFourierStieltjesTransformsLocallyCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  FourierWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end FourierFourierStieltjesTransformsLocallyCanonicalLaneLean
end HautevilleHouse
