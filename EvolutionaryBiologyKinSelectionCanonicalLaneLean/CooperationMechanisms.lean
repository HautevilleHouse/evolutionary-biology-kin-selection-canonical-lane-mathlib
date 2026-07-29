import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EvolutionaryBiologyKinSelectionCanonicalLaneLean

structure CooperationMechanismsPackage where
  cooperationBenefit : ℝ
  cooperationCost : ℝ
  relatednessThreshold : ℝ
  cooperationCondition : Prop
  altruismStable : Prop

structure CooperationMechanismsEvidence (C : CooperationMechanismsPackage) where
  cooperationConditionClosed : C.cooperationCondition
  altruismStableClosed : C.altruismStable

def CooperationMechanismsClosed (C : CooperationMechanismsPackage) : Prop :=
  C.cooperationCondition ∧ C.altruismStable

theorem cooperation_mechanisms_closed_from_evidence (C : CooperationMechanismsPackage)
    (E : CooperationMechanismsEvidence C) : CooperationMechanismsClosed C :=
  And.intro E.cooperationConditionClosed E.altruismStableClosed

end EvolutionaryBiologyKinSelectionCanonicalLaneLean
end HautevilleHouse