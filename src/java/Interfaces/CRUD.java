/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package Interfaces;

import Modelo.Servicio;
import java.util.List;

/**
 *
 * @author zeroouh
 */
public interface CRUD {
    public List listar();
    public Servicio list(int id);
    public boolean add(Servicio ser);
    public boolean edit(Servicio ser);
    public boolean eliminar(int id);
}
