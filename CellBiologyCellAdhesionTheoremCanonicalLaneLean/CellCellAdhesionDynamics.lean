import HautevilleHouse.CellBiologyCellAdhesionTheoremCanonicalLaneLean.AdhesionSignalingPathways

namespace HautevilleHouse
namespace CellBiologyCellAdhesionTheoremCanonicalLaneLean

structure CellCellAdhesionDynamicsPackage {C : CellAdhesionMoleculesPackage}
    {M : CellAdhesionMoleculesEvidence C} {S : AdhesionSignalingPathwaysPackage M}
    (Sig : AdhesionSignalingPathwaysEvidence S) where
  adhesionAssemblyRate : Prop
  adhesionDisassemblyRate : Prop
  forceDependentStrengthening : Prop
  clutchDynamics : Prop
  mechanotransduction : Prop

structure CellCellAdhesionDynamicsEvidence {C : CellAdhesionMoleculesPackage}
    {M : CellAdhesionMoleculesEvidence C} {S : AdhesionSignalingPathwaysPackage M}
    {Sig : AdhesionSignalingPathwaysEvidence S}
    (D : CellCellAdhesionDynamicsPackage Sig) where
  adhesionAssemblyRateClosed : D.adhesionAssemblyRate
  adhesionDisassemblyRateClosed : D.adhesionDisassemblyRate
  forceDependentStrengtheningClosed : D.forceDependentStrengthening
  clutchDynamicsClosed : D.clutchDynamics
  mechanotransductionClosed : D.mechanotransduction

def CellCellAdhesionDynamicsClosed {C : CellAdhesionMoleculesPackage}
    {M : CellAdhesionMoleculesEvidence C} {S : AdhesionSignalingPathwaysPackage M}
    {Sig : AdhesionSignalingPathwaysEvidence S}
    (D : CellCellAdhesionDynamicsPackage Sig) : Prop :=
  D.adhesionAssemblyRate ∧ D.adhesionDisassemblyRate ∧ D.forceDependentStrengthening ∧
  D.clutchDynamics ∧ D.mechanotransduction

theorem cell_cell_adhesion_dynamics_closed_from_evidence {C : CellAdhesionMoleculesPackage}
    {M : CellAdhesionMoleculesEvidence C} {S : AdhesionSignalingPathwaysPackage M}
    {Sig : AdhesionSignalingPathwaysEvidence S} (D : CellCellAdhesionDynamicsPackage Sig)
    (E : CellCellAdhesionDynamicsEvidence D) : CellCellAdhesionDynamicsClosed D := by
  exact And.intro E.adhesionAssemblyRateClosed
    (And.intro E.adhesionDisassemblyRateClosed
      (And.intro E.forceDependentStrengtheningClosed
        (And.intro E.clutchDynamicsClosed E.mechanotransductionClosed)))

end CellBiologyCellAdhesionTheoremCanonicalLaneLean
end HautevilleHouse