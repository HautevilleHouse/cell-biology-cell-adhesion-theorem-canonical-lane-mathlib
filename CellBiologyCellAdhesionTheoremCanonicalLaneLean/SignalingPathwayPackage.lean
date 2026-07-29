import CellBiologyCellAdhesionTheoremCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace CellBiologyCellAdhesionTheoremCanonicalLaneLean

structure SignalingPathwayPackage {R : AdmissibleClass} where
  ligandBinding : Prop
  receptorActivation : Prop
  signalCascade : Prop
  geneExpression : Prop
  phenotypeChange : Prop

structure SignalingPathwayEvidence {R : AdmissibleClass} (S : SignalingPathwayPackage R) where
  ligandBindingClosed : S.ligandBinding
  receptorActivationClosed : S.receptorActivation
  signalCascadeClosed : S.signalCascade
  geneExpressionClosed : S.geneExpression
  phenotypeChangeClosed : S.phenotypeChange

def SignalingPathwayClosed {R : AdmissibleClass} (S : SignalingPathwayPackage R) : Prop :=
  S.ligandBinding ∧ S.receptorActivation ∧ S.signalCascade ∧ S.geneExpression ∧ S.phenotypeChange

theorem signaling_pathway_closed_from_evidence {R : AdmissibleClass}
    (S : SignalingPathwayPackage R) (E : SignalingPathwayEvidence S) :
    SignalingPathwayClosed S := by
  exact And.intro E.ligandBindingClosed
    (And.intro E.receptorActivationClosed
      (And.intro E.signalCascadeClosed
        (And.intro E.geneExpressionClosed E.phenotypeChangeClosed)))

end CellBiologyCellAdhesionTheoremCanonicalLaneLean
end HautevilleHouse