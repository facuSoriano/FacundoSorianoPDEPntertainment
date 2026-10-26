import PDEP_entertainment.productora.*
class Entrada {
  const banda
  const fecha
  const precioBase = 1000

  method precioBase() = precioBase
  method calcularPrecio() = precioBase + productora.impuesto()

}