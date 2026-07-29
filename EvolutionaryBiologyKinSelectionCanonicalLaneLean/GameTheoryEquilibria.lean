import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.EvolutionaryBiologyKinSelectionCanonicalLaneLean.PopulationDynamics

namespace HautevilleHouse
namespace EvolutionaryBiologyKinSelectionCanonicalLaneLean

structure GameTheoryEquilibriaPackage {P : PopulationDynamicsPackage} where
  payoffMatrix : Type u
  nashEquilibrium : Prop
  evolutionaryStableStrategy : Prop
  replicatorDynamics : Prop

structure GameTheoryEquilibriaEvidence {P : PopulationDynamicsPackage} (G : GameTheoryEquilibriaPackage P) where
  nashEquilibriumClosed : G.nashEquilibrium
  evolutionaryStableStrategyClosed : G.evolutionaryStableStrategy
  replicatorDynamicsClosed : G.replicatorDynamics

def GameTheoryEquilibriaClosed {P : PopulationDynamicsPackage} (G : GameTheoryEquilibriaPackage P) : Prop :=
  G.nashEquilibrium ∧ G.evolutionaryStableStrategy ∧ G.replicatorDynamics

theorem game_theory_equilibria_closed_from_evidence {P : PopulationDynamicsPackage} (G : GameTheoryEquilibriaPackage P) (E : GameTheoryEquilibriaEvidence G) : GameTheoryEquilibriaClosed G := by
  exact And.intro E.nashEquilibriumClosed (And.intro E.evolutionaryStableStrategyClosed E.replicatorDynamicsClosed)

end EvolutionaryBiologyKinSelectionCanonicalLaneLean
end HautevilleHouse