import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EvolutionaryBiologyKinSelectionCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  KinSelectionWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end EvolutionaryBiologyKinSelectionCanonicalLaneLean
end HautevilleHouse
