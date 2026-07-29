import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.EvolutionaryBiologyKinSelectionCanonicalLaneLean.PopulationDynamics

namespace HautevilleHouse
namespace EvolutionaryBiologyKinSelectionCanonicalLaneLean

structure EpidemiologyModelPackage {P : PopulationDynamicsPackage} where
  susceptible : Type u
  infected : Type v
  recovered : Type w
  transmissionRate : Prop
  recoveryRate : Prop
  basicReproductionNumber : Prop

structure EpidemiologyModelEvidence {P : PopulationDynamicsPackage} (E : EpidemiologyModelPackage P) where
  transmissionRateClosed : E.transmissionRate
  recoveryRateClosed : E.recoveryRate
  basicReproductionNumberClosed : E.basicReproductionNumber

def EpidemiologyModelClosed {P : PopulationDynamicsPackage} (E : EpidemiologyModelPackage P) : Prop :=
  E.transmissionRate ∧ E.recoveryRate ∧ E.basicReproductionNumber

theorem epidemiology_model_closed_from_evidence {P : PopulationDynamicsPackage} (E : EpidemiologyModelPackage P) (Ev : EpidemiologyModelEvidence E) : EpidemiologyModelClosed E := by
  exact And.intro Ev.transmissionRateClosed (And.intro Ev.recoveryRateClosed Ev.basicReproductionNumberClosed)

end EvolutionaryBiologyKinSelectionCanonicalLaneLean
end HautevilleHouse