<%-- 
    Document   : calculadora
    Created on : 10/06/2021, 03:52:51 PM
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
        <div class="descCalc">
            <table border="0" width="440px">           
                <tbody>
                    <tr>
                        <td>Ofrecemos en esta sección una calculadora básica donde el usuario introduce la cantidad que requiere pedir prestado a alguna institución bancaria, también la tasa fija anual que estas instituciones tienen las cuales oscilan entre el 8% y el 15%, así como la cantidad de años en los cuales se piensa acabar de pagar este préstamo. Una vez introducidos estos datos se procede a oprimir el botón de calcular.</td>
                    </tr>
                </tbody>
            </table>
             </div>
        <div class="calcTable">
            <form action="calculoprestamo.jsp" method="POST">
                <table border="1">
                    <thead>
                        <tr>
                            <th colspan="2">Calculadora de préstamos</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>Cantidad del préstamo:</td>
                            <td><input type="text" name="cantprest" id="cantprest" placeholder="$500,000"/></td>
                        </tr>
                        <tr>
                            <td>Interés anual:</td>
                            <td><input type="text" name="intanual" id="intanual" placeholder="8%"/></td>
                        </tr>
                        <tr>
                            <td>Número de años a pagar:</td>
                            <td><input type="text" name="noanios" id="noanios" placeholder="5 años"/></td>
                        </tr>
                        <tr>
                            <td colspan="2"><center><input type="submit" value="Calcular" name="calculo"/></center></td>
                        </tr>
                    </tbody>
                </table>
            </form>
        </div>
    </body>
</html>

<script>
    function googleTranslateElementInit() {
        new google.translate.TranslateElement({pageLenguage: 'es', layout: google.translate.TranslateElement.InlineLayout.SIMPLE}, 'google_translate_element');
    }
</script>