import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellAdhesionTheoremCanonicalLaneLean

structure AdhesionDynamicsPackage where
  turnoverRate : Float
  adhesionDisassembly : Bool
  forceDependence : String
  adaptorProteins : List String

default turnoverRate := 0.5

default forceDependence := "actin"

structure AdhesionDynamicsEvidence (D : AdhesionDynamicsPackage) where
  turnoverRateClosed : D.turnoverRate > 0.0
  adhesionDisassemblyClosed : D.adhesionDisassembly
  forceDependenceClosed : D.forceDependence ≠ ""
  adaptorProteinsClosed : D.adaptorProteins ≠ []

def AdhesionDynamicsClosed (D : AdhesionDynamicsPackage) : Prop :=
  D.turnoverRate > 0.0 ∧ D.adhesionDisassembly ∧ D.forceDependence ≠ "" ∧ D.adaptorProteins ≠ []

theorem adhesion_dynamics_closed_from_evidence (D : AdhesionDynamicsPackage) (E : AdhesionDynamicsEvidence D) :
    AdhesionDynamicsClosed D := by
  exact And.intro E.turnoverRateClosed (And.intro E.adhesionDisassemblyClosed (And.intro E.forceDependenceClosed E.adaptorProteinsClosed))

end CellBiologyCellAdhesionTheoremCanonicalLaneLean
end HautevilleHouse