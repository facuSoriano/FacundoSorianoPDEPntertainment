import PDEP_entertainment.asistentes.*
object productora{
    // En estas dos colecciones irian todos los asistentes (que alguna vez compraron una entrada)
    // y bandas (que alguna vez hayan tocado)
    const asistentes = #{}
    const bandas = #{}
    var impuesto = 0
    
    method gananciaTotal() = self.calcularrecaudacionEntradasAsistentes() - self.calcularPresupuestoTotalBandas()
    method calcularrecaudacionEntradasAsistentes(){
        return asistentes.sum(
            {unAsistente => unAsistente.historialDeEntradas().sum(
                {unaEntrada => unaEntrada.calcularPrecio()}
            )}
        )
    }
    method calcularPresupuestoTotalBandas(){
        return bandas.sum({unaBanda => unaBanda.presupuesto()})
    }
    method cantidadDeEntradasVendidas(){
        return asistentes.sum({unAsistente => unAsistente.historialEntradas().size()})
    }
    method cantidadEntradasVendidasDe(banda){
        return asistentes.sum(
            {unAsistente =>
                unAsistente.historialEntradas().count(
                    {unaEntrada => unaEntrada.banda() == banda}
                )
            }
        )
    }
    method bandaMasPopular(){
        return bandas.max({unaBanda => self.cantidadEntradasVendidasDe(unaBanda)})
    }
    method bonificarAsistenteVip(asistente){
        if (asistente.esAsistenteVip()){
            asistente.tipoDeBono().modificarBono()
        }
    }
    method modificarImpuesto(nuevoImpuesto){
        impuesto = nuevoImpuesto
    }
    method impuesto() = impuesto
}
