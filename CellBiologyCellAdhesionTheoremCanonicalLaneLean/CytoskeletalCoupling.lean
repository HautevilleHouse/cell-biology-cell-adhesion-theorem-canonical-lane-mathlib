import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellAdhesionTheoremCanonicalLaneLean

structure CytoskeletalCouplingPackage where
  actinFilaments : Prop
  integrinLinkage : Prop
  focalAdhesionKinase : Prop
  mechanicalTension : Prop
  actinClosed : actinFilaments
  integrinClosed : integrinLinkage
  fakClosed : focalAdhesionKinase
  tensionClosed : mechanicalTension

structure CytoskeletalCouplingEvidence (P : CytoskeletalCouplingPackage) where
  actinEvidence : P.actinFilaments
  integrinEvidence : P.integrinLinkage
  fakEvidence : P.focalAdhesionKinase
  tensionEvidence : P.mechanicalTension

def CytoskeletalCouplingClosed (P : CytoskeletalCouplingPackage) : Prop :=
  P.actinFilaments ∧ P.integrinLinkage ∧ P.focalAdhesionKinase ∧ P.mechanicalTension

theorem cytoskeletal_coupling_closed_from_evidence (P : CytoskeletalCouplingPackage)
    (E : CytoskeletalCouplingEvidence P) : CytoskeletalCouplingClosed P :=
  And.intro E.actinEvidence (And.intro E.integrinEvidence (And.intro E.fakEvidence E.tensionEvidence))

end CellBiologyCellAdhesionTheoremCanonicalLaneLean
end HautevilleHouse