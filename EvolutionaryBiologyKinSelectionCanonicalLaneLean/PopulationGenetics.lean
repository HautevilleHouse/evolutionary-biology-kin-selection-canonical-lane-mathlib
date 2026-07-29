import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EvolutionaryBiologyKinSelectionCanonicalLaneLean

structure PopulationGeneticsPackage where
  alleleFrequencies : Type u
  genotypeFrequencies : Type v
  hardyWeinbergEquilibrium : Prop
  selectionCoefficients : Type w
  fitnessValues : Type x
  mutationRates : Type y
  populationSize : Type z
  discreteGenerations : Prop
  randomMating : Prop
  noSelection : Prop
  noMutation : Prop
  noMigration : Prop
  infinitePopulation : Prop

structure PopulationGeneticsEvidence (P : PopulationGeneticsPackage) where
  hardyWeinbergEquilibriumClosed : P.hardyWeinbergEquilibrium
  discreteGenerationsClosed : P.discreteGenerations
  randomMatingClosed : P.randomMating
  noSelectionClosed : P.noSelection
  noMutationClosed : P.noMutation
  noMigrationClosed : P.noMigration
  infinitePopulationClosed : P.infinitePopulation

def PopulationGeneticsClosed (P : PopulationGeneticsPackage) : Prop :=
  P.hardyWeinbergEquilibrium ∧ P.discreteGenerations ∧ P.randomMating ∧
  P.noSelection ∧ P.noMutation ∧ P.noMigration ∧ P.infinitePopulation

theorem population_genetics_closed_from_evidence (P : PopulationGeneticsPackage)
    (E : PopulationGeneticsEvidence P) : PopulationGeneticsClosed P := by
  exact And.intro E.hardyWeinbergEquilibriumClosed
    (And.intro E.discreteGenerationsClosed
      (And.intro E.randomMatingClosed
        (And.intro E.noSelectionClosed
          (And.intro E.noMutationClosed
            (And.intro E.noMigrationClosed E.infinitePopulationClosed)))))

end EvolutionaryBiologyKinSelectionCanonicalLaneLean
end HautevilleHouse