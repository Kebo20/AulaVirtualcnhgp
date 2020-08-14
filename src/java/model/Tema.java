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
public class Tema implements Serializable{
    private int id_tema;
    private String nom_tema;
    private String tipo;
    private String imagen;
    private String pagina;

    public Tema() {
      
    }

    public Tema(int id_tema, String nom_tema, String tipo, String imagen, String pagina) {
        this.id_tema = id_tema;
        this.nom_tema = nom_tema;
        this.tipo = tipo;
        this.imagen = imagen;
        this.pagina = pagina;
    }

    public int getId_tema() {
        return id_tema;
    }

    public void setId_tema(int id_tema) {
        this.id_tema = id_tema;
    }

    public String getNom_tema() {
        return nom_tema;
    }

    public void setNom_tema(String nom_tema) {
        this.nom_tema = nom_tema;
    }

    public String getTipo() {
        return tipo;
    }

    public void setTipo(String tipo) {
        this.tipo = tipo;
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
