<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'propiedad.label', default: 'Propiedad')}" />
        <title>Lista de Propiedades</title>
    </head>
    <body>
        <a href="#list-propiedad" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                <li><a class="home" href="${createLink(uri: '/')}">Página Principal</a></li>
                <li><g:link class="create" action="create">Ingresar Nueva Propiedad</g:link></li>
            </ul>
        </div>
        <div id="list-propiedad" class="content scaffold-list" role="main">
            <h1>Lista de Propiedades</h1>
            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>
            <f:table collection="${propiedadList}" />

            <!-- <div class="pagination">
                <g:paginate total="${propiedadCount ?: 0}" />
            </div> -->
        </div>
    </body>
</html>
