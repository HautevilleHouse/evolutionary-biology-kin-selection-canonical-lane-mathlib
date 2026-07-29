import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EvolutionaryBiologyKinSelectionCanonicalLaneLean

structure EusocialityPackage where
  colony : Type u
  queen : Type v
  workers : Type w
  reproductiveDivision : Prop
  overlappingGenerations : Prop
  cooperativeBroodCare : Prop
  haplodiploidy : Prop
  relatednessAsymmetry : Prop
  workerSterility : Prop
  inclusiveFitnessExplained : Prop

structure EusocialityEvidence (E : EusocialityPackage) where
  reproductiveDivisionClosed : E.reproductiveDivision
  overlappingGenerationsClosed : E.overlappingGenerations
  cooperativeBroodCareClosed : E.cooperativeBroodCare
  haplodiploidyClosed : E.haplodiploidy
  relatednessAsymmetryClosed : E.relatednessAsymmetry
  workerSterilityClosed : E.workerSterility
  inclusiveFitnessExplainedClosed : E.inclusiveFitnessExplained

def EusocialityClosed (E : EusocialityPackage) : Prop :=
  E.reproductiveDivision ∧ E.overlappingGenerations ∧
  E.cooperativeBroodCare ∧ E.haplodiploidy ∧ E.relatednessAsymmetry ∧
  E.workerSterility ∧ E.inclusiveFitnessExplained

theorem eusociality_closed_from_evidence (E : EusocialityPackage)
    (Ev : EusocialityEvidence E) : EusocialityClosed E := by
  exact And.intro Ev.reproductiveDivisionClosed
    (And.intro Ev.overlappingGenerationsClosed
      (And.intro Ev.cooperativeBroodCareClosed
        (And.intro Ev.haplodiploidyClosed
          (And.intro Ev.relatednessAsymmetryClosed
            (And.intro Ev.workerSterilityClosed Ev.inclusiveFitnessExplainedClosed)))))

end EvolutionaryBiologyKinSelectionCanonicalLaneLean
end HautevilleHouse