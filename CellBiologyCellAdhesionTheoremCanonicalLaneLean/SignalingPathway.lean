import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellAdhesionTheoremCanonicalLaneLean

structure SignalingPathwayPackage where
  fakActivation : Prop
  srcKinase : Prop
  pi3kAkt : Prop
  mapkErk : Prop
  fakClosed : fakActivation
  srcClosed : srcKinase
  pi3kClosed : pi3kAkt
  mapkClosed : mapkErk

structure SignalingPathwayEvidence (P : SignalingPathwayPackage) where
  fakEvidence : P.fakActivation
  srcEvidence : P.srcKinase
  pi3kEvidence : P.pi3kAkt
  mapkEvidence : P.mapkErk

def SignalingPathwayClosed (P : SignalingPathwayPackage) : Prop :=
  P.fakActivation ∧ P.srcKinase ∧ P.pi3kAkt ∧ P.mapkErk

theorem signaling_pathway_closed_from_evidence (P : SignalingPathwayPackage)
    (E : SignalingPathwayEvidence P) : SignalingPathwayClosed P :=
  And.intro E.fakEvidence (And.intro E.srcEvidence (And.intro E.pi3kEvidence E.mapkEvidence))

end CellBiologyCellAdhesionTheoremCanonicalLaneLean
end HautevilleHouse