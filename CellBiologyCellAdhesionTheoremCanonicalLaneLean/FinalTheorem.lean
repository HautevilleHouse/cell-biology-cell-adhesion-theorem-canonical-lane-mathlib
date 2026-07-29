import canonicalLaneMathlib.AdmissibleClass
import CellBiologyCellAdhesionTheoremCanonicalLaneLean.AdhesionReceptorActivation
import CellBiologyCellAdhesionTheoremCanonicalLaneLean.FocalAdhesionDynamics
import CellBiologyCellAdhesionTheoremCanonicalLaneLean.CellCellJunctionStability

namespace HautevilleHouse
namespace CellBiologyCellAdhesionTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

def gateClosed (A : AdmissibleClass) : Prop :=
  A.gateWitness

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A :=
  Or.inl A.endpointSatisfied

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A :=
  A.gateWitness

def ConstrainedCellAdhesionClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_cell_adhesion_endgame (A : AdmissibleClass) :
    ConstrainedCellAdhesionClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CellBiologyCellAdhesionTheoremCanonicalLaneLean
end HautevilleHouse