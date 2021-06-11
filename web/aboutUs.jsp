<%-- 
    Document   : aboutUs
    Created on : 11/06/2021, 03:51:36 PM
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
        <link rel="stylesheet" href="CSS/indexStyles.css">
        <link rel="stylesheet" href="CSS/aboutUsStyle.css">

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
        <div class="about-section">
            <h1>Acerca de Trobify</h1>
            <p>Trobify es un grupo que trata de acercar a las personas que están buscando una casa o departamento, ya sea que quieran adquirir el inmueble o rentarlo.</p>
            <p>Con Trobify hacemos más fácil la comunicación entre el propietario del inmueble con el posible comprador o arrendatario.</p>
            <p>A continuación, presentamos algunos recursos legales así como un simulador de crédito hipotecario básico.</p>
        </div>

          <h2 style="text-align:center">Recursos de apoyo</h2>
          <div class="row">
            <div class="column">
              <div class="card">
                  <p align="center"> <img src="Resources/Images/Compra.png" style="width:50%"></p>
                <div class="container">
                  <h2 align="center">Código Civil Federal</h2>
                  <p align="center">Artículos mexicanos relacionados con la Compra-Venta de inmuebles</p>
                  <p><a href="https://mexico.justia.com/federales/leyes/codigo-civil-federal/libro-cuarto/parte-segunda/titulo-segundo/#:~:text=Artículo%202248.,precio%20cierto%20y%20en%20dinero.&text=Artículo%202249." class="button">Acceder</a></p>
                </div>
              </div>
            </div>

            <div class="column">
              <div class="card">
                  <p align="center"><img src="Resources/Images/Arrenda.png" style="width:50%"></p>
                <div class="container">
                  <h2 align="center">Código Civil Federal</h2>
                  <p align="center">Artículos mexicanos relacionados con el arrendamiento de inmuebles</p>
                  <p><a href="https://mexico.justia.com/federales/leyes/codigo-civil-federal/libro-cuarto/parte-segunda/titulo-sexto/#:~:text=Artículo%202398.,o%20goce%20un%20precio%20cierto." class="button">Acceder</a></p>
                </div>
              </div>
            </div>

            <div class="column">
              <div class="card">
                  <p align="center"><img src="Resources/Images/Calcu.png" style="width:50%"></p>
                <div class="container">
                  <h2 align="center">Simulador</h2>
                  <p align="center">Un simulador de crédito hipotecario básico, recomendamos acudir a un banco.</p>
                  <p><a href="calculadora.jsp" class="button">Acceder</a></p>
                </div>
              </div>
            </div>
          </div>
    </body>
</html>

<script>
    function googleTranslateElementInit() {
        new google.translate.TranslateElement({pageLenguage: 'es', layout: google.translate.TranslateElement.InlineLayout.SIMPLE}, 'google_translate_element');
    }
</script>