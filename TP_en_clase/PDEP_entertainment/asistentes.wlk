import PDEP_entertainment.entradas.*
class Asistente{
    const tipoDeAbono
    const historialEntradas = []
    var saldo

    method saldoInsuficiente() = saldo < 0
    method comprarEntrada(entrada){
        if (self.saldoInsuficiente()){
            throw new SaldoInsuficienteException(message = "¡No se puede pagar, el saldo es insuficiente")
        } else {
            self.pagarEntrada(entrada)
            historialEntradas.add(entrada)
        }
    }
    method pagarEntrada(entrada){
        saldo -= entrada.calcularPrecio() * tipoDeAbono.aplicarBono()
    }
    // Tomo el anio actual como 2026
    method entradasDelAnioPasado(){
        return historialEntradas.filter(
            {unaEntrada => unaEntrada.fecha().year() == 2025}
        )
    }
    method verBandasEscuchadas(){
        return historialEntradas.map({unaEntrada => unaEntrada.banda().nombre()})
    }
    //lo creo para despues en productora poder reconocer a un asistente vip
    method esAsistenteVip() = tipoDeAbono.esVip()
}

object fan{
    const esVip = false
    method aplicarBono(entrada){
        return entrada.calcularPrecio() * 1
    }
}

object vip{
    const esVip = true
    var bono = 1
    //el bono minimo es 0, pues sino el bono haria que el cliente tenga que pagar mas en caso de ser menor que 0
    //en caso de aplicarse el bono cuando ya es 0, se quedara asi, y el cliente tendra un descuento del %100
    method modificarBono(){
        if (bono >= 0)
        bono -= 0.01
    }
     method aplicarBono(entrada){
        return entrada.calcularPrecio() * bono
     }
}

class SaldoInsuficienteException inherits Exception {
    
}