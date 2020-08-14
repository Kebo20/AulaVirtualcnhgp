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
import model.Tema;

/**
 *
 * @author ANA ROSA
 */
public class TemaDAO {
    
    public static ArrayList<Tema> buscarTema(String tema, String tipo){
        try {
            String SQL = "select * from tema where nom_tema like '%"+tema+"%' and tipo = ?;";
            Connection con = Conexion.getConexion();
            PreparedStatement ps = con.prepareStatement(SQL);
    
            ps.setString(1, tipo);
            ResultSet resultado = ps.executeQuery();
            
            ArrayList<Tema> lista = new ArrayList();
            Tema t;
            
            while(resultado.next()){
                t = new Tema();
                t.setId_tema(resultado.getInt("id_tema"));
                t.setNom_tema(resultado.getString("nom_tema"));
                t.setTipo(resultado.getString("tipo"));
                t.setImagen(resultado.getString("imagen"));
                t.setPagina(resultado.getString("pagina"));
                lista.add(t);
            }
             resultado.close();
            ps.close();
            con.close();
            return lista;
        } catch (SQLException ex) {
            return null;
        }
    }
    public static ArrayList<Tema> ListarTema(String tipo){
        try {
            String SQL = "select * from tema where tipo = ?;";
            Connection con = Conexion.getConexion();
            PreparedStatement ps = con.prepareStatement(SQL);
    
            ps.setString(1, tipo);
            ResultSet resultado = ps.executeQuery();
            
            ArrayList<Tema> lista = new ArrayList();
            Tema t;
            
            while(resultado.next()){
                t = new Tema();
                t.setId_tema(resultado.getInt("id_tema"));
                t.setNom_tema(resultado.getString("nom_tema"));
                t.setTipo(resultado.getString("tipo"));
                t.setImagen(resultado.getString("imagen"));
                t.setPagina(resultado.getString("pagina"));
                lista.add(t);
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
