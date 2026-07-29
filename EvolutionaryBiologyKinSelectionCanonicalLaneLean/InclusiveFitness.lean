import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EvolutionaryBiologyKinSelectionCanonicalLaneLean

structure InclusiveFitnessPackage where
  actorFitness : ℝ
  recipientFitness : ℝ
  relatednessCoefficient : ℝ
  hamiltonRule : Prop
  inclusiveFitnessEffect : Prop

structure InclusiveFitnessEvidence (I : InclusiveFitnessPackage) where
  hamiltonRuleClosed : I.hamiltonRule
  inclusiveFitnessEffectClosed : I.inclusiveFitnessEffect

def InclusiveFitnessClosed (I : InclusiveFitnessPackage) : Prop :=
  I.hamiltonRule ∧ I.inclusiveFitnessEffect

theorem inclusive_fitness_closed_from_evidence (I : InclusiveFitnessPackage)
    (E : InclusiveFitnessEvidence I) : InclusiveFitnessClosed I :=
  And.intro E.hamiltonRuleClosed E.inclusiveFitnessEffectClosed

end EvolutionaryBiologyKinSelectionCanonicalLaneLean
end HautevilleHouse