/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.sql.Connection;
import conexion.ConexionBD;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import modelo.Usuario;

/**
 *
 * @author Diego
 */
public class UsuarioDAO {
    private Connection connection;
    
    public UsuarioDAO(){
        connection = ConexionBD.getConnection();//Realizamos la conexion y guardamos en la variable connection
    }
    
    public Usuario buscarNombreApellido(String usuario){
        Usuario usu = new Usuario();
        try{
            PreparedStatement ps = connection.prepareStatement("SELECT* FROM usuarios WHERE usuario = ?");
            ps.setString(1, usuario);
            ResultSet rs = ps.executeQuery();
            
            if(rs.next()){
                usu.setId_usuario(rs.getInt("id_usuario"));
                usu.setNombre(rs.getString("nombre"));
                usu.setApellido(rs.getString("apellido"));
                usu.setUsuario(rs.getString("usuario"));
                usu.setPass(rs.getString("pass"));
            }
            
        } catch(Exception e){
            System.out.println("Error en buscarNombreApellido de la Clase UsuarioDAO: "+e.getMessage());
        }
        
        return usu;
    }
    
}
