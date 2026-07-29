import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellAdhesionTheoremCanonicalLaneLean

/-- Assembly of adherens junctions and desmosomes. --/
structure AdherensJunctionAssembly where
  cadherinTransBinding : Prop
  cateninLinkageToActin : Prop
  junctionalActinBundling : Prop
  nectinAfadinRecruitment : Prop

def AdherensJunctionClosed (J : AdherensJunctionAssembly) : Prop :=
  J.cadherinTransBinding ∧ J.cateninLinkageToActin ∧ J.junctionalActinBundling

structure DesmosomeAssembly where
  desmogleinDesmocollinHeterodimer : Prop
  plakoglobinPlakophilinBinding : Prop
  desmoplakinIntermediateFilamentLink : Prop

def DesmosomeClosed (D : DesmosomeAssembly) : Prop :=
  D.desmogleinDesmocollinHeterodimer ∧ D.plakoglobinPlakophilinBinding ∧ D.desmoplakinIntermediateFilamentLink

theorem adherens_junction_closed (J : AdherensJunctionAssembly)
    (h1 : J.cadherinTransBinding) (h2 : J.cateninLinkageToActin) (h3 : J.junctionalActinBundling) :
    AdherensJunctionClosed J := by
  exact And.intro h1 (And.intro h2 h3)

theorem desmosome_closed (D : DesmosomeAssembly)
    (h1 : D.desmogleinDesmocollinHeterodimer) (h2 : D.plakoglobinPlakophilinBinding) (h3 : D.desmoplakinIntermediateFilamentLink) :
    DesmosomeClosed D := by
  exact And.intro h1 (And.intro h2 h3)

end CellBiologyCellAdhesionTheoremCanonicalLaneLean
end HautevilleHouse