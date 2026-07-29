import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.EvolutionaryBiologyKinSelectionCanonicalLaneLean.PopulationDynamics

namespace HautevilleHouse
namespace EvolutionaryBiologyKinSelectionCanonicalLaneLean

structure SystemsBiologyNetworkPackage {P : PopulationDynamicsPackage} where
  geneRegulatoryNetwork : Type u
  signalTransduction : Type v
  metabolicPathway : Type w
  networkStability : Prop
  feedbackLoop : Prop

structure SystemsBiologyNetworkEvidence {P : PopulationDynamicsPackage} (S : SystemsBiologyNetworkPackage P) where
  networkStabilityClosed : S.networkStability
  feedbackLoopClosed : S.feedbackLoop

def SystemsBiologyNetworkClosed {P : PopulationDynamicsPackage} (S : SystemsBiologyNetworkPackage P) : Prop :=
  S.networkStability ∧ S.feedbackLoop

theorem systems_biology_network_closed_from_evidence {P : PopulationDynamicsPackage} (S : SystemsBiologyNetworkPackage P) (E : SystemsBiologyNetworkEvidence S) : SystemsBiologyNetworkClosed S := by
  exact And.intro E.networkStabilityClosed E.feedbackLoopClosed

end EvolutionaryBiologyKinSelectionCanonicalLaneLean
end HautevilleHouse