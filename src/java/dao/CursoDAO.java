/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import model.Curso;

/**
 *
 * @author ANA ROSA
 */
public class CursoDAO {
    public static ArrayList<Curso> listarCurso(int id_profesor){
        try {
            String SQL = "select * from curso where PROFESOR_id_profesor=? ;";
            Connection con = Conexion.getConexion();
            PreparedStatement ps = con.prepareStatement(SQL);
            ps.setInt(1, id_profesor);
            ResultSet resultado = ps.executeQuery();
            
            ArrayList<Curso> lista = new ArrayList();
            Curso c;
            
            while(resultado.next()){
                c = new Curso();
                c.setId_curso(resultado.getInt("id_curso"));
                c.setNom_curso(resultado.getString("nom_curso"));
                c.setGRADO_id_grado(resultado.getInt("GRADO_id_grado"));
                c.setPROFESOR_id_profesor(resultado.getInt("PROFESOR_id_profesor"));
                lista.add(c);
                
            }
            resultado.close();
            ps.close();
            con.close();
            return lista;
            
        } catch (SQLException ex) {
            return null;
        }
    }
    public static ArrayList<Curso> listarCurso(){
        try {
            String SQL = "select * from curso;";
            Connection con = Conexion.getConexion();
            PreparedStatement ps = con.prepareStatement(SQL);
          
            ResultSet resultado = ps.executeQuery();
            
            ArrayList<Curso> lista = new ArrayList();
            Curso c;
            
            while(resultado.next()){
                c = new Curso();
                c.setId_curso(resultado.getInt("id_curso"));
                c.setNom_curso(resultado.getString("nom_curso"));
                c.setGRADO_id_grado(resultado.getInt("GRADO_id_grado"));
                if ("null".equals(resultado.getString("PROFESOR_id_profesor"))) {
                     c.setPROFESOR_id_profesor(0);
                }else{
                     c.setPROFESOR_id_profesor(resultado.getInt("PROFESOR_id_profesor"));
                }
               
                lista.add(c);
                
            }
             resultado.close();
            ps.close();
            con.close();
            return lista;
            
        } catch (SQLException ex) {
            return null;
        }
    }
    public static ArrayList<Curso> listarCursoFisica(){
        try {
            String SQL = "select * from curso where id_curso < 62 and id_curso >45;";
            Connection con = Conexion.getConexion();
            PreparedStatement ps = con.prepareStatement(SQL);
          
            ResultSet resultado = ps.executeQuery();
            
            ArrayList<Curso> lista = new ArrayList();
            Curso c;
            
            while(resultado.next()){
                c = new Curso();
                c.setId_curso(resultado.getInt("id_curso"));
                c.setNom_curso(resultado.getString("nom_curso"));
                c.setGRADO_id_grado(resultado.getInt("GRADO_id_grado"));
                if ("null".equals(resultado.getString("PROFESOR_id_profesor"))) {
                     c.setPROFESOR_id_profesor(0);
                }else{
                     c.setPROFESOR_id_profesor(resultado.getInt("PROFESOR_id_profesor"));
                }
               
                lista.add(c);
                
            }
             resultado.close();
            ps.close();
            con.close();
            return lista;
            
        } catch (SQLException ex) {
            return null;
        }
    }
    
     public static ArrayList<Curso> listarCursoBiologia(){
        try {
            String SQL = "select * from curso where id_curso <31  and id_curso >15;";
            Connection con = Conexion.getConexion();
            PreparedStatement ps = con.prepareStatement(SQL);
          
            ResultSet resultado = ps.executeQuery();
            
            ArrayList<Curso> lista = new ArrayList();
            Curso c;
            
            while(resultado.next()){
                c = new Curso();
                c.setId_curso(resultado.getInt("id_curso"));
                c.setNom_curso(resultado.getString("nom_curso"));
                c.setGRADO_id_grado(resultado.getInt("GRADO_id_grado"));
                if ("null".equals(resultado.getString("PROFESOR_id_profesor"))) {
                     c.setPROFESOR_id_profesor(0);
                }else{
                     c.setPROFESOR_id_profesor(resultado.getInt("PROFESOR_id_profesor"));
                }
               
                lista.add(c);
                
            }
             resultado.close();
            ps.close();
            con.close();
            return lista;
            
        } catch (SQLException ex) {
            return null;
        }
    }
    
      public static ArrayList<Curso> listarCursoQuimica(){
        try {
            String SQL = "select * from curso where id_curso < 46 and id_curso >30;";
            Connection con = Conexion.getConexion();
            PreparedStatement ps = con.prepareStatement(SQL);
          
            ResultSet resultado = ps.executeQuery();
            
            ArrayList<Curso> lista = new ArrayList();
            Curso c;
            
            while(resultado.next()){
                c = new Curso();
                c.setId_curso(resultado.getInt("id_curso"));
                c.setNom_curso(resultado.getString("nom_curso"));
                c.setGRADO_id_grado(resultado.getInt("GRADO_id_grado"));
                if ("null".equals(resultado.getString("PROFESOR_id_profesor"))) {
                     c.setPROFESOR_id_profesor(0);
                }else{
                     c.setPROFESOR_id_profesor(resultado.getInt("PROFESOR_id_profesor"));
                }
               
                lista.add(c);
                
            }
             resultado.close();
            ps.close();
            con.close();
            return lista;
            
        } catch (SQLException ex) {
            return null;
        }
    }
     
    public static String nombre_curso(int id_curso){
        try {
            String SQL = "select * from curso where id_curso=? ;";
            Connection con = Conexion.getConexion();
            PreparedStatement ps = con.prepareStatement(SQL);
            ps.setInt(1, id_curso);
            ResultSet resultado = ps.executeQuery();
            
           
            String r=null;
            
            while(resultado.next()){
              
                r=(resultado.getString("nom_curso"));
               
                
                
            }
            resultado.close();
            ps.close();
            con.close();
            return r;
        } catch (SQLException ex) {
            return null;
        }
    }
    public static String nombre_profesor(int id_curso){
        try {
            String SQL = "select p.nom_profesor as profesor from curso c inner join profesor p on c.PROFESOR_id_profesor=p.id_profesor where c.id_curso=? ;";
            Connection con = Conexion.getConexion();
            PreparedStatement ps = con.prepareStatement(SQL);
            ps.setInt(1, id_curso);
            ResultSet resultado = ps.executeQuery();
            
           
            String r=null;
            
            while(resultado.next()){
              
                r=(resultado.getString("profesor"));
               
                
                
            }
            resultado.close();
            ps.close();
            con.close();
            return r;
        } catch (SQLException ex) {
            return null;
        }
    }
    
    
     public static boolean actualizarCurso(Curso c) {
        try {
            String SQL = "update curso set PROFESOR_id_profesor = ? where id_curso = ?;";
            Connection con = Conexion.getConexion();
            PreparedStatement ps = con.prepareStatement(SQL);
            if (c.getPROFESOR_id_profesor()==0) {
                ps.setString(1, null);
            }else{
                ps.setInt(1, c.getPROFESOR_id_profesor());
            }
           
                
            
           
            
            ps.setInt(2,c.getId_curso());
          

            if (ps.executeUpdate() > 0) {
                ps.close();
                con.close();
                return true;
            } else {
                return false;
            }
        } catch (SQLException ex) {
            return false;
        }
    }
}
