package laboratorio

class PrincipalController {

    def index() { }

    def altaUsuario(){
      [usuario: new Usuario()]
    }


    def guardarUsuario(){
      PrincipalService.altaUsuario(params)
      redirect(action:"listadoUsuarios")
    }


    def listadoUsuarios(){
      [listadoUsuarios: PrincipalService.listadoUsuarios()]
    }



}
