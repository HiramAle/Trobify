<%-- 
    Document   : index
    Created on : 8/06/2021, 08:36:41 PM
    Author     : magic
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% session.invalidate(); %>

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
        <div class="main" >

            <div class="mainText">
                <p>
                    ¿Buscas un lugar donde <br>
                    vivir, o pasar una <br>
                    temporada? <br>
                </p>
                <div class="filtros">
                    <div class="divSelect">
                        <select name="TipoInmueble">
                            <option value="1">Casa</option>
                            <option value="2">Departamento</option>
                        </select>
                    </div>
                    <div class="radiobutt">
                        <input type="radio" name="tipo" id="Venta" checked>
                        <label for="Venta">Venta</label> 
                        <input type="radio" name="tipo" value="Renta">
                        <label for="Renta">Renta</label>
                    </div>
                </div>
                <div class="mainBuscador">
                    <div class="divBuscador">
                        <input class="buscador" type="text" placeholder="Departamento en CDMX">
                        <a  href="resultadosBusqueda.jsp" ><img class="lupita" src="Resources/Images/lupititititita.png"></a>
                    </div>

                </div>
            </div>

            <div class="mainImage">
                <img id="people" src="Resources/Images/mainPeople.png" alt="Logo">
            </div>

        </div>
    </body>
</html>

<script>
    function googleTranslateElementInit() {
        new google.translate.TranslateElement({pageLenguage: 'es', layout: google.translate.TranslateElement.InlineLayout.SIMPLE}, 'google_translate_element');
    }
</script>