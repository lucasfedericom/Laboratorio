<!doctype html>
<html lang="en" class="no-js">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <title>
        <g:layoutTitle default="Grails"/>
    </title>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <asset:link rel="icon" href="favicon.ico" type="image/x-ico" />

    <asset:stylesheet src="application.css"/>

    <g:layoutHead/>
</head>
<body>

<nav class="navbar navbar-default navbar-inverse" role="navigation" style="background-color: black">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="/#">

		            <asset:image src="icono4.png" alt="logo_inmobiliaria"/>
                </a>
            </div>
         <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                     <ul class="nav navbar-nav">
                            <li class="active" ><a href="/">Inicio</a></li>  
                            <li ><g:link controller="Cliente" action="index">Clientes</g:link></li>
                            <li><g:link controller="Consulta" action="index">Consulta</g:link></li>
                    </ul>
                    <ul class="nav navbar-nav navbar-right" >
                        <form class="form-inline my-2 my-lg-0">
                        <input class="form-control mr-sm-2" type="search" placeholder="Buscar.." aria-label="Search">
                        <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Buscar</button>
                        </form>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown"><b>Iniciar Sesión</b><span class="caret"></span></a>
                    </ul>
                    

        </div>
    </nav>
   

    <g:layoutBody/>

    <div class="footer" role="contentinfo">
      Universidad Nacional de Catamarca - FTyCA - Cátedra Programacion III - 2018
    </div>

    <div id="spinner" class="spinner" style="display:none;">
        <g:message code="spinner.alt" default="Loading&hellip;"/>
    </div>

    <asset:javascript src="application.js"/>

</body>
</html>
