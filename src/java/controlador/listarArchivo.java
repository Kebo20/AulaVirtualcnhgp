/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador;

import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import dao.ArchivoDAO;
import dao.CursoDAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Archivo;

/**
 *
 * @author kevin
 */
public class listarArchivo extends HttpServlet {

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
           JsonObject json= new JsonObject();
          
          JsonArray ja=new JsonArray();
          HttpSession sesion = request.getSession();
          
            
            for (Archivo  a : ArchivoDAO.listarArchivo(Integer.parseInt(sesion.getAttribute("id").toString()))){
              JsonObject j= new JsonObject();
              j.addProperty("nombre",a.getNom_archivo());
              j.addProperty("descripcion",a.getDescripcion());
              j.addProperty("curso",CursoDAO.nombre_curso(a.getCURSO_id_curso()) );
              switch(VerificarExtension(a.getNom_archivo())){
                  case "imagen":
                      j.addProperty("archivo","<a class=\"btn btn-success\" href='archivos/"+a.getNom_archivo()+"' ><icon class=\"fa fa-file-image\"></icon></a>");
                      break;
                  case "video":
                      j.addProperty("archivo","<a class=\"btn btn-success\" href='archivos/"+a.getNom_archivo()+"' ><icon class=\"fa fa-file-video\"></icon></a>");
                      break;
                 
                  case "audio":
                      j.addProperty("archivo","<a class=\"btn btn-success\" href='archivos/"+a.getNom_archivo()+"' ><icon class=\"fa fa-file-audio\"></icon></a>");
                      break;
                  case "word":
                      j.addProperty("archivo","<a class=\"btn btn-success\" href='archivos/"+a.getNom_archivo()+"' ><icon class=\"fa fa-file-word\"></icon></a>");
                      break;
                 
                  case "power":
                      j.addProperty("archivo","<a class=\"btn btn-success\" href='archivos/"+a.getNom_archivo()+"' ><icon class=\"fa fa-file-powerpoint\"></icon></a>");
                      break;
                  case "pdf":
                      j.addProperty("archivo","<a class=\"btn btn-success\" href='archivos/"+a.getNom_archivo()+"' ><icon class=\"fa fa-file-pdf\"></icon></a>");
                      break;
                  case "excel":
                      j.addProperty("archivo","<a class=\"btn btn-success\" href='archivos/"+a.getNom_archivo()+"' ><icon class=\"fa fa-file-excel\"></icon></a>");
                      break;
                 
                  case "otro":
                      j.addProperty("archivo","<a class=\"btn btn-success\" href='archivos/"+a.getNom_archivo()+"' ><icon class=\"fa fa-file-archive\"></icon></a>");
                      break;
                  
                 
                      
              }
              j.addProperty("tamano",a.getTamaño()+" MB");
              j.addProperty("eliminar","<a class=\"btn btn-danger\" onclick=\"eliminar("+a.getId_archivo()+")\"><icon class=\"fa fa-trash\"></icon></a>");
              
              
              ja.add(j);
            }
            json.add("datos", ja);
            out.print(json.toString());
        }
    }
    
    public static String VerificarExtension(String url){
    String extension;
    String extension2;
    String resultado="";
    
    extension=url.substring(url.length()-3, url.length());
    extension2=url.substring(url.length()-4, url.length());
    if (extension.equalsIgnoreCase("png")||extension.equalsIgnoreCase("jpg") ){
        
        resultado="imagen";
    }else if(extension.equalsIgnoreCase("mkv")||extension.equalsIgnoreCase("mp4")||extension.equalsIgnoreCase("mpeg")||extension.equalsIgnoreCase("avi")){
        resultado="video";
    }else if(extension.equalsIgnoreCase("mp3") || extension.equalsIgnoreCase("wav")){
        resultado="audio";
    }else if(extension.equalsIgnoreCase("doc") || extension2.equalsIgnoreCase("docx")){
        resultado="word";
    }else if(extension.equalsIgnoreCase("ppt") || extension2.equalsIgnoreCase("pptx")){
        resultado="power";
    }else if(extension.equalsIgnoreCase("pdf")){
        resultado="pdf";
    
    }else if(extension.equalsIgnoreCase("xls")||extension2.equalsIgnoreCase("xlsx")){
        resultado="excel";
    }else{
        resultado="otro";
    }
            
    
    return resultado;
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
