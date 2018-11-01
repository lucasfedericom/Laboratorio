<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'contrato.label', default: 'Contrato')}" />
        <title>Listado de Contratos</title>
    </head>
    <body>
        <a href="#list-contrato" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                <li><a class="home" href="${createLink(uri: '/')}">Página Principal</a></li>
                <li><g:link class="create" action="create">Crear Nuevo Contrato</g:link></li>
            </ul>
        </div>
        <div id="list-contrato" class="content scaffold-list" role="main">
            <h1>Lista de Contratos</h1>
            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>
            <f:table collection="${contratoList}" />

            <!-- <div class="pagination">
                <g:paginate total="${contratoCount ?: 0}" />
            </div> -->
        </div>
    </body>
</html>
