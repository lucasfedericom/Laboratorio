package laboratorio

import grails.gorm.transactions.Transactional

@Transactional
class PrincipalService {

    List listadoUsuarios(){
      def usuarios = Usuario.findAll()
      return usuarios
    }

    void altaUsuario(Map params){
      def usuario = new Usuario(params).save(flush: true)
    }

    

}
