import CellBiologyCellAdhesionTheoremCanonicalLaneLean.DockingRegulationPackage

namespace HautevilleHouse
namespace CellBiologyCellAdhesionTheoremCanonicalLaneLean

structure AdhesionMoleculePackage where
  cadherinBinding : Prop
  integrinBinding : Prop
  selectivity : Prop
  clusterFormation : Prop

structure AdhesionMoleculeEvidence (A : AdhesionMoleculePackage) where
  cadherinBindingClosed : A.cadherinBinding
  integrinBindingClosed : A.integrinBinding
  selectivityClosed : A.selectivity
  clusterFormationClosed : A.clusterFormation

def AdhesionMoleculeClosed (A : AdhesionMoleculePackage) : Prop :=
  A.cadherinBinding ∧ A.integrinBinding ∧ A.selectivity ∧ A.clusterFormation

theorem adhesion_molecule_closed_from_evidence
    (A : AdhesionMoleculePackage) (E : AdhesionMoleculeEvidence A) :
    AdhesionMoleculeClosed A := by
  exact And.intro E.cadherinBindingClosed
    (And.intro E.integrinBindingClosed
      (And.intro E.selectivityClosed E.clusterFormationClosed))

end CellBiologyCellAdhesionTheoremCanonicalLaneLean
end HautevilleHouse