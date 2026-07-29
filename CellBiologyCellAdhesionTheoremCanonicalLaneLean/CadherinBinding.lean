import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellAdhesionTheoremCanonicalLaneLean

structure CadherinBindingPackage where
  homophilicBinding : Prop
  calciumDependence : Prop
  dimerization : Prop
  cateninLinkage : Prop

structure CadherinBindingEvidence (C : CadherinBindingPackage) where
  homophilicBindingClosed : C.homophilicBinding
  calciumDependenceClosed : C.calciumDependence
  dimerizationClosed : C.dimerization
  cateninLinkageClosed : C.cateninLinkage

def CadherinBindingClosed (C : CadherinBindingPackage) : Prop :=
  C.homophilicBinding ∧ C.calciumDependence ∧ C.dimerization ∧ C.cateninLinkage

theorem cadherin_binding_closed_from_evidence (C : CadherinBindingPackage) (E : CadherinBindingEvidence C) : CadherinBindingClosed C := by
  exact And.intro E.homophilicBindingClosed (And.intro E.calciumDependenceClosed (And.intro E.dimerizationClosed E.cateninLinkageClosed))

end CellBiologyCellAdhesionTheoremCanonicalLaneLean
end HautevilleHouse