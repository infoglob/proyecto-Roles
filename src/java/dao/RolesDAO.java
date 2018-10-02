
package dao;

import conexion.ConexionBD;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import modelo.Roles;


public class RolesDAO {
    private Connection connection;
    
    public RolesDAO(){
        connection = ConexionBD.getConnection();
    }
    
    public List<Roles> listarRoles(){
        List<Roles> roles = new ArrayList<Roles>();
        
        try{
            Statement st = connection.createStatement();
            ResultSet rs = st.executeQuery("select * from roles");
            
            while(rs.next()){
                Roles rol = new Roles();
                
                rol.setId_rol(rs.getInt("id_rol"));
                rol.setDescripcion(rs.getString("descripcion"));
                
                roles.add(rol);
            }
            
        }catch(Exception e){
            System.out.println("Error en listarRoles de RolesDAO: "+e.getMessage());
        }
        
        return roles;
    }
    
    
    public Roles buscarIdRol(String rolAsignado){
        Roles rol = new Roles();
        try{
            PreparedStatement ps = connection.prepareStatement("SELECT* FROM roles WHERE descripcion = ?");
            ps.setString(1, rolAsignado);
            ResultSet rs = ps.executeQuery();
            
            if(rs.next()){
                rol.setId_rol(rs.getInt("id_rol")); //Solo vamos a retornar el id del rol recibido como argumento
                //rol.setDescripcion(rs.getString("descripcion"));
            }
            
        } catch(SQLException e){
            System.out.println("Error en buscarIdRol de la Clase RolesDAO: "+e);
        }
        
        return rol;
    }
    
}
