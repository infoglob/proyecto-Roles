
package controlador;

import dao.ClienteDAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.Cliente;


@WebServlet(name = "ClienteControlador", urlPatterns = {"/ClienteControlador"})
public class ClienteControlador extends HttpServlet {
    private static String REGISTRAR_EDITAR = "/registroCliente.jsp";
    private static String LISTAR_CLIENTE = "listarCliente.jsp";
    private ClienteDAO dao ;
    
    public ClienteControlador(){
        super();
        dao = new ClienteDAO();
    }
    
     
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
       
    }

    
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String enviar = "";
        String accion = request.getParameter("accion");
        
        if(accion.equalsIgnoreCase("borrar")){ //"equalsIgnoreCase" Compara la cadena de texto contra un objeto ignorando mayúsculas y minúsculas.
            String id_cliente = request.getParameter("id_cliente");
            dao.eliminarCliente(id_cliente);
            enviar = "ClienteControlador?accion=listar";
            request.setAttribute("cliente", dao.listarCliente());
        }else if(accion.equalsIgnoreCase("editar")){
            enviar = REGISTRAR_EDITAR;
            String id_cliente = request.getParameter("id_cliente");
            Cliente cliente = dao.buscarCliente(id_cliente);
            request.setAttribute("Cliente", cliente);
        }else if(accion.equalsIgnoreCase("listar")){
            enviar = LISTAR_CLIENTE;
            request.setAttribute("Cliente", dao.listarCliente());
        }else{
            enviar = REGISTRAR_EDITAR;
        }
        
        RequestDispatcher vista = request.getRequestDispatcher(enviar);
        vista.forward(request, response);
        
    }

    
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        Cliente cliente = new Cliente();
        
        cliente.setNombre(request.getParameter("nombre"));
        cliente.setApellido(request.getParameter("apellido"));
        cliente.setCedula(request.getParameter("cedula"));
        cliente.setRuc(request.getParameter("ruc"));
        cliente.setLocalidad(request.getParameter("localidad"));
        cliente.setDireccion(request.getParameter("direccion"));
        cliente.setCelular(request.getParameter("celular"));
        cliente.setTelefono(request.getParameter("telefono"));
        
        String id = request.getParameter("id_cliente");
        
        if(id == null || id.isEmpty()){ //"isEmpty": Método que devuelve true en el caso de que el tamaño de la cadena sera 0. En otro caso devuelve false.
            dao.agregarCliente(cliente);
        }else{
            cliente.setId_cliente(Integer.valueOf(request.getParameter("id_cliente")));
            dao.actualizarCliente(cliente);
        }
        
        RequestDispatcher vista = request.getRequestDispatcher(LISTAR_CLIENTE);
        request.setAttribute("Cliente", dao.listarCliente());
        vista.forward(request, response);
        
    }

    
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
