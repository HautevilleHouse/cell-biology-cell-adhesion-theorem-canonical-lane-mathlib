import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellAdhesionTheoremCanonicalLaneLean

structure FocalAdhesion where
  integrinClustering : Prop
  focalAdhesionKinaseActivation : Prop
  forceTransmission : Prop
  adhesionTurnover : Prop

theorem focal_adhesion_closed (A : AdmissibleClass) : bridgeClosed A ∧ gateClosed A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CellBiologyCellAdhesionTheoremCanonicalLaneLean
end HautevilleHouse