import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellAdhesionTheoremCanonicalLaneLean

/-- Collective cell migration governed by adhesion dynamics. --/
structure CellMonolayerProperties where
  cellCellAdhesionStrength : ℝ
  cellSubstrateAdhesionStrength : ℝ
  corticalTension : ℝ
  monolayerCohesiveness : cellCellAdhesionStrength ≥ 0 ∧ cellSubstrateAdhesionStrength ≥ 0

def MonolayerCohesivenessClosed (M : CellMonolayerProperties) : Prop :=
  M.monolayerCohesiveness

structure MigrationPhenotypes where
  leaderCellFormation : Prop
  supracellularActinCables : Prop
  followTheLeaderPersistence : Prop
  supracellularContractility : Prop
  phenotypeStability : leaderCellFormation ∧ supracellularActinCables ∧ followTheLeaderPersistence ∧ supracellularContractility

end CellBiologyCellAdhesionTheoremCanonicalLaneLean
end HautevilleHouse