import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellAdhesionTheoremCanonicalLaneLean

structure AdhesionComplexPackage where
  cadherinPresent : Prop
  integrinPresent : Prop
  signalingActive : Prop
  adhesionStable : Prop

structure AdhesionComplexEvidence (P : AdhesionComplexPackage) where
  cadherinPresentClosed : P.cadherinPresent
  integrinPresentClosed : P.integrinPresent
  signalingActiveClosed : P.signalingActive
  adhesionStableClosed : P.adhesionStable

def AdhesionComplexClosed (P : AdhesionComplexPackage) : Prop :=
  P.cadherinPresent ∧ P.integrinPresent ∧ P.signalingActive ∧ P.adhesionStable

theorem adhesion_complex_closed_from_evidence (P : AdhesionComplexPackage)
    (E : AdhesionComplexEvidence P) : AdhesionComplexClosed P := by
  exact And.intro E.cadherinPresentClosed
    (And.intro E.integrinPresentClosed
      (And.intro E.signalingActiveClosed E.adhesionStableClosed))

end CellBiologyCellAdhesionTheoremCanonicalLaneLean
end HautevilleHouse