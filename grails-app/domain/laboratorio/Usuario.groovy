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
      tipoUsuario(inList: ['Administrador','Operador'])
      nombreUsuario(minSize: 6)
      nombre(maxSize: 100)
      apellido(maxSize: 100)
      contrasena(password: true)
      email(email:true)

    }
}
