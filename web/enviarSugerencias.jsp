<%-- 
    Document   : enviarSugerencias
    Created on : 10/06/2021, 08:50:31 PM
    Author     : alfre
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
        <link rel="stylesheet" href="CSS/indexStyles.css">

    </head>
    <body>
        <div class="navbar">
            <div class="navbarLogo">
                <a class="logoboton" href="/Trobify"><img id="logo" src="Resources/Images/logo.png" alt="Logo"></a>
            </div>
            <div class="navbarOptions">
                <a href="#"><div id="google_translate_element"></div></a>
                <a href="Login.jsp" id="">Inicia sesion</a>
                <a href="aboutUs.jsp">¿Quienes somos?</a>
                <a href="enviarSugerencias.jsp">Enviar Sugerencias</a>
                <a href="calculadora.jsp">Calculadora de préstamos</a>
            </div>
        </div>

        <div class="mainESugerencias">
            <form action="enviar.php" method="POST">
            <div class="envioDeSugerencias">
                <input type="texto" name="nombre" id="nombre" class="nombre" placeholder="Nombre">
                <input type="mail" name="mail" id="mail" class="email" placeholder="Correo">
                <input type="phone" name="phone" id="phone" class="phone" placeholder="Teléfono">
                <div class="ComentariosSugerencias">
                    <h2>Envíanos tus sugerencias</h2>
                    <textarea name="sugerencias" class="sugerencias" id="sugerencias" rows="25" cols="70" placeholder="Escribe aquí tus comentarios"></textarea>   
                </div>
                <button type="submit">Enviar</button>
            </div>
            </form>
        </div>
    </body>
</html>

<script>
    function googleTranslateElementInit() {
        new google.translate.TranslateElement({pageLenguage: 'es', layout: google.translate.TranslateElement.InlineLayout.SIMPLE}, 'google_translate_element');
    }
</script>

