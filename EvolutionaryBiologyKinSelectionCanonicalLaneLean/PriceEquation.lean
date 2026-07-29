import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EvolutionaryBiologyKinSelectionCanonicalLaneLean

structure PriceEquationPackage where
  traitMean : Type u
  covarianceTerm : Prop
  expectationTerm : Prop
  individualFitness : Type v
  populationMeanFitness : Type w
  changeInTraitMean : Prop
  selectionGradient : Prop
  transmissionBias : Prop
  covarianceBetweenTraitAndFitness : Prop
  expectedChangeDueToTransmission : Prop
  fullPriceEquation : Prop

structure PriceEquationEvidence (P : PriceEquationPackage) where
  changeInTraitMeanClosed : P.changeInTraitMean
  covarianceBetweenTraitAndFitnessClosed : P.covarianceBetweenTraitAndFitness
  expectedChangeDueToTransmissionClosed : P.expectedChangeDueToTransmission
  fullPriceEquationClosed : P.fullPriceEquation

def PriceEquationClosed (P : PriceEquationPackage) : Prop :=
  P.changeInTraitMean ∧ P.covarianceBetweenTraitAndFitness ∧
  P.expectedChangeDueToTransmission ∧ P.fullPriceEquation

theorem price_equation_closed_from_evidence (P : PriceEquationPackage)
    (E : PriceEquationEvidence P) : PriceEquationClosed P := by
  exact And.intro E.changeInTraitMeanClosed
    (And.intro E.covarianceBetweenTraitAndFitnessClosed
      (And.intro E.expectedChangeDueToTransmissionClosed E.fullPriceEquationClosed))

end EvolutionaryBiologyKinSelectionCanonicalLaneLean
end HautevilleHouse