<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'contrato.label', default: 'Contrato')}" />
        <title>Editar Contrato</title>
    </head>
    <body>
        <a href="#edit-contrato" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                <li><a class="home" href="${createLink(uri: '/')}">Página Principal</a></li>
                <li><g:link class="list" action="index">Lista de Contratos</g:link></li>
                <li><g:link class="create" action="create">Crear Nuevo Contrato</g:link></li>
            </ul>
        </div>
        <div id="edit-contrato" class="content scaffold-edit" role="main">
            <h1>Editar Contrato</h1>
            <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${this.contrato}">
            <ul class="errors" role="alert">
                <g:eachError bean="${this.contrato}" var="error">
                <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                </g:eachError>
            </ul>
            </g:hasErrors>
            <g:form resource="${this.contrato}" method="PUT">
                <g:hiddenField name="version" value="${this.contrato?.version}" />
                <fieldset class="form">
                    <f:all bean="contrato"/>
                </fieldset>
                <fieldset class="buttons">
                    <input class="save" type="submit" value="${message(code: 'default.button.update.label', default: 'Update')}" />
                </fieldset>
            </g:form>
        </div>
    </body>
</html>
