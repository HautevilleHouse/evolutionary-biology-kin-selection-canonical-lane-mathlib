import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.EvolutionaryBiologyKinSelectionCanonicalLaneLean.PopulationDynamics

namespace HautevilleHouse
namespace EvolutionaryBiologyKinSelectionCanonicalLaneLean

structure KinSelectionHamiltonPackage {P : PopulationDynamicsPackage} where
  relatednessCoefficient : Type u
  benefit : Type v
  cost : Type w
  hamiltonsRule : Prop
  inclusiveFitness : Prop

structure KinSelectionHamiltonEvidence {P : PopulationDynamicsPackage} (K : KinSelectionHamiltonPackage P) where
  hamiltonsRuleClosed : K.hamiltonsRule
  inclusiveFitnessClosed : K.inclusiveFitness

def KinSelectionHamiltonClosed {P : PopulationDynamicsPackage} (K : KinSelectionHamiltonPackage P) : Prop :=
  K.hamiltonsRule ∧ K.inclusiveFitness

theorem kin_selection_hamilton_closed_from_evidence {P : PopulationDynamicsPackage} (K : KinSelectionHamiltonPackage P) (E : KinSelectionHamiltonEvidence K) : KinSelectionHamiltonClosed K := by
  exact And.intro E.hamiltonsRuleClosed E.inclusiveFitnessClosed

end EvolutionaryBiologyKinSelectionCanonicalLaneLean
end HautevilleHouse