import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EvolutionaryBiologyKinSelectionCanonicalLaneLean

structure HamiltonRulePackage where
  relatednessCoefficient : ℝ
  benefit : ℝ
  cost : ℝ
  ruleSatisfied : Prop
  evidence : ruleSatisfied

def HamiltonRuleClosed (H : HamiltonRulePackage) : Prop :=
  H.ruleSatisfied

theorem hamilton_rule_closed (H : HamiltonRulePackage) : HamiltonRuleClosed H := by
  exact H.evidence

end EvolutionaryBiologyKinSelectionCanonicalLaneLean
end HautevilleHouse
