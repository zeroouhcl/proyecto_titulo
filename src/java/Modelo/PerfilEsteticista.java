/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Modelo;

import java.io.InputStream;

/**
 *
 * @author zeroouh
 */
public class PerfilEsteticista {
    int ID_este;
    int ID_sub;
    int ID_usu;
    int ID_img;
    int ID_dir;
    InputStream imagen;
    String Name_este;
    String descripcion;

    public PerfilEsteticista() {
    }

    public PerfilEsteticista(int ID_este, int ID_sub, int ID_usu, int ID_img, int ID_dir, InputStream imagen, String Name_este, String descripcion) {
        this.ID_este = ID_este;
        this.ID_sub = ID_sub;
        this.ID_usu = ID_usu;
        this.ID_img = ID_img;
        this.ID_dir = ID_dir;
        this.imagen = imagen;
        this.Name_este = Name_este;
        this.descripcion = descripcion;
    }

    public int getID_este() {
        return ID_este;
    }

    public void setID_este(int ID_este) {
        this.ID_este = ID_este;
    }

    public int getID_sub() {
        return ID_sub;
    }

    public void setID_sub(int ID_sub) {
        this.ID_sub = ID_sub;
    }

    public int getID_usu() {
        return ID_usu;
    }

    public void setID_usu(int ID_usu) {
        this.ID_usu = ID_usu;
    }

    public int getID_img() {
        return ID_img;
    }

    public void setID_img(int ID_img) {
        this.ID_img = ID_img;
    }

    public int getID_dir() {
        return ID_dir;
    }

    public void setID_dir(int ID_dir) {
        this.ID_dir = ID_dir;
    }

    public InputStream getImagen() {
        return imagen;
    }

    public void setImagen(InputStream imagen) {
        this.imagen = imagen;
    }

    public String getName_este() {
        return Name_este;
    }

    public void setName_este(String Name_este) {
        this.Name_este = Name_este;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }
    
}
