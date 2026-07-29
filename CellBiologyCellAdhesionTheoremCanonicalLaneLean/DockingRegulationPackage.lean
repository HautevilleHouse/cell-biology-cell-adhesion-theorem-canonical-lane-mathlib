import CellBiologyCellAdhesionTheoremCanonicalLaneLean.CellJunctionPackage

namespace HautevilleHouse
namespace CellBiologyCellAdhesionTheoremCanonicalLaneLean

structure DockingRegulationPackage {A : AdhesionMoleculePackage} {S : SignalingPathwayPackage A}
    {J : CellJunctionPackage A S} where
  dockingSiteAccessibility : Prop
  ligandReceptorAffinity : Prop
  conformationalChange : Prop
  avidityModulation : Prop

structure DockingRegulationEvidence {A : AdhesionMoleculePackage} {S : SignalingPathwayPackage A}
    {J : CellJunctionPackage A S} (D : DockingRegulationPackage A S J) where
  dockingSiteAccessibilityClosed : D.dockingSiteAccessibility
  ligandReceptorAffinityClosed : D.ligandReceptorAffinity
  conformationalChangeClosed : D.conformationalChange
  avidityModulationClosed : D.avidityModulation

def DockingRegulationClosed {A : AdhesionMoleculePackage} {S : SignalingPathwayPackage A}
    {J : CellJunctionPackage A S} (D : DockingRegulationPackage A S J) : Prop :=
  D.dockingSiteAccessibility ∧ D.ligandReceptorAffinity ∧
  D.conformationalChange ∧ D.avidityModulation

theorem docking_regulation_closed_from_evidence {A : AdhesionMoleculePackage}
    {S : SignalingPathwayPackage A} {J : CellJunctionPackage A S}
    (D : DockingRegulationPackage A S J) (E : DockingRegulationEvidence D) :
    DockingRegulationClosed D := by
  exact And.intro E.dockingSiteAccessibilityClosed
    (And.intro E.ligandReceptorAffinityClosed
      (And.intro E.conformationalChangeClosed E.avidityModulationClosed))

end CellBiologyCellAdhesionTheoremCanonicalLaneLean
end HautevilleHouse