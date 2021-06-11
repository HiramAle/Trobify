<%-- 
    Document   : resultadosBusqueda
    Created on : 10/06/2021, 09:01:26 PM
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
	  
	  <div class="mainResultados">
		  <div class="resultadosInmuebles" >
			  <div class="fichaMuestra" >
				  <div class="imagenMuestra" >
					  <img src="Resources/Images/casita.jpg" alt="">
				  </div>
				  <div class="infoMuestra" >
					  <h2>Habitación privada en casa</h2>
					  <p>Anfitrión: José Alfredo</p>
					  <p>2 personitas</p>
					  <a href="fichaDetalladaInm.jsp" id="verficha">Ver ficha detallada</a>
				  </div>
			  </div>


		  </div>

		  <div class="mapita" id="mapita" >
			  <div id="map" >
			  </div>
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