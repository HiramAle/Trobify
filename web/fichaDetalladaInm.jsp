<%-- 
    Document   : fichaDetalladaInm
    Created on : 10/06/2021, 09:16:49 PM
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
        <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBDaeWicvigtP9xPv919E-RNoxfvC-Hqik&callback=initMap" async></script>
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
                <a href="#info">¿Quienes somos?</a>
                <a href="enviarSugerencias.jsp">Enviar Sugerencias</a>
                <a href="calculadora.jsp">Calculadora de préstamos</a>
            </div>
        </div>

        <div class="mainFichaDet">
            <div class="ficha">
                <div class="ImagenesInmueble">
                    <img id="inmueble1" src="Resources/Images/inmu1.jpg"><br>
                    <img id="inmueble2" src="Resources/Images/inmu2.jpg"><br>
                    <img id="inmueble3" src="Resources/Images/inmu3.jpg"><br>
                </div>
                <div class="Especif">
                    <img id="portada" src="Resources/Images/portada.jpg"><br>
                    <p id="textoesp">
                        Departamento super ubicado a 5 minutos de Polanco, a 6 cuadras de Metro San Joaquín y 3 cuadras de Mariano Escobedo.<br>
                        Recién remodelado. Ubicado en Planta Baja.<br>
                        2 Recamaras con clóset, 1 Baño Completo, Comedor, Estancia, Cocina Integral, Bodega. Caseta de vigilancia 24 hrs.<br>
                        No tiene estacionamiento pero se puede rentar dentro de la unidad.<br><br><br>
                        PRECIO: $5,890,000 <br>
                    </p>
                    <a href="" id="descficha">Descargar Ficha</a>
                </div>
            </div>
            <div class="infprop">
                <img id="foto" src="Resources/Images/propietario.jpg"><br>
                <p>
                    <h1 align="center">Julián Vázquez Rodirguez</h1>
                </p>
                <p align="center">
                    Celular: 5588963150 <br>
                    e-mail: julianvazrod@gmail.com <br>
                </p>
                <p align="center">
                    <a href="https://api.whatsapp.com/send?phone=573113474922&text=Estoy%20interesad@%20en%20su%20inmueble" id="whatsapp">Enviar mensaje por whatsapp</a>
                </p>                
            </div>
        </div>
        <div class="mapainm">
            <div id="map" >
            </div>
        </div>
    </body>
</html>
<script>
    function googleTranslateElementInit() {
        new google.translate.TranslateElement({pageLenguage: 'es', layout: google.translate.TranslateElement.InlineLayout.SIMPLE}, 'google_translate_element');
    }
    
    function initMap(){
	var coord = {lat:19.42847 ,lng:-99.12766};
        var map = new google.maps.Map(document.getElementById('map'),{
          zoom: 13,
          center: coord
        });
    }
</script>