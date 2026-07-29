import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellAdhesionTheoremCanonicalLaneLean

structure IntegrinActivationPackage where
  insideOutSignaling : Prop
  conformationalChange : Prop
  talinBinding : Prop
  kindlinBinding : Prop
  insideOutClosed : insideOutSignaling
  conformationalClosed : conformationalChange
  talinClosed : talinBinding
  kindlinClosed : kindlinBinding

structure IntegrinActivationEvidence (P : IntegrinActivationPackage) where
  insideOutEvidence : P.insideOutSignaling
  conformationalEvidence : P.conformationalChange
  talinEvidence : P.talinBinding
  kindlinEvidence : P.kindlinBinding

def IntegrinActivationClosed (P : IntegrinActivationPackage) : Prop :=
  P.insideOutSignaling ∧ P.conformationalChange ∧ P.talinBinding ∧ P.kindlinBinding

theorem integrin_activation_closed_from_evidence (P : IntegrinActivationPackage)
    (E : IntegrinActivationEvidence P) : IntegrinActivationClosed P :=
  And.intro E.insideOutEvidence (And.intro E.conformationalEvidence (And.intro E.talinEvidence E.kindlinEvidence))

end CellBiologyCellAdhesionTheoremCanonicalLaneLean
end HautevilleHouse