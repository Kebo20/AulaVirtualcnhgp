/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador;

import dao.LaminaDAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Lamina;

/**
 *
 * @author kevin
 */
public class buscarLamina extends HttpServlet {

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
           
            String lamina=request.getParameter("lamina");
            String tipo=request.getParameter("tipo");
            for (Lamina l:LaminaDAO.buscarLamina(lamina,tipo)) {
                out.print(" <div class=' col-md-6 col-lg-3 ' >\n" +
"                        <div class='project'>\n" +
"                            <img src='"+l.getImagen()+"' class='img-fluid' alt='Colorlib Template'>\n" +
"                            <div class='text'>\n" +
                              
"                                <h3><a href='"+l.getPagina()+"'>"+l.getNom_lamina()+"</a></h3>\n" +
"                            </div>\n" +
"                            <a href='"+l.getImagen()+"'\n" +
"                               class='icon image-popup d-flex justify-content-center align-items-center'>\n" +
"                                <span class='icon-expand'></span>\n" +
"                            </a>\n" +
"                        </div>\n" +
"\n" +
"                    </div>");
            }
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
