import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellAdhesionTheoremCanonicalLaneLean

structure AdhesionReceptorActivationPackage where
  integrinConformationChange : Prop
  talinRecruitment : Prop
  kindlinBinding : Prop
  insideOutSignaling : Prop
  activationStatePropagation : Prop

structure AdhesionReceptorActivationEvidence (A : AdhesionReceptorActivationPackage) where
  integrinConformationChangeClosed : A.integrinConformationChange
  talinRecruitmentClosed : A.talinRecruitment
  kindlinBindingClosed : A.kindlinBinding
  insideOutSignalingClosed : A.insideOutSignaling
  activationStatePropagationClosed : A.activationStatePropagation

def AdhesionReceptorActivationClosed (A : AdhesionReceptorActivationPackage) : Prop :=
  A.integrinConformationChange ∧ A.talinRecruitment ∧ A.kindlinBinding ∧
  A.insideOutSignaling ∧ A.activationStatePropagation

theorem adhesion_receptor_activation_closed_from_evidence
    (A : AdhesionReceptorActivationPackage) (E : AdhesionReceptorActivationEvidence A) :
    AdhesionReceptorActivationClosed A := by
  exact And.intro E.integrinConformationChangeClosed
    (And.intro E.talinRecruitmentClosed
      (And.intro E.kindlinBindingClosed
        (And.intro E.insideOutSignalingClosed E.activationStatePropagationClosed)))

end CellBiologyCellAdhesionTheoremCanonicalLaneLean
end HautevilleHouse