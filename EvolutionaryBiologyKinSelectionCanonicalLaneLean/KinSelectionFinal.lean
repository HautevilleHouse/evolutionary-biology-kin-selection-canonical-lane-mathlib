import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EvolutionaryBiologyKinSelectionCanonicalLaneLean

def ConstrainedKinSelectionClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_kin_selection_endgame (A : AdmissibleClass) :
    ConstrainedKinSelectionClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end EvolutionaryBiologyKinSelectionCanonicalLaneLean
end HautevilleHouse