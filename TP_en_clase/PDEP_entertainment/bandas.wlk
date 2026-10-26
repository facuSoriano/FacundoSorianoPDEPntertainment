class Banda{
    const nombre
    const canon = 1000000

    method presupuesto() = canon + self.gastoExtra()
    method gastoExtra()
    method popularidad()
    method canon() = canon

}

class Rock inherits Banda{
    const solosDeGuitarra
    override method gastoExtra() = 10000
    override method popularidad() = 100 * solosDeGuitarra
}

class Trap inherits Banda{
    const tieneHielo
    override method gastoExtra(){}
    override method popularidad(){
        if(tieneHielo){
            return 1000
        } else{
            return 0
        }
    }
    override method canon() = canon * self.popularidad()
}

class Indies inherits Banda{
    const cantInstrumentos
    method largoDelNombre() = nombre.size()
    override method gastoExtra() = 500 * cantInstrumentos 
    override method popularidad() = 3.14 * self.largoDelNombre()
}