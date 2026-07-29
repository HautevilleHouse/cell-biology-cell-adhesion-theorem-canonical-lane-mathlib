import HautevilleHouse.CellBiologyCellAdhesionTheoremCanonicalLaneLean.CellCellAdhesionDynamics

namespace HautevilleHouse
namespace CellBiologyCellAdhesionTheoremCanonicalLaneLean

structure AdhesionMediatedMigrationPackage {C : CellAdhesionMoleculesPackage}
    {M : CellAdhesionMoleculesEvidence C} {S : AdhesionSignalingPathwaysPackage M}
    {Sig : AdhesionSignalingPathwaysEvidence S} {D : CellCellAdhesionDynamicsPackage Sig}
    (Dyn : CellCellAdhesionDynamicsEvidence D) where
  frontRearPolarization : Prop
  lamellipodiaProtrusion : Prop
  focalAdhesionTurnover : Prop
  trailingEdgeDetachment : Prop
  migrationSpeed : Prop

structure AdhesionMediatedMigrationEvidence {C : CellAdhesionMoleculesPackage}
    {M : CellAdhesionMoleculesEvidence C} {S : AdhesionSignalingPathwaysPackage M}
    {Sig : AdhesionSignalingPathwaysEvidence S} {D : CellCellAdhesionDynamicsPackage Sig}
    {Dyn : CellCellAdhesionDynamicsEvidence D} (Mig : AdhesionMediatedMigrationPackage Dyn) where
  frontRearPolarizationClosed : Mig.frontRearPolarization
  lamellipodiaProtrusionClosed : Mig.lamellipodiaProtrusion
  focalAdhesionTurnoverClosed : Mig.focalAdhesionTurnover
  trailingEdgeDetachmentClosed : Mig.trailingEdgeDetachment
  migrationSpeedClosed : Mig.migrationSpeed

def AdhesionMediatedMigrationClosed {C : CellAdhesionMoleculesPackage}
    {M : CellAdhesionMoleculesEvidence C} {S : AdhesionSignalingPathwaysPackage M}
    {Sig : AdhesionSignalingPathwaysEvidence S} {D : CellCellAdhesionDynamicsPackage Sig}
    {Dyn : CellCellAdhesionDynamicsEvidence D} (Mig : AdhesionMediatedMigrationPackage Dyn) : Prop :=
  Mig.frontRearPolarization ∧ Mig.lamellipodiaProtrusion ∧ Mig.focalAdhesionTurnover ∧
  Mig.trailingEdgeDetachment ∧ Mig.migrationSpeed

theorem adhesion_mediated_migration_closed_from_evidence {C : CellAdhesionMoleculesPackage}
    {M : CellAdhesionMoleculesEvidence C} {S : AdhesionSignalingPathwaysPackage M}
    {Sig : AdhesionSignalingPathwaysEvidence S} {D : CellCellAdhesionDynamicsPackage Sig}
    {Dyn : CellCellAdhesionDynamicsEvidence D} (Mig : AdhesionMediatedMigrationPackage Dyn)
    (E : AdhesionMediatedMigrationEvidence Mig) : AdhesionMediatedMigrationClosed Mig := by
  exact And.intro E.frontRearPolarizationClosed
    (And.intro E.lamellipodiaProtrusionClosed
      (And.intro E.focalAdhesionTurnoverClosed
        (And.intro E.trailingEdgeDetachmentClosed E.migrationSpeedClosed)))

end CellBiologyCellAdhesionTheoremCanonicalLaneLean
end HautevilleHouse