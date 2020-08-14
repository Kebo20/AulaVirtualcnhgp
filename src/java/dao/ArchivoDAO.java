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
import model.Archivo;

/**
 *
 * @author ANA ROSA
 */
public class ArchivoDAO {
    public static boolean insertarArchivo(Archivo a){
        try {
            String SQL = "insert into archivo(nom_archivo, descripcion, CURSO_id_curso,tamaño) values(?,?,?,?);";
            Connection con = Conexion.getConexion();
            PreparedStatement ps = con.prepareStatement(SQL);
            ps.setString(1, a.getNom_archivo());
            ps.setString(2, a.getDescripcion());
            ps.setInt(3, a.getCURSO_id_curso());
            ps.setString(4, a.getTamaño());
            
            if(ps.executeUpdate()>0){
                ps.close();
                con.close();
                return true;
            } else{
                return false;
            }
        } catch (SQLException ex) {
            return false;
        }
    }
    
    public static boolean actualizarArchivo(Archivo a){
        try {
            String SQL = "update archivo set nom_archivo = ?, descripcion = ?, CURSO_id_curso = ? WHERE id_archivo = ?;";
            Connection con = Conexion.getConexion();
            PreparedStatement ps = con.prepareStatement(SQL);
            ps.setString(1, a.getNom_archivo());
            ps.setString(2, a.getDescripcion());
            ps.setInt(3, a.getCURSO_id_curso());
        
            if(ps.executeUpdate()>0){
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
    
    public static boolean eliminarArchivo(Archivo a){
        try {
            String SQL = "delete from archivo where id_archivo = ?;";
            Connection con = Conexion.getConexion();
            PreparedStatement ps = con.prepareStatement(SQL);
            ps.setInt(1, a.getId_archivo());
            
            if(ps.executeUpdate()>0){
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
    
    public static ArrayList<Archivo> listarArchivo(){
        try {
            String SQL = "select * from archivo;";
            Connection con = Conexion.getConexion();
            PreparedStatement ps = con.prepareStatement(SQL);
            ResultSet resultado = ps.executeQuery();
            
            ArrayList<Archivo> lista =new ArrayList() ;
            Archivo a;
            
            while(resultado.next()){
                a = new Archivo();
                a.setId_archivo(resultado.getInt("id_archivo"));
                a.setNom_archivo(resultado.getString("nom_archivo"));
                a.setDescripcion(resultado.getString("descripcion"));
                a.setCURSO_id_curso(resultado.getInt("CURSO_id_curso"));
                lista.add(a);
            }
             resultado.close();
            ps.close();
            con.close();
            return lista;
            
        } catch (SQLException ex) {
            return null;
        }
    }
    
    
    public static ArrayList<Archivo> listarArchivo(int profesor){
        try {
            String SQL = "select * from archivo where CURSO_id_curso in(select id_curso from curso where PROFESOR_id_profesor=? )";
            Connection con = Conexion.getConexion();
            PreparedStatement ps = con.prepareStatement(SQL);
            ps.setInt(1, profesor);
            ResultSet resultado = ps.executeQuery();
            
            ArrayList<Archivo> lista = new ArrayList();
            Archivo a;
            
            while(resultado.next()){
                a = new Archivo();
                a.setId_archivo(resultado.getInt("id_archivo"));
                a.setNom_archivo(resultado.getString("nom_archivo"));
                a.setDescripcion(resultado.getString("descripcion"));
                a.setCURSO_id_curso(resultado.getInt("CURSO_id_curso"));
                a.setTamaño(resultado.getString("tamaño"));
                lista.add(a);
            }
             resultado.close();
            ps.close();
            con.close();
            return lista;
            
        } catch (SQLException ex) {
            return null;
        }
    }
    public static ArrayList<Archivo> listarArchivo_curso(int curso){
        try {
            String SQL = "select * from archivo where CURSO_id_curso = ?";
            Connection con = Conexion.getConexion();
            PreparedStatement ps = con.prepareStatement(SQL);
            ps.setInt(1, curso);
            ResultSet resultado = ps.executeQuery();
            
            ArrayList<Archivo> lista = new ArrayList();
            Archivo a;
            
            while(resultado.next()){
                a = new Archivo();
                a.setId_archivo(resultado.getInt("id_archivo"));
                a.setNom_archivo(resultado.getString("nom_archivo"));
                a.setDescripcion(resultado.getString("descripcion"));
                a.setCURSO_id_curso(resultado.getInt("CURSO_id_curso"));
                a.setTamaño(resultado.getString("tamaño"));
                lista.add(a);
            }
             resultado.close();
            ps.close();
            con.close();
            return lista;
            
        } catch (SQLException ex) {
            return null;
        }
    }
    
    public static Archivo listarArchivo(Archivo ar){
        try {
            String SQL = "select * from archivo where id_archivo=?;";
            Connection con = Conexion.getConexion();
            PreparedStatement ps = con.prepareStatement(SQL);
            ps.setInt(1, ar.getId_archivo());
            ResultSet resultado = ps.executeQuery();
            
            Archivo a=null;
            
            while(resultado.next()){
                a = new Archivo();
                a.setId_archivo(resultado.getInt("id_archivo"));
                a.setNom_archivo(resultado.getString("nom_archivo"));
                a.setDescripcion(resultado.getString("descripcion"));
                a.setCURSO_id_curso(resultado.getInt("CURSO_id_curso"));
               
            }
             resultado.close();
            ps.close();
            con.close();
            return a;
            
        } catch (SQLException ex) {
            return null;
        }
    }
    
}
