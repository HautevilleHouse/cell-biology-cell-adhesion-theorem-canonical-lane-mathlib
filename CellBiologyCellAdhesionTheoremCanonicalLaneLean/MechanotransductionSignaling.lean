import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellAdhesionTheoremCanonicalLaneLean

/-- Mechanotransduction signaling from adhesion sites to nucleus. --/
structure MechanotransductionSignaling where
  yapTazNuclearTranslocation : Prop
  mrtfSRFActivation : Prop
  fAKSrcPhosphorylation : Prop
  rhoAroCKGTPaseActivity : ℝ
  yapTargetGeneExpression : Prop
  mrtfTargetGeneExpression : Prop
  rheostatMode : rhoAroCKGTPaseActivity ≥ 0

structure MechanotransductionEvidence (S : MechanotransductionSignaling) where
  yapTazNuclearTranslocationClosed : S.yapTazNuclearTranslocation
  mrtfSRFActivationClosed : S.mrtfSRFActivation
  fAKSrcPhosphorylationClosed : S.fAKSrcPhosphorylation
  rheostatModeClosed : S.rheostatMode

def MechanotransductionClosed (S : MechanotransductionSignaling) : Prop :=
  S.yapTazNuclearTranslocation ∧ S.mrtfSRFActivation ∧ S.fAKSrcPhosphorylation ∧ S.rheostatMode

theorem mechanotransduction_closed_from_evidence (S : MechanotransductionSignaling)
    (E : MechanotransductionEvidence S) : MechanotransductionClosed S := by
  exact And.intro E.yapTazNuclearTranslocationClosed
    (And.intro E.mrtfSRFActivationClosed
      (And.intro E.fAKSrcPhosphorylationClosed E.rheostatModeClosed))

end CellBiologyCellAdhesionTheoremCanonicalLaneLean
end HautevilleHouse