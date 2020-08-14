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
public class Grado implements Serializable{
    private int id_grado;
    private String grado;

    public Grado() {
        this.id_grado = 0;
        this.grado = "";
    }

    public Grado(int id_grado, String grado) {
        this.id_grado = id_grado;
        this.grado = grado;
    }

    public int getId_grado() {
        return id_grado;
    }

    public void setId_grado(int id_grado) {
        this.id_grado = id_grado;
    }

    public String getGrado() {
        return grado;
    }

    public void setGrado(String grado) {
        this.grado = grado;
    }
    
    
}
