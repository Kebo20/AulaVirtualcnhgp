/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.io.Serializable;

/**
 *
 * @author ANA ROSA
 */
public class Usuario implements Serializable{
    private int id_usuario;
    private String tipo;
    private String login;
    private String pass;
    private int PROFESOR_id_profesor;

    public Usuario() {
        
    }

    public Usuario(int id_usuario, int PROFESOR_id_profesor, String tipo, String login, String pass) {
        this.id_usuario = id_usuario;
        this.PROFESOR_id_profesor = PROFESOR_id_profesor;
        this.tipo = tipo;
        this.login = login;
        this.pass = pass;
    }

    public int getId_usuario() {
        return id_usuario;
    }

    public void setId_usuario(int id_usuario) {
        this.id_usuario = id_usuario;
    }
    
    public int getPROFESOR_id_profesor() {
        return PROFESOR_id_profesor;
    }

    public void setPROFESOR_id_profesor(int PROFESOR_id_profesor) {
        this.PROFESOR_id_profesor = PROFESOR_id_profesor;
    }

    public String getTipo() {
        return tipo;
    }

    public void setTipo(String tipo) {
        this.tipo = tipo;
    }
    
    public String getLogin() {
        return login;
    }

    public void setLogin(String login) {
        this.login = login;
    }

    public String getPass() {
        return pass;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }
     
}
