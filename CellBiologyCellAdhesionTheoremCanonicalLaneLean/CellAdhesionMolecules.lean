import HautevilleHouse.CellBiologyCellAdhesionTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellAdhesionTheoremCanonicalLaneLean

structure CellAdhesionMoleculesPackage where
  cadherinsPresent : Prop
  integrinsPresent : Prop
  selectinsPresent : Prop
  immunoglobulinSFpresent : Prop
  ligandReceptorPairsFormAdhesion : Prop

structure CellAdhesionMoleculesEvidence (C : CellAdhesionMoleculesPackage) where
  cadherinsPresentClosed : C.cadherinsPresent
  integrinsPresentClosed : C.integrinsPresent
  selectinsPresentClosed : C.selectinsPresent
  immunoglobulinSFpresentClosed : C.immunoglobulinSFpresent
  ligandReceptorPairsFormAdhesionClosed : C.ligandReceptorPairsFormAdhesion

def CellAdhesionMoleculesClosed (C : CellAdhesionMoleculesPackage) : Prop :=
  C.cadherinsPresent ∧ C.integrinsPresent ∧ C.selectinsPresent ∧
  C.immunoglobulinSFpresent ∧ C.ligandReceptorPairsFormAdhesion

theorem cell_adhesion_molecules_closed_from_evidence (C : CellAdhesionMoleculesPackage)
    (E : CellAdhesionMoleculesEvidence C) : CellAdhesionMoleculesClosed C := by
  exact And.intro E.cadherinsPresentClosed
    (And.intro E.integrinsPresentClosed
      (And.intro E.selectinsPresentClosed
        (And.intro E.immunoglobulinSFpresentClosed E.ligandReceptorPairsFormAdhesionClosed)))

end CellBiologyCellAdhesionTheoremCanonicalLaneLean
end HautevilleHouse