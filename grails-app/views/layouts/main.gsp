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
    <div class="container-fluid">
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
                            <li ><g:link controller="Propiedad" action="index">Propiedades</g:link></li>
                            <li><g:link controller="Consulta" action="index">Formulario</g:link></li>
                    </ul>
                    <ul class="nav navbar-nav navbar-right" >

                        <li class="dropdown btn-group">
                            <a href="#" class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown">
                            <b>Iniciar Sesión</b><span class="caret"></span></a>
                            <ul id="login-dp" class="dropdown-menu">
                                <li>
                                    <div class="row">
                                                
                                        <h1 style="color: white">Inicia Sesión con tu cuenta</h1>
                                        <form class="form" role="form" method="post" action="login" accept-charset="UTF-8" id="login-nav">
                                            <div class="form-group">
                                                 <label class="sr-only" for="exampleInputEmail2">Direccion de Correo Electronico</label>
                                                 <input type="email" class="form-control" id="exampleInputEmail2" placeholder="Direccion de Correo" required>
                                            </div>
                                            <div class="form-group">
                                                <label class="sr-only" for="exampleInputPassword2">Contraseña</label>
                                                <input type="password" class="form-control" id="exampleInputPassword2" placeholder="Contraseña" required>
                                                <div class="help-block text-right"><a href="">¿Olvidaste la contraseña?</a></div>
                                            </div>
                                            <div class="form-group">
                                                <button type="submit" class="btn btn-primary btn-block">Iniciar Sesión</button>
                                            </div>
                                            <div class="checkbox">
                                                    <label>
                                                    <input type="checkbox"> Mantenme conectado
                                                    </label>
                                            </div>
                                        </form>
                                    </div>
                                            <div class="bottom text-center" style="color: red;">
                                                        Nuevo aquí? <g:link controller="contacto" action="showRegistro">Registrate AQUI</g:link></a>
                                            </div>
                                    
                                </li>
                            </ul>
                        </li>
                </ul>
        </div>
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
