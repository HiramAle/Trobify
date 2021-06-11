<%-- 
    Document   : 360view
    Created on : 11/06/2021, 05:14:32 PM
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
	<div style="width: 400px; margin: 100px auto;">     
            <h2 align="center" style="color: white">Visualización 360 de una habitación.</h2>
            <p align="center" style="color: white">
                Para esta visualización se utilizaron 23 imágenes, se recomienda usar más de 32 imágenes para una mejor visualización.
            </p>
		<div
		   class="cloudimage-360"
		   data-folder="Resources/Images/360Images/"
		   data-filename="room-{index}.jpg"
		   data-amount="23"
		   data-keys="true"
		   data-autoplay="true"
		   data-full-screen="true"
		></div>			
		</div>
	</div>

	<script src="https://cdn.scaleflex.it/plugins/js-cloudimage-360-view/2.6.0/js-cloudimage-360-view.min.js"></script>
</body>
</html>>

<script>
    function googleTranslateElementInit() {
        new google.translate.TranslateElement({pageLenguage: 'es', layout: google.translate.TranslateElement.InlineLayout.SIMPLE}, 'google_translate_element');
    }
</script>