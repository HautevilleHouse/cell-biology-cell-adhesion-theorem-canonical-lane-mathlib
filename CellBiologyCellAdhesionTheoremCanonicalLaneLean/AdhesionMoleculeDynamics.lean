import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellAdhesionTheoremCanonicalLaneLean

/-- Cadherin-mediated adhesion molecule dynamics package. Defines the state space for adhesion molecule expression, clustering, and turnover. --/
structure AdhesionMoleculeDynamics where
  cadherinExpressionLevel : ℝ
  cateninBindingAffinity : ℝ
  lateralDiffusionRate : ℝ
  endocytosisRate : ℝ
  exocytosisRate : ℝ
  expressionStability : cadherinExpressionLevel ≥ 0 ∧ cateninBindingAffinity ≥ 0 ∧ lateralDiffusionRate ≥ 0

structure AdhesionMoleculeDynamicsEvidence (D : AdhesionMoleculeDynamics) where
  expressionStabilityClosed : D.expressionStability

def AdhesionMoleculeDynamicsClosed (D : AdhesionMoleculeDynamics) : Prop :=
  D.expressionStability

theorem adhesion_molecule_dynamics_closed_from_evidence
    (D : AdhesionMoleculeDynamics) (E : AdhesionMoleculeDynamicsEvidence D) :
    AdhesionMoleculeDynamicsClosed D := by
  exact E.expressionStabilityClosed

end CellBiologyCellAdhesionTheoremCanonicalLaneLean
end HautevilleHouse