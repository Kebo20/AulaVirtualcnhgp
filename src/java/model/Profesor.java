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
public class Profesor implements Serializable{
    private int id_profesor;
    private String nom_profesor;

    public Profesor() {
        this.id_profesor = 0;
        this.nom_profesor = "";
    }

    public Profesor(int id_profesor, String nom_profesor) {
        this.id_profesor = id_profesor;
        this.nom_profesor = nom_profesor;
    }

    public int getId_profesor() {
        return id_profesor;
    }

    public void setId_profesor(int id_profesor) {
        this.id_profesor = id_profesor;
    }

    public String getNom_profesor() {
        return nom_profesor;
    }

    public void setNom_profesor(String nom_profesor) {
        this.nom_profesor = nom_profesor;
    }

    
}
