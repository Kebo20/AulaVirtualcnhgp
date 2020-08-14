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
import model.Lamina;

/**
 *
 * @author ANA ROSA
 */
public class LaminaDAO {
    
    public static ArrayList<Lamina> buscarLamina(String lamina,String tipo){
        try {
            String SQL = "select * from lamina where nom_lamina like '%"+lamina+"%' and tipo='"+tipo+"'";
            Connection con = Conexion.getConexion();
            PreparedStatement ps = con.prepareStatement(SQL);
            
            ResultSet resultado = ps.executeQuery();
            
            ArrayList<Lamina> lista = new ArrayList();
            Lamina l;
            
            while(resultado.next()){
                l = new Lamina();
                l.setId_lamina(resultado.getInt("id_lamina"));
                l.setNom_lamina(resultado.getString("nom_lamina"));
                l.setImagen(resultado.getString("imagen"));
                l.setPagina(resultado.getString("pagina"));
                lista.add(l);
            }
             resultado.close();
            ps.close();
            con.close();
            return lista;
        } catch (SQLException ex) {
            return null;
        }
    }
    
     public static ArrayList<Lamina> listarLamina(){
        try {
            String SQL = "select * from lamina ";
            Connection con = Conexion.getConexion();
            PreparedStatement ps = con.prepareStatement(SQL);
            
            ResultSet resultado = ps.executeQuery();
            
            ArrayList<Lamina> lista = new ArrayList();
            Lamina l;
            
            while(resultado.next()){
                l = new Lamina();
                l.setId_lamina(resultado.getInt("id_lamina"));
                l.setNom_lamina(resultado.getString("nom_lamina"));
                l.setImagen(resultado.getString("imagen"));
                l.setPagina(resultado.getString("pagina"));
                lista.add(l);
            }
             resultado.close();
            ps.close();
            con.close();
            return lista;
        } catch (SQLException ex) {
            return null;
        }
    }
     public static ArrayList<Lamina> listarLamina(String tipo){
        try {
            String SQL = "select * from lamina where tipo='"+tipo+"'";
            Connection con = Conexion.getConexion();
            PreparedStatement ps = con.prepareStatement(SQL);
            
            ResultSet resultado = ps.executeQuery();
            
            ArrayList<Lamina> lista = new ArrayList();
            Lamina l;
            
            while(resultado.next()){
                l = new Lamina();
                l.setId_lamina(resultado.getInt("id_lamina"));
                l.setNom_lamina(resultado.getString("nom_lamina"));
                l.setImagen(resultado.getString("imagen"));
                l.setPagina(resultado.getString("pagina"));
                lista.add(l);
            }
             resultado.close();
            ps.close();
            con.close();
            return lista;
        } catch (SQLException ex) {
            return null;
        }
    }
    
}