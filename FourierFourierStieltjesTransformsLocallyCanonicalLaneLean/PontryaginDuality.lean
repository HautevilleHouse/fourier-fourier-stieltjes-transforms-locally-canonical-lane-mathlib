import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FourierFourierStieltjesTransformsLocallyCanonicalLaneLean

structure PontryaginDualityPackage where
  group : Type u
  groupTopology : TopologicalSpace group
  groupAdd : AddGroup group
  groupTopologicalAdd : TopologicalAddGroup group
  characterGroup : Type v
  characterTopology : TopologicalSpace characterGroup
  characterGroupAdd : AddGroup characterGroup
  characterTopologicalAdd : TopologicalAddGroup characterGroup
  doubleDual : Type w
  doubleDualTopology : TopologicalSpace doubleDual
  doubleDualGroup : AddGroup doubleDual
  doubleDualTopologicalAdd : TopologicalAddGroup doubleDual
  canonicalMap : group → doubleDual
  canonicalMapContinuous : Continuous canonicalMap
  canonicalMapInjective : Prop
  canonicalMapDenseImage : Prop
  canonicalMapIsIsomorphism : Prop

structure PontryaginDualityEvidence (P : PontryaginDualityPackage) where
  canonicalMapInjectiveClosed : P.canonicalMapInjective
  canonicalMapDenseImageClosed : P.canonicalMapDenseImage
  canonicalMapIsIsomorphismClosed : P.canonicalMapIsIsomorphism

def PontryaginDualityClosed (P : PontryaginDualityPackage) : Prop :=
  P.canonicalMapInjective ∧ P.canonicalMapDenseImage ∧ P.canonicalMapIsIsomorphism

theorem pontryagin_duality_closed_from_evidence
    (P : PontryaginDualityPackage) (E : PontryaginDualityEvidence P) :
    PontryaginDualityClosed P := by
  exact And.intro E.canonicalMapInjectiveClosed
    (And.intro E.canonicalMapDenseImageClosed E.canonicalMapIsIsomorphismClosed)

end FourierFourierStieltjesTransformsLocallyCanonicalLaneLean
end HautevilleHouse