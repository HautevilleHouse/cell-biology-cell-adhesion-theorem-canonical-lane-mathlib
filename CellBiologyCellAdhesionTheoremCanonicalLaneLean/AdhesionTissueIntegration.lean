import HautevilleHouse.CellBiologyCellAdhesionTheoremCanonicalLaneLean.AdhesionMediatedMigration

namespace HautevilleHouse
namespace CellBiologyCellAdhesionTheoremCanonicalLaneLean

structure AdhesionTissueIntegrationPackage {C : CellAdhesionMoleculesPackage}
    {M : CellAdhesionMoleculesEvidence C} {S : AdhesionSignalingPathwaysPackage M}
    {Sig : AdhesionSignalingPathwaysEvidence S} {D : CellCellAdhesionDynamicsPackage Sig}
    {Dyn : CellCellAdhesionDynamicsEvidence D} {Mig : AdhesionMediatedMigrationPackage Dyn}
    (MigEv : AdhesionMediatedMigrationEvidence Mig) where
  cellCellJunctionsFormed : Prop
  cellMatrixAdhesions : Prop
  tissueMorphogenesis : Prop
  woundHealing : Prop
  cancerMetastasis : Prop

structure AdhesionTissueIntegrationEvidence {C : CellAdhesionMoleculesPackage}
    {M : CellAdhesionMoleculesEvidence C} {S : AdhesionSignalingPathwaysPackage M}
    {Sig : AdhesionSignalingPathwaysEvidence S} {D : CellCellAdhesionDynamicsPackage Sig}
    {Dyn : CellCellAdhesionDynamicsEvidence D} {Mig : AdhesionMediatedMigrationPackage Dyn}
    {MigEv : AdhesionMediatedMigrationEvidence Mig} (T : AdhesionTissueIntegrationPackage MigEv) where
  cellCellJunctionsFormedClosed : T.cellCellJunctionsFormed
  cellMatrixAdhesionsClosed : T.cellMatrixAdhesions
  tissueMorphogenesisClosed : T.tissueMorphogenesis
  woundHealingClosed : T.woundHealing
  cancerMetastasisClosed : T.cancerMetastasis

def AdhesionTissueIntegrationClosed {C : CellAdhesionMoleculesPackage}
    {M : CellAdhesionMoleculesEvidence C} {S : AdhesionSignalingPathwaysPackage M}
    {Sig : AdhesionSignalingPathwaysEvidence S} {D : CellCellAdhesionDynamicsPackage Sig}
    {Dyn : CellCellAdhesionDynamicsEvidence D} {Mig : AdhesionMediatedMigrationPackage Dyn}
    {MigEv : AdhesionMediatedMigrationEvidence Mig} (T : AdhesionTissueIntegrationPackage MigEv) : Prop :=
  T.cellCellJunctionsFormed ∧ T.cellMatrixAdhesions ∧ T.tissueMorphogenesis ∧
  T.woundHealing ∧ T.cancerMetastasis

theorem adhesion_tissue_integration_closed_from_evidence {C : CellAdhesionMoleculesPackage}
    {M : CellAdhesionMoleculesEvidence C} {S : AdhesionSignalingPathwaysPackage M}
    {Sig : AdhesionSignalingPathwaysEvidence S} {D : CellCellAdhesionDynamicsPackage Sig}
    {Dyn : CellCellAdhesionDynamicsEvidence D} {Mig : AdhesionMediatedMigrationPackage Dyn}
    {MigEv : AdhesionMediatedMigrationEvidence Mig} (T : AdhesionTissueIntegrationPackage MigEv)
    (E : AdhesionTissueIntegrationEvidence T) : AdhesionTissueIntegrationClosed T := by
  exact And.intro E.cellCellJunctionsFormedClosed
    (And.intro E.cellMatrixAdhesionsClosed
      (And.intro E.tissueMorphogenesisClosed
        (And.intro E.woundHealingClosed E.cancerMetastasisClosed)))

end CellBiologyCellAdhesionTheoremCanonicalLaneLean
end HautevilleHouse