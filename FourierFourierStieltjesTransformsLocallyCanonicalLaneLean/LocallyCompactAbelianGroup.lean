import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FourierFourierStieltjesTransformsLocallyCanonicalLaneLean

structure LocallyCompactAbelianGroupPackage where
  group : Type u
  topology : TopologicalSpace group
  groupOp : group → group → group
  inverseOp : group → group
  identity : group
  isAbelian : Prop
  isLocallyCompact : Prop
  isHausdorff : Prop

structure LocallyCompactAbelianGroupEvidence (G : LocallyCompactAbelianGroupPackage) where
  isAbelianClosed : G.isAbelian
  isLocallyCompactClosed : G.isLocallyCompact
  isHausdorffClosed : G.isHausdorff

def LocallyCompactAbelianGroupClosed (G : LocallyCompactAbelianGroupPackage) : Prop :=
  G.isAbelian ∧ G.isLocallyCompact ∧ G.isHausdorff

theorem locally_compact_abelian_group_closed_from_evidence
    (G : LocallyCompactAbelianGroupPackage) (E : LocallyCompactAbelianGroupEvidence G) :
    LocallyCompactAbelianGroupClosed G := by
  exact And.intro E.isAbelianClosed
    (And.intro E.isLocallyCompactClosed E.isHausdorffClosed)

end FourierFourierStieltjesTransformsLocallyCanonicalLaneLean
end HautevilleHouse
