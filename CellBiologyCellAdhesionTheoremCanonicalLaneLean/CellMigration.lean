import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellAdhesionTheoremCanonicalLaneLean

structure CellMigrationPackage where
  lamellipodiaProtrusion : Prop
  adhesionTurnover : Prop
  contractility : Prop
  cellPolarity : Prop

structure CellMigrationEvidence (M : CellMigrationPackage) where
  lamellipodiaProtrusionClosed : M.lamellipodiaProtrusion
  adhesionTurnoverClosed : M.adhesionTurnover
  contractilityClosed : M.contractility
  cellPolarityClosed : M.cellPolarity

def CellMigrationClosed (M : CellMigrationPackage) : Prop :=
  M.lamellipodiaProtrusion ∧ M.adhesionTurnover ∧ M.contractility ∧ M.cellPolarity

theorem cell_migration_closed_from_evidence (M : CellMigrationPackage) (E : CellMigrationEvidence M) : CellMigrationClosed M := by
  exact And.intro E.lamellipodiaProtrusionClosed (And.intro E.adhesionTurnoverClosed (And.intro E.contractilityClosed E.cellPolarityClosed))

end CellBiologyCellAdhesionTheoremCanonicalLaneLean
end HautevilleHouse