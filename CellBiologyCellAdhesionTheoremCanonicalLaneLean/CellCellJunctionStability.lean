import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellAdhesionTheoremCanonicalLaneLean

structure CellCellJunctionStabilityPackage where
  cadherinTransBinding : Prop
  cateninLinkageCytoskeleton : Prop
  junctionalComplexAssembly : Prop
  contractilityRegulation : Prop
  junctionTurnoverRate : Prop

structure CellCellJunctionStabilityEvidence (J : CellCellJunctionStabilityPackage) where
  cadherinTransBindingClosed : J.cadherinTransBinding
  cateninLinkageCytoskeletonClosed : J.cateninLinkageCytoskeleton
  junctionalComplexAssemblyClosed : J.junctionalComplexAssembly
  contractilityRegulationClosed : J.contractilityRegulation
  junctionTurnoverRateClosed : J.junctionTurnoverRate

def CellCellJunctionStabilityClosed (J : CellCellJunctionStabilityPackage) : Prop :=
  J.cadherinTransBinding ∧ J.cateninLinkageCytoskeleton ∧
  J.junctionalComplexAssembly ∧ J.contractilityRegulation ∧ J.junctionTurnoverRate

theorem cell_cell_junction_stability_closed_from_evidence
    (J : CellCellJunctionStabilityPackage) (E : CellCellJunctionStabilityEvidence J) :
    CellCellJunctionStabilityClosed J := by
  exact And.intro E.cadherinTransBindingClosed
    (And.intro E.cateninLinkageCytoskeletonClosed
      (And.intro E.junctionalComplexAssemblyClosed
        (And.intro E.contractilityRegulationClosed E.junctionTurnoverRateClosed)))

end CellBiologyCellAdhesionTheoremCanonicalLaneLean
end HautevilleHouse