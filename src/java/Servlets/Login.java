/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlets;

import DataBase.DataBaseController;
import Model.Agency;
import Model.Client;
import Model.Person;
import Model.User;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author magic
 */
public class Login extends HttpServlet {

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
            User user = new User();
            user.seteMail(request.getParameter("loginCorreo"));
            user.setPassword(request.getParameter("loginContrasena"));
            if (control.matchUser(user)) {
                HttpSession session = request.getSession();
                Person person = control.searchPerson(user.geteMail());
                
                if (person.geteMail() == null) {
                    session.setAttribute("userType", 2);
                    Agency agency = control.searchAgency(user.geteMail());
                    session.setAttribute("Agency", agency);
                    response.sendRedirect("MainPageAgency.jsp");
                } else {
                    session.setAttribute("user", person);
                    person = control.searchClient(user.geteMail());
                    if (person.geteMail() == null) {
                        session.setAttribute("userType", 1);
                    } else {
                        session.setAttribute("userType", 0);
                        Client client = control.searchClient(user.geteMail());
                        session.setAttribute("Client", client);
                        response.sendRedirect("MainPageClient.jsp");
                    }

                }

            } else {
                response.sendRedirect("Login.jsp");
            }
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(Login.class.getName()).log(Level.SEVERE, null, ex);
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
