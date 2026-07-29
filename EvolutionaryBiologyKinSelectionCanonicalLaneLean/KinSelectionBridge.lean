import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EvolutionaryBiologyKinSelectionCanonicalLaneLean

structure KinSelectionAdmissibleObject where
  population : Type u
  fitnessFunction : population → ℝ
  relatednessStructure : population → population → ℝ
  hamiltonRuleSatisfied : Prop
  conclusion : hamiltonRuleSatisfied

def KinSelectionWitnessClosed (O : KinSelectionAdmissibleObject) : Prop :=
  O.hamiltonRuleSatisfied

del bridgeClosed (A : AdmissibleClass) : Prop :=
  KinSelectionWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A :=
  A.object.conclusion

end EvolutionaryBiologyKinSelectionCanonicalLaneLean
end HautevilleHouse