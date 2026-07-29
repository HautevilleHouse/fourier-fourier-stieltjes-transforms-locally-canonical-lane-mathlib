import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FourierFourierStieltjesTransformsLocallyCanonicalLaneLean

structure LocallyCompactGroup where
  group : Type u
  topology : TopologicalSpace group
  groupStructure : Group group
  hausdorff : Prop
  locallyCompact : Prop

theorem locally_compact_group_properties (G : LocallyCompactGroup) : G.hausdorff ∧ G.locallyCompact :=
  And.intro G.hausdorff G.locallyCompact

end FourierFourierStieltjesTransformsLocallyCanonicalLaneLean
end HautevilleHouse
