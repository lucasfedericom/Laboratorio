package laboratorio

class Consulta {

    String nombreApellido
    String telefono
    String email

    Date fecha
    String estado
    Propiedad propiedad

    static constraints = {
        nombreApellido(blank: false, maxSize: 100)
        telefono(blank: true, matches: "[0-9]{3}-[0-9]{7}")
        email(blank: true, email:true)
        fecha(blank: false)

    }
}
