import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellAdhesionTheoremCanonicalLaneLean

structure CellCellJunctionPackage where
  cadherinComplex : Prop
  cateninLinkage : Prop
  adherensJunction : Prop
  desmosome : Prop
  cadherinClosed : cadherinComplex
  cateninClosed : cateninLinkage
  adherensClosed : adherensJunction
  desmosomeClosed : desmosome

structure CellCellJunctionEvidence (P : CellCellJunctionPackage) where
  cadherinEvidence : P.cadherinComplex
  cateninEvidence : P.cateninLinkage
  adherensEvidence : P.adherensJunction
  desmosomeEvidence : P.desmosome

def CellCellJunctionClosed (P : CellCellJunctionPackage) : Prop :=
  P.cadherinComplex ∧ P.cateninLinkage ∧ P.adherensJunction ∧ P.desmosome

theorem cell_cell_junction_closed_from_evidence (P : CellCellJunctionPackage)
    (E : CellCellJunctionEvidence P) : CellCellJunctionClosed P :=
  And.intro E.cadherinEvidence (And.intro E.cateninEvidence (And.intro E.adherensEvidence E.desmosomeEvidence))

end CellBiologyCellAdhesionTheoremCanonicalLaneLean
end HautevilleHouse