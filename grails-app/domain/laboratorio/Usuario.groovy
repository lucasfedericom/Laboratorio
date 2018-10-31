package laboratorio

class Usuario {

    String tipoUsuario
    String nombreUsuario
    String nombre
    String apellido
    String contrasena
    String email


    static constraints = {

      // No sé cómo serían los demás constraints acá

      nombre(blank: false)
      apellido(blank: false)
      email(blank: true, email:true)

    }
}
