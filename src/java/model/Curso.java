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
public class Curso implements Serializable{
    private int id_curso;
    private String nom_curso;
    private int GRADO_id_grado;
    private int PROFESOR_id_profesor;

    public Curso() {
        this.id_curso = 0;
        this.nom_curso = "";
        this.GRADO_id_grado = 0;
        this.PROFESOR_id_profesor = 0;
    }

    public Curso(int id_curso, String nom_curso, int GRADO_id_grado, int PROFESOR_id_profesor) {
        this.id_curso = id_curso;
        this.nom_curso = nom_curso;
        this.GRADO_id_grado = GRADO_id_grado;
        this.PROFESOR_id_profesor = PROFESOR_id_profesor;
    }

    public int getId_curso() {
        return id_curso;
    }

    public void setId_curso(int id_curso) {
        this.id_curso = id_curso;
    }

    public String getNom_curso() {
        return nom_curso;
    }

    public void setNom_curso(String nom_curso) {
        this.nom_curso = nom_curso;
    }

    public int getGRADO_id_grado() {
        return GRADO_id_grado;
    }

    public void setGRADO_id_grado(int GRADO_id_grado) {
        this.GRADO_id_grado = GRADO_id_grado;
    }

    public int getPROFESOR_id_profesor() {
        return PROFESOR_id_profesor;
    }

    public void setPROFESOR_id_profesor(int PROFESOR_id_profesor) {
        this.PROFESOR_id_profesor = PROFESOR_id_profesor;
    }
    
    
    
}
