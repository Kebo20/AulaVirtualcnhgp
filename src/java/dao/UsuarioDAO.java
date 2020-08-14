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
import model.Usuario;

/**
 *
 * @author ANA ROSA
 */
public class UsuarioDAO {

    public static boolean registrarUsuario(Usuario u) {
        try {
            String SQL = "insert into usuario(PROFESOR_id_profesor, tipo, login, pass) values(?,?,?,?);";
            Connection con = Conexion.getConexion();
            PreparedStatement ps = con.prepareStatement(SQL);
            ps.setInt(1, u.getPROFESOR_id_profesor());
            ps.setString(2, "1");
            
            ps.setString(3, u.getLogin());
            ps.setString(4, u.getPass());

            if (ps.executeUpdate() > 0) {
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

    public static boolean actualizarUsuario(Usuario u) {
        try {
            String SQL = "update usuario set PROFESOR_id_profesor = ?, login = ?, pass = ? where id_usuario = ?;";
            Connection con = Conexion.getConexion();
            PreparedStatement ps = con.prepareStatement(SQL);
           
            ps.setInt(1, u.getPROFESOR_id_profesor());
            
           
          
            ps.setString(2, u.getLogin());
            ps.setString(3, u.getPass());
            ps.setInt(4, u.getId_usuario());

            if (ps.executeUpdate() > 0) {
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

    public static boolean eliminarUsuario(Usuario u) {
        try {
            String SQL = "delete from usuario where id_usuario = ?;";
            Connection con = Conexion.getConexion();
            PreparedStatement ps = con.prepareStatement(SQL);
            ps.setInt(1, u.getId_usuario());

            if (ps.executeUpdate() > 0) {
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

    public static ArrayList<Usuario> listarUsuario() {
        try {
            String SQL = "select * from usuario;";
            Connection con = Conexion.getConexion();
            PreparedStatement ps = con.prepareStatement(SQL);
            ResultSet resultado = ps.executeQuery();

            ArrayList<Usuario> lista = new ArrayList();
            Usuario u;

            while (resultado.next()) {
                u = new Usuario();
                u.setId_usuario(resultado.getInt("id_usuario"));
                
               u.setPROFESOR_id_profesor(resultado.getInt("PROFESOR_id_profesor"));
               
               
                u.setTipo(resultado.getString("tipo"));
                u.setLogin(resultado.getString("login"));
                u.setPass(resultado.getString("pass"));
                lista.add(u);
            }
             resultado.close();
            ps.close();
            con.close();
            return lista;

        } catch (SQLException ex) {
            return null;
        }
    }

    public static Usuario validarUsuario(Usuario uv) {
        try {
            String SQL = "select * from usuario where login=? and pass=?";
            Connection con = Conexion.getConexion();
            PreparedStatement ps = con.prepareStatement(SQL);
            ps.setString(1, uv.getLogin());
            ps.setString(2, uv.getPass());
            ResultSet resultado = ps.executeQuery();
            Usuario u=null;

            if(resultado.next()) {
                u = new Usuario();
                u.setId_usuario(resultado.getInt("id_usuario"));
               
               u.setPROFESOR_id_profesor(resultado.getInt("PROFESOR_id_profesor"));
              
               
                u.setTipo(resultado.getString("tipo"));
                u.setLogin(resultado.getString("login"));
                u.setPass(resultado.getString("pass"));
                
               
            }
             resultado.close();
            ps.close();
            con.close();
            return u;

        } catch (SQLException ex) {
            return null;
        }
    }
}
