import HautevilleHouse.CellBiologyCellAdhesionTheoremCanonicalLaneLean.CellAdhesionMolecules

namespace HautevilleHouse
namespace CellBiologyCellAdhesionTheoremCanonicalLaneLean

structure AdhesionSignalingPathwaysPackage {C : CellAdhesionMoleculesPackage}
    (M : CellAdhesionMoleculesEvidence C) where
  focalAdhesionKinaseActivated : Prop
  integrinInsideOutSignaling : Prop
  cadherinCateninComplexFormed : Prop
  smallGTPasesRegulateAdhesion : Prop
  signalingCrossTalk : Prop

structure AdhesionSignalingPathwaysEvidence {C : CellAdhesionMoleculesPackage}
    {M : CellAdhesionMoleculesEvidence C} (S : AdhesionSignalingPathwaysPackage M) where
  focalAdhesionKinaseActivatedClosed : S.focalAdhesionKinaseActivated
  integrinInsideOutSignalingClosed : S.integrinInsideOutSignaling
  cadherinCateninComplexFormedClosed : S.cadherinCateninComplexFormed
  smallGTPasesRegulateAdhesionClosed : S.smallGTPasesRegulateAdhesion
  signalingCrossTalkClosed : S.signalingCrossTalk

def AdhesionSignalingPathwaysClosed {C : CellAdhesionMoleculesPackage}
    {M : CellAdhesionMoleculesEvidence C} (S : AdhesionSignalingPathwaysPackage M) : Prop :=
  S.focalAdhesionKinaseActivated ∧ S.integrinInsideOutSignaling ∧
  S.cadherinCateninComplexFormed ∧ S.smallGTPasesRegulateAdhesion ∧ S.signalingCrossTalk

theorem adhesion_signaling_pathways_closed_from_evidence {C : CellAdhesionMoleculesPackage}
    {M : CellAdhesionMoleculesEvidence C} (S : AdhesionSignalingPathwaysPackage M)
    (E : AdhesionSignalingPathwaysEvidence S) : AdhesionSignalingPathwaysClosed S := by
  exact And.intro E.focalAdhesionKinaseActivatedClosed
    (And.intro E.integrinInsideOutSignalingClosed
      (And.intro E.cadherinCateninComplexFormedClosed
        (And.intro E.smallGTPasesRegulateAdhesionClosed E.signalingCrossTalkClosed)))

end CellBiologyCellAdhesionTheoremCanonicalLaneLean
end HautevilleHouse