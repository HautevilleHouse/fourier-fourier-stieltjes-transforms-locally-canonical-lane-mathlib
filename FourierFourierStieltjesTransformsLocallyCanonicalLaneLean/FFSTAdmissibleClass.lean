import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FourierFourierStieltjesTransformsLocallyCanonicalLaneLean

structure FourierStieltjesAdmittedObject where
  space : Type u
  topology : TopologicalSpace space
  abelianGroup : AddCommGroup space
  measure : MeasureTheory.Measure space
  fourierTransformDefined : Prop
  stieltjesTransformDefined : Prop
  conclusion : fourierTransformDefined ∧ stieltjesTransformDefined

structure AdmissibleClass where
  object : FourierStieltjesAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  (A.object.conclusion) ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end FourierFourierStieltjesTransformsLocallyCanonicalLaneLean
end HautevilleHouse