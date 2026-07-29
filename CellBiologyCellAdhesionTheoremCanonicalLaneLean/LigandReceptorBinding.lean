import CellBiologyCellAdhesionTheoremCanonicalLaneLean.SignalingGateLemmas

namespace HautevilleHouse
namespace CellBiologyCellAdhesionTheoremCanonicalLaneLean

structure LigandReceptorBindingPackage where
  ligand : Type
  receptor : Type
  bindingAffinity : Prop
  conformationalChange : Prop
  clusteringInitiation : Prop

structure LigandReceptorBindingEvidence (P : LigandReceptorBindingPackage) where
  bindingAffinityClosed : P.bindingAffinity
  conformationalChangeClosed : P.conformationalChange
  clusteringInitiationClosed : P.clusteringInitiation

def LigandReceptorBindingClosed (P : LigandReceptorBindingPackage) : Prop :=
  P.bindingAffinity ∧ P.conformationalChange ∧ P.clusteringInitiation

theorem ligand_receptor_binding_closed_from_evidence (P : LigandReceptorBindingPackage)
    (E : LigandReceptorBindingEvidence P) : LigandReceptorBindingClosed P := by
  exact And.intro E.bindingAffinityClosed
    (And.intro E.conformationalChangeClosed E.clusteringInitiationClosed)

end CellBiologyCellAdhesionTheoremCanonicalLaneLean
end HautevilleHouse