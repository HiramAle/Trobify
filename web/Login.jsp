<%-- 
    Document   : Login
    Created on : 9/06/2021, 10:50:31 AM
    Author     : magic
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="icon" type="image/png" href="Resources/Images/icon.png" />
        <title>Trobify</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <script type="text/javascript" src="https://translate.google.com/translate_a/element.js?cb=googleTranslateElementInit"></script>
        <link rel="stylesheet" href="CSS/styles.css">
        <link rel="stylesheet" href="CSS/loginStyles.css">

    </head>
    <body>
        <div class="navbar">
            <div class="navbarLogo">
                <a class="logoboton" href="/Trobify"><img id="logo" src="Resources/Images/logo.png" alt="Logo"></a>
            </div>
            <div class="navbarOptions">
                <a href="#"><div id="google_translate_element"></div></a>
                <a href="" id="">Inicia sesion</a>
                <a href="#info">¿Quienes somos?</a>
                <a href="#news">Ofrece un Inmueble</a>
                <a href="envioSugerencias.html">Enviar Sugerencias</a>
            </div>
        </div>
        <div class="main" >
            <div class="divForm" >
                <form class="" name="loginForm" action="Login" method="POST" >
                    <p>Inicia Sesion</p>
                    <input type="text" name="loginCorreo" value="" autocomplete="off" placeholder="Correo"/>
                    <input type="password" name="loginContrasena" value="" autocomplete="off" placeholder="Contraseña"/>
                    <input type="submit" value="Iniciar Sesion"  name="submit" />
                </form>
            </div>
            <div class="divForm" >
                <form class="" name="registerForm" action="AddUser" method="POST">
                    <p>Registrate</p>
                    <div class="nombres" >
                        <input type="text" name="registroNombre" value="" autocomplete="off" placeholder="Nombre"/>
                        <input type="text" name="registroApellido" value="" autocomplete="off" placeholder="Apellido(s)"/>
                    </div>
                      <input type="text" name="registroCorreo" value="" autocomplete="off" placeholder="Correo"/>
                    <input type="password" name="registroContrasena" value="" autocomplete="off" placeholder="Contraseña"/>
                    <input type="submit" value="Registrarse" name="submit" />
                </form>
            </div>

        </div>
    </body>
</html>
<script>
    function googleTranslateElementInit() {
        new google.translate.TranslateElement({pageLenguage: 'es', layout: google.translate.TranslateElement.InlineLayout.SIMPLE}, 'google_translate_element');
    }
</script>