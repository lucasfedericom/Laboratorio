package laboratorio

class Contrato {


    Date fecha
    BigDecimal monto
    BigDecimal comision
    String periodo
    Date fechaCaducidad

    Propiedad propiedad
    static belongsTo = [cliente: Cliente]

    static constraints = {

      fecha(blank: false)
      

    }
}
