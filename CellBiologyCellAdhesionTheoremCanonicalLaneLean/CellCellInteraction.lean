import HautevilleHouse.CellBiologyCellAdhesionTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellAdhesionTheoremCanonicalLaneLean

structure MechanicalForcesPackage where
  adhesionStrength : Float
  cellCortexTension : Float
  substrateStiffness : Float
  contactArea : Float
  tractionForce : Float

structure MechanicalForcesEvidence (M : MechanicalForcesPackage) where
  adhesionStrengthClosed : M.adhesionStrength > 0.0
  cellCortexTensionClosed : M.cellCortexTension > 0.0
  substrateStiffnessClosed : M.substrateStiffness ≥ 0.0
  contactAreaClosed : M.contactArea > 0.0
  tractionForceClosed : M.tractionForce = M.adhesionStrength * M.contactArea

def MechanicalForcesClosed (M : MechanicalForcesPackage) : Prop :=
  M.adhesionStrength > 0.0 ∧
  M.cellCortexTension > 0.0 ∧
  M.substrateStiffness ≥ 0.0 ∧
  M.contactArea > 0.0 ∧
  M.tractionForce = M.adhesionStrength * M.contactArea

theorem mechanical_forces_closed_from_evidence (M : MechanicalForcesPackage) (E : MechanicalForcesEvidence M) :
    MechanicalForcesClosed M :=
by
  refine And.intro E.adhesionStrengthClosed ?_
  refine And.intro E.cellCortexTensionClosed ?_
  refine And.intro E.substrateStiffnessClosed ?_
  refine And.intro E.contactAreaClosed E.tractionForceClosed

end CellBiologyCellAdhesionTheoremCanonicalLaneLean
end HautevilleHouse