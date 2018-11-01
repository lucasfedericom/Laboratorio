package laboratorio

class Cliente {

    String dni
    String nombre
    String apellido
    String sexo
    Date fechaNacimiento
    String domicilio
    String telefono
    String email
    String tipo_cliente

    static hasMany = [propiedades: Propiedad, contratos: Contrato]

    static constraints = {

        // Cuando se registra un cliente, no es posible tener una propiedad registrada aún
        // por lo tanto, es necesario que acepte este valor como null. Al igual que con contratos

        propiedades(blank: true)
        contratos(blank: true)

        nombre(blank: false, maxSize: 100)
        apellido(blank: false, maxSize: 100)
        sexo(blank: false, inList:['F','M'])
        dni(blank: false, unique: true)
        fechaNacimiento(blank: false)
        telefono(blank: true, matches: "[0-9]{3}-[0-9]{7}")
        email(blank: true, email:true)
        tipo_cliente(blank: false)

    }
}
