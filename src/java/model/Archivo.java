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
public class Archivo implements Serializable{
    private int id_archivo;
    private String nom_archivo;
    private String descripcion;
    private int CURSO_id_curso;
    private String tamaño;

    public Archivo() {
        this.id_archivo = 0;
        this.nom_archivo = "";
        this.descripcion = "";
        this.CURSO_id_curso = 0;
    }

    public Archivo(int id_archivo, String nom_archivo, String descripcion, int CURSO_id_curso) {
        this.id_archivo = id_archivo;
        this.nom_archivo = nom_archivo;
        this.descripcion = descripcion;
        this.CURSO_id_curso = CURSO_id_curso;
    }

    public int getId_archivo() {
        return id_archivo;
    }

    public void setId_archivo(int id_archivo) {
        this.id_archivo = id_archivo;
    }

    public String getNom_archivo() {
        return nom_archivo;
    }

    public void setNom_archivo(String nom_archivo) {
        this.nom_archivo = nom_archivo;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public int getCURSO_id_curso() {
        return CURSO_id_curso;
    }

    public void setCURSO_id_curso(int CURSO_id_curso) {
        this.CURSO_id_curso = CURSO_id_curso;
    }

    public String getTamaño() {
        return tamaño;
    }

    public void setTamaño(String tamaño) {
        this.tamaño = tamaño;
    }
    
    
}
