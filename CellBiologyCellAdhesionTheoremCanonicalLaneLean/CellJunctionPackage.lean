import CellBiologyCellAdhesionTheoremCanonicalLaneLean.SignalingPathwayPackage

namespace HautevilleHouse
namespace CellBiologyCellAdhesionTheoremCanonicalLaneLean

structure CellJunctionPackage {A : AdhesionMoleculePackage} {S : SignalingPathwayPackage A} where
  tightJunctionAssembly : Prop
  adherensJunctionStability : Prop
  desmosomeIntegrity : Prop
  gapJunctionPermeability : Prop

structure CellJunctionEvidence {A : AdhesionMoleculePackage} {S : SignalingPathwayPackage A}
    (J : CellJunctionPackage A S) where
  tightJunctionAssemblyClosed : J.tightJunctionAssembly
  adherensJunctionStabilityClosed : J.adherensJunctionStability
  desmosomeIntegrityClosed : J.desmosomeIntegrity
  gapJunctionPermeabilityClosed : J.gapJunctionPermeability

def CellJunctionClosed {A : AdhesionMoleculePackage} {S : SignalingPathwayPackage A}
    (J : CellJunctionPackage A S) : Prop :=
  J.tightJunctionAssembly ∧ J.adherensJunctionStability ∧
  J.desmosomeIntegrity ∧ J.gapJunctionPermeability

theorem cell_junction_closed_from_evidence {A : AdhesionMoleculePackage}
    {S : SignalingPathwayPackage A} (J : CellJunctionPackage A S)
    (E : CellJunctionEvidence J) : CellJunctionClosed J := by
  exact And.intro E.tightJunctionAssemblyClosed
    (And.intro E.adherensJunctionStabilityClosed
      (And.intro E.desmosomeIntegrityClosed E.gapJunctionPermeabilityClosed))

end CellBiologyCellAdhesionTheoremCanonicalLaneLean
end HautevilleHouse