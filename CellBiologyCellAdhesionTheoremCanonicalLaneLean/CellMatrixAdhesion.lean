import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellAdhesionTheoremCanonicalLaneLean

structure ExtracellularMatrix where
  collagenBinding : Prop
  fibronectinBinding : Prop
  lamininBinding : Prop
  integrinMediatedAdhesion : Prop

theorem cell_matrix_adhesion_endgame (A : AdmissibleClass) : bridgeClosed A ∧ gateClosed A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CellBiologyCellAdhesionTheoremCanonicalLaneLean
end HautevilleHouse