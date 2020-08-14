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
import model.Profesor;

/**
 *
 * @author ANA ROSA
 */
public class ProfesorDAO {
    public static boolean registrarProfesor(Profesor p){
        try {
            String SQL = "insert into profesor(nom_profesor) values(?);";
            Connection con = Conexion.getConexion();
            PreparedStatement ps = con.prepareStatement(SQL);
            ps.setString(1, p.getNom_profesor());
            
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
    
    public static boolean actualizarProfesor(Profesor p){
        try{
            String SQL = "update profesor set nom_profesor = ? where id_profesor = ?;";
            Connection con = Conexion.getConexion();
            PreparedStatement ps = con.prepareStatement(SQL);
            ps.setString(1, p.getNom_profesor());
            ps.setInt(2, p.getId_profesor());
       
            if(ps.executeUpdate()>0){
                ps.close();
                con.close();
                return true;
            } else {
                 
            ps.close();
            con.close();
                return false;
            }
        } catch (SQLException ex) {
            return false;
        }
    }
    
    public static boolean eliminarProfesor(Profesor p){
        try {
            String SQL = "delete from profesor where id_profesor = ?;";
            Connection con = Conexion.getConexion();
            PreparedStatement ps = con.prepareStatement(SQL);
            ps.setInt(1, p.getId_profesor());
            
            if(ps.executeUpdate()>0){
                ps.close();
                con.close();
                return true;
            } else {
                 
            ps.close();
            con.close();
                return false;
            }
        } catch (SQLException ex) {
            return false;
        } 
    }
    
    public static ArrayList<Profesor> listarProfesor(){
        try {
            String SQL = "select * from profesor where id_profesor != 31;";
            Connection con = Conexion.getConexion();
            PreparedStatement ps = con.prepareStatement(SQL);
            ResultSet resultado = ps.executeQuery();
            
            ArrayList<Profesor> lista = new ArrayList();
            Profesor p;
            
            while(resultado.next()){
                p = new Profesor();
                p.setId_profesor(resultado.getInt("id_profesor"));
                p.setNom_profesor(resultado.getString("nom_profesor"));
                lista.add(p);
            }
             resultado.close();
            ps.close();
            con.close();
            return lista;
        } catch (SQLException ex) {
            return null;
        }
    }
    public static ArrayList<Profesor> listarProfesorSinUsuario(){
        try {
            String SQL = "select * from profesor where id_profesor not in(select Profesor_id_profesor from usuario where Profesor_id_profesor is not null) ;";
            Connection con = Conexion.getConexion();
            PreparedStatement ps = con.prepareStatement(SQL);
            ResultSet resultado = ps.executeQuery();
            
            ArrayList<Profesor> lista = new ArrayList();
            Profesor p;
            
            while(resultado.next()){
                p = new Profesor();
                p.setId_profesor(resultado.getInt("id_profesor"));
                p.setNom_profesor(resultado.getString("nom_profesor"));
                lista.add(p);
            }
             resultado.close();
            ps.close();
            con.close();
            return lista;
        } catch (SQLException ex) {
            return null;
        }
    }
    public static String nombreProfesor(int id_profesor){
        try {
            String SQL = "select * from profesor where id_profesor=? ;";
            Connection con = Conexion.getConexion();
            PreparedStatement ps = con.prepareStatement(SQL);
            ps.setInt(1, (id_profesor));
            ResultSet resultado = ps.executeQuery();
            String nombre=null;
            
         
            
            while(resultado.next()){
               
                
                nombre=resultado.getString("nom_profesor");
                
            }
             resultado.close();
            ps.close();
            con.close();
            return nombre;
        } catch (SQLException ex) {
            return null;
        }
    }
}
