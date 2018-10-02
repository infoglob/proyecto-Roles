
package controlador;

import dao.RegistroUsuarioDAO;
import dao.RolesDAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.Roles;



@WebServlet(name = "RegistroUsuarioControlador", urlPatterns = {"/RegistroUsuarioControlador"})
public class RegistroUsuarioControlador extends HttpServlet {

    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
    }

    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
        
        RolesDAO dao = new RolesDAO(); //Creamos el objeto de rolesDAO
        
        String nombre = request.getParameter("nombre");
        String apellido = request.getParameter("apellido");
        String usuario = request.getParameter("usuario");
        String contra = request.getParameter("pass");
        String rol = request.getParameter("rolAsignado");
        
        System.out.println("El numero de rol recibido es: "+rol);
        
        Roles ROL = dao.buscarIdRol(rol);//pasamos como parametro el "rol" recibido del formulario
                                         //para buscar su ID porque del formulario solo recibimos su nombre
                                         
        //String idRolObtenido = ROL.toString();
                                         
        RegistroUsuarioDAO comprobar = new RegistroUsuarioDAO(); //creamos el objeto de "RegistroUsuarioDAO"
        
        
        if(comprobar.registrarUsuario(ROL, nombre, apellido, usuario, contra)){

            response.sendRedirect("login.jsp"); //en caso de que entre por el si se le redirecciona para que inicie sesion
        }else{
            response.sendRedirect("registro.jsp");//si no se cumple entonces se mantiene en la misma página
        }
        
    }

    
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
