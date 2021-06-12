<%-- 
    Document   : fichaDetalladaInm
    Created on : 10/06/2021, 09:16:49 PM
    Author     : alfre
--%>

<%@page import="Model.Agent"%>
<%@page import="Model.Agency"%>
<%@page import="Model.Client"%>
<%@page import="Model.User"%>
<%@page import="DataBase.DataBaseController"%>
<%@page import="Model.Property"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    DataBaseController control = new DataBaseController();
    User user = (User) session.getAttribute("user");
    Client client = new Client();
    Agency agency = new Agency();
    Agent agent = new Agent();
    int userType = (Integer) session.getAttribute("userType");
    switch (userType) {
        case 0:
            client = control.searchClient(user.geteMail());
            session.setAttribute("client", client);
            break;
        case 1:
            agent = control.searchAgent(user.geteMail());
            session.setAttribute("agent", agent);
            break;
        case 2:
            agency = control.searchAgency(user.geteMail());
            session.setAttribute("agency", agency);
            break;
    }
    Property property = (Property) session.getAttribute("property");
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
        <link rel="stylesheet" href="CSS/MyPropertyDetailsStyle.css">

    </head>
    <body onload="codeAddress()" >
        <%
            switch (userType) {
                case 0:
        %>
        <div class="navbar">
            <div class="navbarLogo">
                <a class="logoboton" href="MainPage.jsp"><img id="logo" src="Resources/Images/logo.png" alt="Logo"></a>
            </div>
            <div class="navbarOptions">
                <a href="#"><div id="google_translate_element"></div></a>
                <a href="" class="userName" id="perfil"><%= client.getPersonName()%></a>
                <a href="RegisterProperty.jsp">Ofrece un Inmueble</a>
                <a href="YourProperties.jsp">Tus Propiedades</a>
            </div>
        </div>
        <%
                break;
            case 1:
        %>
        <div class="navbar">
            <div class="navbarLogo">
                <a class="logoboton" href="MainPage.jsp"><img id="logo" src="Resources/Images/logo.png" alt="Logo"></a>
            </div>
            <div class="navbarOptions">
                <a href="#"><div id="google_translate_element"></div></a>
                <a href="Login.jsp" class="userName" id="perfil">afsdfvasdfasedfasd</a>
                <a href="RegisterProperty.jsp">Ofrece un Inmueble</a>
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
                <a href="#news">Ofrece un Inmueble</a>
                <a href="#news">Agentes</a>
                <a href="envioSugerencias.html">Enviar Sugerencias</a>
            </div>
        </div>
        <%
                    break;
            }
        %>

        <div class="main" >
            <div class="propertyInfo">
                <div class="imagenMuestra" >
                    <img src="Resources/Images/icon.png" alt="">
                </div>
                <div class="infoMuestra" name="card">
                    <h2><%=property.getPropertyName()%></h2>
                    <p><%=property.getDescription()%></p>
                    <p><%=property.getRooms()%> cuartos</p>
                    <p><%=property.getToilets()%> baños</p>
                    <p>En <%=property.getStateName()%> , <%=property.getCityName()%>,
                        <%=property.getSuburb()%> , <%=property.getStreet()%>


                    </p>
                    <p>Número <%=property.getNumber()%></p>
                    <p>Código Postal <%=property.getPostalCode()%></p>
                </div>
            </div>
            <div class="mapainm">
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





    function initMap() {
        const myLatLng = {lat: 19.504249623950113, lng: -99.14669214847778};
        const map = new google.maps.Map(document.getElementById("map"), {
            zoom: 15,
            center: myLatLng,
        });
        new google.maps.Marker({
            position: myLatLng,
            map,
            title: "<%= property.getPropertyName() %>",
        });
    }






</script>
<script async defer
        src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBDaeWicvigtP9xPv919E-RNoxfvC-Hqik&callback=initMap">
</script>

<style>

    .propertyInfo{
        margin: 5%;
        padding: 5%;
        border-radius: 1em;
        background-color: white;
        box-shadow: 1px 1px 10px gray;
        display: flex;
    }
    .propertyInfo{
        width: 50%;
        height: 100%;
        padding: 2%;
    }
    .mapainm{
        width: 50%;
        height: 100%;
        margin: auto;    
        padding: 2%;

    }

    #map{
        width: 100%;
        height: 400px;

    }
</style>