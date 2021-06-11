<%-- 
    Document   : calculoprestamo
    Created on : 10/06/2021, 04:09:50 PM
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
                <a href="#info">¿Quienes somos?</a>
                <a href="enviarSugerencias.jsp">Enviar Sugerencias</a>
                <a href="calculadora.jsp">Calculadora de préstamos</a>
            </div>
        </div>        
        <div class="calcTable">
        <% 
        float cantprest = Float.parseFloat(request.getParameter("cantprest"));
        float intanual = Float.parseFloat(request.getParameter("intanual"));
        int noanios = Integer.parseInt(request.getParameter("noanios"));
        int meses = noanios * 12;
        float intereses = intanual/1200;
        double factor = Math.pow(intereses+1,meses);
        double cuota = cantprest*intereses*factor/(factor-1);
        float cuotaf = (float) cuota;
        float pagototal = cuotaf * (meses);
        float pagointeres = pagototal - cantprest;   
        out.println("<table border='1'>");
        out.println("<tr><th colspan='2'>Cálculos estimados</th></tr>");
        out.println("<tr><td>Pago mensual estimado </td><td>$"+String.valueOf(cuotaf)+"</td></tr>");
        out.println("<tr><td>Cantidad del préstamo </td><td>$"+String.valueOf(cantprest)+"</td></tr>");
        out.println("<tr><td>Total de pagos de intereses </td><td>$"+String.valueOf(pagointeres)+"</td></tr>");
        out.println("<tr><td>Total de todos los pagos </td><td>$"+String.valueOf(pagototal)+"</td></tr>");
        out.println("</table>");
        out.println("");
        out.println("");
        %>
        </div>
    </body>
</html>

<script>
    function googleTranslateElementInit() {
        new google.translate.TranslateElement({pageLenguage: 'es', layout: google.translate.TranslateElement.InlineLayout.SIMPLE}, 'google_translate_element');
    }
</script>

