import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace FourierFourierStieltjesTransformsLocallyCanonicalLaneLean

structure FourierSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure FourierAdmittedObject where
  space : FourierSpace
  locallyCompactAbelian : Prop
  measure : Prop
  conclusion : conclusion True

structure FourierEndgameState where
  object : FourierAdmittedObject

def FourierWitnessClosed (O : FourierAdmittedObject) : Prop :=
  O.conclusion

end FourierFourierStieltjesTransformsLocallyCanonicalLaneLean
end HautevilleHouse
