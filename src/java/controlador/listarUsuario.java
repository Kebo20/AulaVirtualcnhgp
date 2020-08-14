/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador;

import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import dao.ProfesorDAO;
import dao.UsuarioDAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Usuario;

/**
 *
 * @author kevin
 */
public class listarUsuario extends HttpServlet {

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
          
            
            JsonObject json = new JsonObject();

            JsonArray ja = new JsonArray();

            for(Usuario u : UsuarioDAO.listarUsuario()) {
                JsonObject j = new JsonObject();
                j.addProperty("usuario", u.getLogin());
                j.addProperty("contrasena", u.getPass());
                
                
                j.addProperty("profesor", ProfesorDAO.nombreProfesor(u.getPROFESOR_id_profesor()));
               
                

                j.addProperty("editar", "<a class=\"btn btn-success\" onclick=\"editarUsuario('" + u.getId_usuario() + "','" + u.getLogin() + "','"+u.getPass()+"','"+u.getPROFESOR_id_profesor()+"')\"><icon class=\"fa fa-pencil-alt\"></icon></a>");
                j.addProperty("eliminar", "<a class=\"btn btn-danger\" onclick=\"eliminarUsuario('" + u.getId_usuario() + "')\"><icon class=\"fa fa-trash\"></icon></a>");

                ja.add(j);
            }
            json.add("datos", ja);
            out.print(json.toString());
        
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
