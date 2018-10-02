
package dao;

import conexion.ConexionBD;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import modelo.Cliente;


public class ClienteDAO {
    private Connection connection;
    
    public ClienteDAO(){
        connection = ConexionBD.getConnection();
    }
    
    public void agregarCliente(Cliente cliente){
        try{
            PreparedStatement ps = connection.prepareStatement("insert into cliente (nombre, apellido, cedula, "
                    + "ruc, localidad, direccion, celular, telefono) values (?, ?, ?, ?, ?, ?, ?, ?)");
            
            ps.setString(1, cliente.getNombre());
            ps.setString(2, cliente.getApellido());
            ps.setString(3, cliente.getCedula());
            ps.setString(4, cliente.getRuc());
            ps.setString(5, cliente.getLocalidad());
            ps.setString(6, cliente.getDireccion());
            ps.setString(7, cliente.getCedula());
            ps.setString(8, cliente.getTelefono());
            
            ps.executeUpdate();
            
        } catch(Exception e){
            System.out.println("Error en agregarCliente de ClienteDAO: "+e.getMessage());
        }
    }
    
    public void eliminarCliente(String idCliente){
        try{
            PreparedStatement ps = connection.prepareStatement("delete from cliente where id_cliente=?");
            ps.setString(1, idCliente);
            ps.executeUpdate();
            
        }catch(Exception e){
            System.out.println("Error en eliminarCliente de ClienteDAO: "+e.getMessage());
        }
    }
    
    public void actualizarCliente(Cliente cliente){
        try{
            PreparedStatement ps = connection.prepareStatement("update cliente set nombre=?, apellido=?, cedula=?,"
                    + " ruc=?, localidad=?, direccion=?, celular=?, telefono=? WHERE id_cliente=? ");
            
            ps.setString(1, cliente.getNombre());
            ps.setString(2, cliente.getApellido());
            ps.setString(3, cliente.getCedula());
            ps.setString(4, cliente.getRuc());
            ps.setString(5, cliente.getLocalidad());
            ps.setString(6, cliente.getDireccion());
            ps.setString(7, cliente.getCelular());
            ps.setString(8, cliente.getTelefono());
            ps.setInt(9, cliente.getId_cliente());
            
            ps.executeUpdate();
        }catch(Exception e){
            System.out.println("Error en actualizarCliente de ClienteDAO: "+e.getMessage());
        }
    }
    
    public List<Cliente> listarCliente(){
        List<Cliente> usuario = new ArrayList<Cliente>();
        
        try{
            Statement st = connection.createStatement();
            ResultSet rs = st.executeQuery("select * from cliente");
            
            while(rs.next()){
                Cliente cliente = new Cliente();
                
                cliente.setId_cliente(rs.getInt("id_cliente"));
                cliente.setNombre(rs.getString("nombre"));
                cliente.setApellido(rs.getString("apellido"));
                cliente.setCedula(rs.getString("cedula"));
                cliente.setRuc(rs.getString("ruc"));
                cliente.setLocalidad(rs.getString("localidad"));
                cliente.setDireccion(rs.getString("direccion"));
                cliente.setCelular(rs.getString("celular"));
                cliente.setTelefono(rs.getString("telefono"));
                
                usuario.add(cliente);
            }
            
        }catch(Exception e){
            System.out.println("Error en listarCliente de ClienteDAO: "+e.getMessage());
        }
        
        return usuario;
    }
    
    
    public Cliente buscarCliente(String id_cliente){
        Cliente cliente = new Cliente();
        
        try{
            PreparedStatement ps = connection.prepareStatement("select * from cliente where id_cliente=?");
            ps.setString(1, id_cliente);
            ResultSet rs = ps.executeQuery();
            
            if(rs.next()){
                cliente.setId_cliente(rs.getInt("id_cliente"));
                cliente.setNombre(rs.getString("nombre"));
                cliente.setApellido(rs.getString("apellido"));
                cliente.setCedula(rs.getString("cedula"));
                cliente.setRuc(rs.getString("ruc"));
                cliente.setLocalidad(rs.getString("localidad"));
                cliente.setDireccion(rs.getString("direccion"));
                cliente.setCelular(rs.getString("celular"));
                cliente.setTelefono(rs.getString("telefono"));
                
            }
            
        }catch(Exception e){
            System.out.println("Error en buscarCliente de ClienteDAO: "+e.getMessage());
        }
        
        return cliente;
    }
}
