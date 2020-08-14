/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador;

import dao.ArchivoDAO;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Archivo;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileItemFactory;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

/**
 *
 * @author kevin
 */
@MultipartConfig
public class registrarArchivo extends HttpServlet {

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
        request.setCharacterEncoding("UTF-8");
        try (PrintWriter out = response.getWriter()) {
            
            RecibirFormulario(request);
            String nombre_archivo = request.getAttribute("archivo").toString();
            int curso = Integer.parseInt(request.getAttribute("curso").toString());
            String descripcion_archivo = request.getAttribute("descripcion").toString();
            String tamaño = request.getAttribute("tamaño").toString();
            Archivo a = new Archivo();
            a.setNom_archivo(nombre_archivo);
            a.setCURSO_id_curso(curso);

            a.setDescripcion(descripcion_archivo);
            a.setTamaño(tamaño);

            if (ArchivoDAO.insertarArchivo(a)) {
                out.print(":)");
            } else {

                out.print(":(");
            }

        }
    }

    private void RecibirFormulario(HttpServletRequest request) {
        try {
            FileItemFactory fileFactory = new DiskFileItemFactory();
            ServletFileUpload servletUpload = new ServletFileUpload(fileFactory);
            List items = servletUpload.parseRequest(request);
            String nombre = "";
            for (int i = 0; i < items.size(); i++) {
                FileItem item = (FileItem) items.get(i);

                if (!item.isFormField()) {
                    String ruta=request.getServletContext().getRealPath("/")+"archivos/";
////                    String ruta="/opt/tomcat/webapps/AulaVirtual/archivos/";
//                    String ruta = "/opt/tomcat/webapps/archivos-aulavirtual/archivos/";

                    SimpleDateFormat sdf = new SimpleDateFormat("ddMyyyyhhmmss");
                    String fecha = sdf.format(new Date());
                    nombre = fecha + item.getName();
                    String nuevonombre = ruta + nombre;
                    File folder = new File(ruta);
                    if (!folder.exists()) {
                        folder.mkdirs();
                    }

                    File archivo = new File(nuevonombre);
//                    if (item.getContentType().contains("image")) {

                    item.write(archivo);

                    request.setAttribute(item.getFieldName(), nombre);//nombre del campo(imagen) del formulario que se está analizando y su valor
                    request.setAttribute("tamaño", (double) Math.round(Double.valueOf(item.getSize()) / 1000000 * 1000) / 1000);
//                    }
                } else {
                    request.setAttribute(item.getFieldName(), new String(item.getString().getBytes("ISO-8859-1"),"UTF-8"));//nombre del campo(de texto) del formulario que se está analizando y su valor

                }

            }

        } catch (FileUploadException ex) {

        } catch (Exception ex) {

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
