## Conceptos Teóricos

### Herencia:
Use herencia en el archivo de bandas.wlk, ya que tanto rock, trap e indies heredan comportamineto de la clase banda,de forma que todas las bandas puedan usar esos metodos como propios.

### Redefinición:
Ligado a lo anterior, uso redefinición en bandas.wlk ya que hay ciertos métodos de la clase Banda que no tienen el comportamiento esperado en una determinada subclase, o porque use un método abstracto, por lo tanto debo redefinirlo abajo.
Un ejemplo de lo primero es el método canon() en Trap, ya que en los demás el canon es siempre 1000000, pero en Trap depende de su popularidad, asique lo redefino SOLO en Trap.
Un ejemplo del segundo es el método popularidad(), ya que defino el nombre del método, pero lo uso de forma diferente en cada una de las bandas.

### Colecciones:
Uso colecciones por ejemplo en productora.wlk, ya que quiero almacenar todas las bandas que alguna vez tocaron para la productora, y en otra colección aparte a todos los asistentes que alguna vez compraron una entrada. En este caso decidí que ambos fueran conjuntos, ya que no queria que se repita alguna banda o asisente.

### Manejo de errores:
Use manejo de errores en asistentes.wlk, ya que el enunciado decía que en caso de que el saldo sea insuficiente se debía notificar adecuadamente. En este caso, en el método comprar entrada verifico si el saldo es insuficiente, en ese caso salta el error, sino el asistente paga la entrada.
Lo maneje así al error, para que en el sistema se notifique el error, pero que el programa no rompa, y se pueda seguir usando.

### Self:
Uso self en varias partes del código, por ejemplo en bandas.wlk en el método presupuesto(), lo uso para poder sumarle el gasto extra (que viene en otro método que pertenece al mismo objeto) a el canon, para asi conseguir el presupuesto. Lo tengo que usar porque en wollok un objeto no se puede mandar un método propio a si mismo con su nombre antes del punto, sino que lo debe hacer mediante self. Ya que self es una manera en la que self es una referencia al mimso objeto. Y nos ahorra el repetir lógica.
