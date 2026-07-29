import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellAdhesionTheoremCanonicalLaneLean

structure CellSignalingPackage where
  pathwayActivated : Prop
  downstreamEffector : Prop
  feedbackLoop : Prop
  adhesionRegulation : Prop

structure CellSignalingEvidence (S : CellSignalingPackage) where
  pathwayActivatedClosed : S.pathwayActivated
  downstreamEffectorClosed : S.downstreamEffector
  feedbackLoopClosed : S.feedbackLoop
  adhesionRegulationClosed : S.adhesionRegulation

def CellSignalingClosed (S : CellSignalingPackage) : Prop :=
  S.pathwayActivated ∧ S.downstreamEffector ∧ S.feedbackLoop ∧ S.adhesionRegulation

theorem cell_signaling_closed_from_evidence (S : CellSignalingPackage)
    (E : CellSignalingEvidence S) : CellSignalingClosed S := by
  exact And.intro E.pathwayActivatedClosed
    (And.intro E.downstreamEffectorClosed
      (And.intro E.feedbackLoopClosed E.adhesionRegulationClosed))

end CellBiologyCellAdhesionTheoremCanonicalLaneLean
end HautevilleHouse