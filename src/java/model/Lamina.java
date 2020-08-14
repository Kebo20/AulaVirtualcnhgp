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
public class Lamina implements Serializable{
    private int id_lamina;
    private String nom_lamina;
    private String imagen;
    private String pagina;

    public Lamina() {
      
    }

    public Lamina(int id_lamina, String nom_lamina, String imagen, String pagina) {
        this.id_lamina = id_lamina;
        this.nom_lamina = nom_lamina;
        this.imagen = imagen;
        this.pagina = pagina;
    }

    public int getId_lamina() {
        return id_lamina;
    }

    public void setId_lamina(int id_lamina) {
        this.id_lamina = id_lamina;
    }

    public String getNom_lamina() {
        return nom_lamina;
    }

    public void setNom_lamina(String nom_lamina) {
        this.nom_lamina = nom_lamina;
    }

    public String getImagen() {
        return imagen;
    }

    public void setImagen(String imagen) {
        this.imagen = imagen;
    }

    public String getPagina() {
        return pagina;
    }

    public void setPagina(String pagina) {
        this.pagina = pagina;
    }
        
}
