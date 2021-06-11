/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlets;

import DataBase.DataBaseController;
import Model.Client;
import Model.Property;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author magic
 */
public class AddProperty extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            DataBaseController control = new DataBaseController();
            Property property = new Property();
            property.setPropertyName(request.getParameter("registroNombre"));
            property.setRooms(Integer.parseInt(request.getParameter("registroCuartos")));
            property.setToilets(Integer.parseInt(request.getParameter("registroBanos")));
            property.setDescription(request.getParameter("registroDescripcion"));
            property.setCityName(request.getParameter("registroCiudad"));
            property.setSuburb(request.getParameter("registroColonia"));
            property.setStateName(request.getParameter("registroEstado"));
            property.setStreet(request.getParameter("registroCalle"));
            property.setPostalCode(Integer.parseInt(request.getParameter("registroCP")));
            property.setNumber(request.getParameter("registroNumero"));
            
            System.out.println("Sesion: "+(Integer)request.getSession(false).getAttribute("userType"));
            
            //System.out.println("Cliente: "+client.getPersonName());
            if((Integer)request.getSession().getAttribute("userType")==0){
                Client client = (Client) request.getSession().getAttribute("client");
                //System.out.println("Cliente: "+client.getPersonName());
                property.setOwnerMail(client.geteMail());
            }
            control.addProperty(property);
            response.sendRedirect("MainPage.jsp");
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(AddProperty.class.getName()).log(Level.SEVERE, null, ex);
            System.out.println("Error: "+ex);
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
