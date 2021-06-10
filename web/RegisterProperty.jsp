<%-- 
    Document   : RegisterProperty
    Created on : 9/06/2021, 08:17:56 PM
    Author     : magic
--%>

<%@page import="Model.Client"%>
<%@page import="Model.Person"%>
<%@page import="Model.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    Client client =(Client) session.getAttribute("Client");
%>

<!DOCTYPE html>
<html>
    <head>
        <link rel="icon" type="image/png" href="Resources/Images/icon.png" />
        <title>Trobify</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <script type="text/javascript" src="https://translate.google.com/translate_a/element.js?cb=googleTranslateElementInit"></script>
        <link rel="stylesheet" href="CSS/styles.css">
        <link rel="stylesheet" href="CSS/OwnerStyles.css">

    </head>
    <body>
        <div class="navbar">
            <div class="navbarLogo">
                <a class="logoboton" href="MainPageClient.jsp"><img id="logo" src="Resources/Images/logo.png" alt="Logo"></a>
            </div>
            <div class="navbarOptions">
                <a href="#"><div id="google_translate_element"></div></a>
                <a href="Login.jsp" class="userName" id="perfil"><%= client.getPersonName()%></a>
                <a href="#news">Registrar Inmueble</a>
                <a href="envioSugerencias.html">Enviar Sugerencias</a>
            </div>
        </div>
        <div class="main" >
            <div class="addProperty">
                <form class="" name="registerForm" action="AddProperty" method="POST">
                    <p>Registrar Inmueble</p>
                    <input type="text" name="registroNombre" value="" autocomplete="off" placeholder="Nombre"/>
                    <div class="nombres" >
                        <input type="text" name="registroApellido" value="" autocomplete="off" placeholder="Número de cuartos"/>
                        <input type="text" name="registroNombre" value="" autocomplete="off" placeholder="Numero de baños"/>
                    </div>
                    <input type="text" name="registroApellido" value="" autocomplete="off" placeholder="Descripcion"/>
                    <div class="nombres" >
                        <input type="text" name="registroApellido" value="" autocomplete="off" placeholder="Ciudad"/>
                        <input type="text" name="registroNombre" value="" autocomplete="off" placeholder="Colonia"/>
                    </div>
                    <div class="nombres" >
                        <input type="text" name="registroApellido" value="" autocomplete="off" placeholder="Estado"/>
                        <input type="text" name="registroNombre" value="" autocomplete="off" placeholder="Calle"/>
                    </div>
                    <div class="nombres" >
                        <input type="text" name="registroApellido" value="" autocomplete="off" placeholder="Codigo Postal"/>
                        <input type="text" name="registroNombre" value="" autocomplete="off" placeholder="Numero"/>
                    </div>
                    <input type="submit" value="Registrarse" name="submit" />
                </form>
            </div>

        </div>

        

        <div class="endSession" >
            <a href="index.jsp"  >Cerrar Sesion</a>
        </div>


    </body>
</html>

<script>
    function googleTranslateElementInit() {
        new google.translate.TranslateElement({pageLenguage: 'es', layout: google.translate.TranslateElement.InlineLayout.SIMPLE}, 'google_translate_element');
    }
</script>