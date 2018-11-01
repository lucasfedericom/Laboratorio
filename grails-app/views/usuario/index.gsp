<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'usuario.label', default: 'Usuario')}" />
        <title>Lista de Usuarios</title>
    </head>
    <body>
        <a href="#list-usuario" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                <li><a class="home" href="${createLink(uri: '/')}">Pagina Principal</a></li>
                <li><g:link class="create" action="create">Crear Nuevo Usuario</g:link></li>
            </ul>
        </div>
        <div id="list-usuario" class="content scaffold-list" role="main">
            <h1>Lista de Usuarios</h1>
            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>
            <f:table collection="${usuarioList}" />

            <!-- <div class="pagination">
                <g:paginate total="${usuarioCount ?: 0}" />
            </div> -->
        </div>
    </body>
</html>
