package laboratorio

class Propiedad {

    String tipo
    String direccion
    String descripcion
    BigDecimal precio
    

    static belongsTo = [cliente: Cliente]

    static constraints = {

      tipo(blank: false)
      direccion(blank: false)
      descripcion(blank: false)
      
    }
}
