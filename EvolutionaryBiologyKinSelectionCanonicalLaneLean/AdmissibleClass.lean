import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EvolutionaryBiologyKinSelectionCanonicalLaneLean

structure AdmissibleClass where
  object : KinSelectionAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  KinSelectionWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end EvolutionaryBiologyKinSelectionCanonicalLaneLean
end HautevilleHouse
