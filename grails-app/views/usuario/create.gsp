<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'usuario.label', default: 'Usuario')}" />
        <title><g:message code="default.create.label" args="[entityName]" /></title>
    </head>
    <body>
        <a href="#create-usuario" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                <li><a class="home" href="${createLink(uri: '/')}">Página Principal</a></li>
                <li><g:link class="list" action="index">Lista de Usuarios<!--<g:message code="default.list.label" args="[entityName]" />--></g:link></li>
            </ul>
        </div>
        <div id="create-usuario" class="content scaffold-create" role="main">
            <h1><g:message code="default.create.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${this.usuario}">
            <ul class="errors" role="alert">
                <g:eachError bean="${this.usuario}" var="error">
                <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                </g:eachError>
            </ul>
            </g:hasErrors>
            <g:form resource="${this.usuario}" method="POST">
                <fieldset class="form">

                    <!-- FORMULARIO  -->

                    <label>Tipo de usuario: </label>
                		<select name ="tipoUsuario">
                			<option>Administrador</option>
                			<option>Operador</option>
                		</select><br>

                    <label>Username: </label>
                    <input type = 'text' name = 'nombreUsuario'><br>

                    <label>Nombre: </label>
                    <input type = 'text' name = 'nombre'><br>

                    <label>Apellido: </label>
                    <input type = 'text' name = 'apellido'><br>

                    <label>E-mail: </label>
                    <input type = 'email' name = 'email'><br>

                    <label>Constraseña: </label>
                    <input type = 'password' name = 'contrasena'><br>


                <!-- CORREGIR, NO GUARDA EN LA BBDD -->

                </fieldset>
                <fieldset class="buttons">
                    <g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" />
                </fieldset>
            </g:form>
        </div>
    </body>
</html>
