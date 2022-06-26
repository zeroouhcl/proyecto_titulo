
package Interfaces;

import Modelo.Cliente;
import java.util.List;


public interface CRUD_Cliente {
    public List listar_cliente();
    public Cliente list(int id);
    public boolean addCliente(Cliente cli);
    public boolean editCliente(Cliente cli);
    public boolean eliminarCliente(int id);
    public int validar (Cliente cli);
}
