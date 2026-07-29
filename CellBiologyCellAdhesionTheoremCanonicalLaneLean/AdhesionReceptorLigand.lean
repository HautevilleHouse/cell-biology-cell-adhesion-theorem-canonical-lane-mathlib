import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellAdhesionTheoremCanonicalLaneLean

structure AdhesionReceptorLigandPackage where
  receptorType : Type u
  ligandType : Type v
  bindingAffinity : Prop
  receptorLigandComplex : Prop
  downstreamSignaling : Prop
  affinityClosed : bindingAffinity
  complexFormationClosed : receptorLigandComplex
  signalingClosed : downstreamSignaling

structure AdhesionReceptorLigandEvidence (P : AdhesionReceptorLigandPackage) where
  affinityEvidence : P.bindingAffinity
  complexEvidence : P.receptorLigandComplex
  signalingEvidence : P.downstreamSignaling

def AdhesionReceptorLigandClosed (P : AdhesionReceptorLigandPackage) : Prop :=
  P.bindingAffinity ∧ P.receptorLigandComplex ∧ P.downstreamSignaling

theorem adhesion_receptor_ligand_closed_from_evidence (P : AdhesionReceptorLigandPackage)
    (E : AdhesionReceptorLigandEvidence P) : AdhesionReceptorLigandClosed P :=
  And.intro E.affinityEvidence (And.intro E.complexEvidence E.signalingEvidence)

end CellBiologyCellAdhesionTheoremCanonicalLaneLean
end HautevilleHouse