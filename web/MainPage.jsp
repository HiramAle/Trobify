<%-- 
    Document   : mainPage
    Created on : 9/06/2021, 01:05:57 PM
    Author     : magic
--%>

<%@page import="Model.Agent"%>
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
        <link rel="stylesheet" href="CSS/indexStyles.css">

    </head>
    <body>
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
                <a href="envioSugerencias.html">Enviar Sugerencias</a>
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
                        <a  href="resultadosBusqueda.html" ><img class="lupita" src="Resources/Images/lupititititita.png"></a>
                    </div>

                </div>
            </div>

            <div class="mainImage">
                <img id="people" src="Resources/Images/mainPeople.png" alt="Logo">
            </div>

        </div>

        <div class="info" id="info">
            <p>¿Quienes somos?</p>
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

