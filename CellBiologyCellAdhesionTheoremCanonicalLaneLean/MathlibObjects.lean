import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellAdhesionTheoremCanonicalLaneLean

structure CellAdhesionSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure CellAdhesionAdmittedObject where
  space : CellAdhesionSpace
  cellType : Prop
  adhesionMoleculesPresent : Prop
  cellAdhesionProperty : Prop
  conclusion : cellAdhesionProperty

def CellAdhesionWitnessClosed (O : CellAdhesionAdmittedObject) : Prop :=
  O.cellAdhesionProperty

end CellBiologyCellAdhesionTheoremCanonicalLaneLean
end HautevilleHouse