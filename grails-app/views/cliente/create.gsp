<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'cliente.label', default: 'Cliente')}" />
        <title>Ingreso Nuevo Cliente</title>
    </head>
    <body>
        <a href="#create-cliente" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                <li><a class="home" href="${createLink(uri: '/')}">Página Principal</a></li>
                <li><g:link class="list" action="index">Lista de Clientes</g:link></li>
            </ul>
        </div>
        <div id="create-cliente" class="content scaffold-create" role="main">
            <h1>Ingreso de nuevo Cliente</h1>
            <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${this.cliente}">
            <ul class="errors" role="alert">
                <g:eachError bean="${this.cliente}" var="error">
                <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                </g:eachError>
            </ul>
            </g:hasErrors>
            <g:form resource="${this.cliente}" method="POST">
                <fieldset class="form">

                  <label>DNI: </label>
                  <input type = 'text' name = 'dni'><br>

                  <label>Nombre: </label>
                  <input type = 'text' name = 'nombre'><br>

                  <label>Apellido: </label>
                  <input type = 'text' name = 'apellido'><br>

                  <label>Sexo: </label>
                  <select name ="sexo">
                    <option>M</option>
                    <option>F</option>
                  </select><br>

                  <!-- NO ME ACEPTA LA FECHA DE NACIMIENTO -->

                  <label>Fecha de Nacimiento: </label>
                  <input type = 'Date' name = 'fechaNacimiento'><br>

                  <label>Domicilio: </label>
                  <input type = 'text' name = 'domicilio'><br>

                  <label>Telefono: </label>
                  <input type = 'text' name = 'telefono'><br>

                  <label>E-mail: </label>
                  <input type = 'email' name = 'email'><br>

                  <label>Tipo de cliente: </label>
                  <input type="checkbox" name="tipo_cliente" value="comprador"> Comprador
                  <input type="checkbox" name="tipo_cliente" value="vendedor"> Vendedor
                  <input type="checkbox" name="tipo_cliente" value="inquilino"> Inquilino
                  <input type="checkbox" name="tipo_cliente" value="arrendatario"> Arrendatario


                </fieldset>
                <fieldset class="buttons">
                    <g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" />
                </fieldset>
            </g:form>
        </div>
    </body>
</html>
