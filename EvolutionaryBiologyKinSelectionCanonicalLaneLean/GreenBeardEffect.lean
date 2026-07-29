import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EvolutionaryBiologyKinSelectionCanonicalLaneLean

structure GreenBeardEffectPackage where
  actor : Type u
  receiver : Type v
  trait : Type w
  traitDetectable : Prop
  altruisticBehavior : Prop
  receiverBenefits : Prop
  receiverDetectsTrait : Prop
  conditionalAltruism : Prop
  positiveAssortment : Prop
  evolutionaryStability : Prop

structure GreenBeardEffectEvidence (G : GreenBeardEffectPackage) where
  traitDetectableClosed : G.traitDetectable
  altruisticBehaviorClosed : G.altruisticBehavior
  receiverBenefitsClosed : G.receiverBenefits
  receiverDetectsTraitClosed : G.receiverDetectsTrait
  conditionalAltruismClosed : G.conditionalAltruism
  positiveAssortmentClosed : G.positiveAssortment
  evolutionaryStabilityClosed : G.evolutionaryStability

def GreenBeardEffectClosed (G : GreenBeardEffectPackage) : Prop :=
  G.traitDetectable ∧ G.altruisticBehavior ∧ G.receiverBenefits ∧
  G.receiverDetectsTrait ∧ G.conditionalAltruism ∧ G.positiveAssortment ∧
  G.evolutionaryStability

theorem green_beard_effect_closed_from_evidence (G : GreenBeardEffectPackage)
    (E : GreenBeardEffectEvidence G) : GreenBeardEffectClosed G := by
  exact And.intro E.traitDetectableClosed
    (And.intro E.altruisticBehaviorClosed
      (And.intro E.receiverBenefitsClosed
        (And.intro E.receiverDetectsTraitClosed
          (And.intro E.conditionalAltruismClosed
            (And.intro E.positiveAssortmentClosed E.evolutionaryStabilityClosed)))))

end EvolutionaryBiologyKinSelectionCanonicalLaneLean
end HautevilleHouse