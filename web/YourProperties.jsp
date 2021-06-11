<%-- 
    Document   : YourPropertys
    Created on : 10/06/2021, 09:47:35 PM
    Author     : magic
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="Model.Property"%>
<%@page import="Model.Agent"%>
<%@page import="Model.Agency"%>
<%@page import="Model.Client"%>
<%@page import="Model.User"%>
<%@page import="DataBase.DataBaseController"%>
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
            
        
        
        <div class="propertiesList" >
            <%
                ArrayList<Property> properties = control.getProperties(user);
                for (int i = 0; i < properties.size(); i++) {
                        
                        
                    
            %>

            <div class="propertyCard" >
                <div class="imagenMuestra" >
                    <img src="Resources/Images/icon.png" alt="">
                </div>
                <div class="infoMuestra" >
                    <h2><%=properties.get(i).getPropertyName()%></h2>
                    <p>Cuartos: <%=properties.get(i).getRooms() %></p>
                    <p>Baños: <%=properties.get(i).getToilets() %></p>
                    <p><%=properties.get(i).getDescription() %></p>
                    <a href="fichaDetalladaInm.html" id="verficha">Ver ficha detallada</a>
                </div>
            </div>
            <%
                }
            %>
        </div>
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
