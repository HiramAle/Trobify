<%-- 
    Document   : propertyOwner
    Created on : 11/06/2021, 01:49:20 PM
    Author     : magic
--%>


<%@page import="Model.Agency"%>
<%@page import="DataBase.DataBaseController"%>
<%@page import="Model.Client"%>
<%@page import="Model.Person"%>
<%@page import="Model.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    DataBaseController control = new DataBaseController();
    User user = (User) session.getAttribute("user");
    Client client = new Client();
    Agency agency = new Agency();
    Property property = (Property) session.getAttribute("property");
    int userType = (Integer) session.getAttribute("userType");
    switch (userType) {
        case 0:
            client = control.searchClient(user.geteMail());
            session.setAttribute("client", client);
            break;
        case 2:
            agency = control.searchAgency(user.geteMail());
            session.setAttribute("agency", agency);
            break;
    }
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
        <link rel="stylesheet" href="CSS/propertyOwnerStyles.css">

    </head>
    <body>
        <%
            switch (userType) {
                case 0:
        %>
        <div class="navbar">
            <div class="navbarLogo">
                <a class="logoboton" href="MainPageClient.jsp"><img id="logo" src="Resources/Images/logo.png" alt="Logo"></a>
            </div>
            <div class="navbarOptions">
                <a href="#"><div id="google_translate_element"></div></a>
                <a href="" class="userName" id="perfil"><%= client.getPersonName()%></a>
                <a href="MainPageOwner.jsp">Modo Propietario</a>
                <a href="envioSugerencias.html">Enviar Sugerencias</a>
            </div>
        </div>
        <%
                break;
            case 2:
        %>
        <div class="navbar">
            <div class="navbarLogo">
                <a class="logoboton" href="MainPage.jsp"><img id="logo" src="Resources/Images/logo.png" alt="Logo"></a>
            </div>
            <div class="navbarOptions">
                <a href="#"><div id="google_translate_element"></div></a>
                <a href="" class="userName" id="perfil"><%= agency.getName()%></a>
                <a href="#news">Inmuebles</a>
                <a href="#news">Agentes</a>
                <a href="envioSugerencias.html">Enviar Sugerencias</a>
            </div>
        </div>
        <%
                    break;
            }
        %>
        <div class="main" >
            

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
