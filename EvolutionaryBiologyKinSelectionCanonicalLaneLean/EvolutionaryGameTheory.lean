import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EvolutionaryBiologyKinSelectionCanonicalLaneLean

structure EvolutionaryGamePackage where
  strategySet : Type u
  payoffMatrix : strategySet → strategySet → ℝ
  replicatorEquation : Prop
  evolutionaryStableState : Prop
  nashEquilibrium : Prop

structure EvolutionaryGameEvidence (G : EvolutionaryGamePackage) where
  replicatorEquationClosed : G.replicatorEquation
  evolutionaryStableStateClosed : G.evolutionaryStableState
  nashEquilibriumClosed : G.nashEquilibrium

def EvolutionaryGameClosed (G : EvolutionaryGamePackage) : Prop :=
  G.replicatorEquation ∧ G.evolutionaryStableState ∧ G.nashEquilibrium

theorem evolutionary_game_closed_from_evidence (G : EvolutionaryGamePackage)
    (E : EvolutionaryGameEvidence G) : EvolutionaryGameClosed G :=
  And.intro E.replicatorEquationClosed
    (And.intro E.evolutionaryStableStateClosed E.nashEquilibriumClosed)

end EvolutionaryBiologyKinSelectionCanonicalLaneLean
end HautevilleHouse