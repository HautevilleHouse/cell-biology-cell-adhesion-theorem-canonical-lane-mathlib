import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellAdhesionTheoremCanonicalLaneLean

structure FocalAdhesionDynamicsPackage where
  adhesionSiteAssembly : Prop
  forceTransmissionActin : Prop
  turnoverByPhosphorylation : Prop
  mechanosensingFeedback : Prop
  adhesionDisassembly : Prop

structure FocalAdhesionDynamicsEvidence (F : FocalAdhesionDynamicsPackage) where
  adhesionSiteAssemblyClosed : F.adhesionSiteAssembly
  forceTransmissionActinClosed : F.forceTransmissionActin
  turnoverByPhosphorylationClosed : F.turnoverByPhosphorylation
  mechanosensingFeedbackClosed : F.mechanosensingFeedback
  adhesionDisassemblyClosed : F.adhesionDisassembly

def FocalAdhesionDynamicsClosed (F : FocalAdhesionDynamicsPackage) : Prop :=
  F.adhesionSiteAssembly ∧ F.forceTransmissionActin ∧ F.turnoverByPhosphorylation ∧
  F.mechanosensingFeedback ∧ F.adhesionDisassembly

theorem focal_adhesion_dynamics_closed_from_evidence
    (F : FocalAdhesionDynamicsPackage) (E : FocalAdhesionDynamicsEvidence F) :
    FocalAdhesionDynamicsClosed F := by
  exact And.intro E.adhesionSiteAssemblyClosed
    (And.intro E.forceTransmissionActinClosed
      (And.intro E.turnoverByPhosphorylationClosed
        (And.intro E.mechanosensingFeedbackClosed E.adhesionDisassemblyClosed)))

end CellBiologyCellAdhesionTheoremCanonicalLaneLean
end HautevilleHouse