import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellAdhesionTheoremCanonicalLaneLean

structure ExtracellularMatrixPackage where
  collagenNetwork : Prop
  fibronectinMesh : Prop
  lamininBonds : Prop
  proteoglycans : Prop
  collagenClosed : collagenNetwork
  fibronectinClosed : fibronectinMesh
  lamininClosed : lamininBonds
  proteoglycanClosed : proteoglycans

structure ExtracellularMatrixEvidence (P : ExtracellularMatrixPackage) where
  collagenEvidence : P.collagenNetwork
  fibronectinEvidence : P.fibronectinMesh
  lamininEvidence : P.lamininBonds
  proteoglycanEvidence : P.proteoglycans

def ExtracellularMatrixClosed (P : ExtracellularMatrixPackage) : Prop :=
  P.collagenNetwork ∧ P.fibronectinMesh ∧ P.lamininBonds ∧ P.proteoglycans

theorem extracellular_matrix_closed_from_evidence (P : ExtracellularMatrixPackage)
    (E : ExtracellularMatrixEvidence P) : ExtracellularMatrixClosed P :=
  And.intro E.collagenEvidence (And.intro E.fibronectinEvidence (And.intro E.lamininEvidence E.proteoglycanEvidence))

end CellBiologyCellAdhesionTheoremCanonicalLaneLean
end HautevilleHouse