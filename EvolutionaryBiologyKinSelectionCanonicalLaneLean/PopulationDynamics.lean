import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EvolutionaryBiologyKinSelectionCanonicalLaneLean

structure PopulationDynamicsPackage where
  populationType : Type u
  birthRate : populationType → ℝ
  deathRate : populationType → ℝ
  carryingCapacity : ℝ
  growthEquation : Prop
  equilibriumPoint : Prop

structure PopulationDynamicsEvidence (P : PopulationDynamicsPackage) where
  growthEquationClosed : P.growthEquation
  equilibriumPointClosed : P.equilibriumPoint

def PopulationDynamicsClosed (P : PopulationDynamicsPackage) : Prop :=
  P.growthEquation ∧ P.equilibriumPoint

theorem population_dynamics_closed_from_evidence (P : PopulationDynamicsPackage)
    (E : PopulationDynamicsEvidence P) : PopulationDynamicsClosed P :=
  And.intro E.growthEquationClosed E.equilibriumPointClosed

end EvolutionaryBiologyKinSelectionCanonicalLaneLean
end HautevilleHouse