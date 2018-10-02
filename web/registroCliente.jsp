<%@page import="modelo.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>


<% 
    HttpSession sesion = request.getSession();//obtengo la Session
    if(sesion.getAttribute("usuario")==null){//si no hay usuario logueado redireccioneme a pagina especificada
        response.sendRedirect("login.jsp");
    }else{
       Usuario usu = (Usuario)sesion.getAttribute("usuario");//guardo en "usu" el objeto usuario
%>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Inicio Sistema</title>

    <!-- BOOTSTRAP STYLES-->
    <link href="css/bootstrap.css" rel="stylesheet" />
    <!-- FONTAWESOME STYLES-->
    <link href="fonts/font-awesome/css/font-awesome.css" rel="stylesheet" />
       <!--CUSTOM BASIC STYLES-->
    <link href="css/basic.css" rel="stylesheet" />
    <!--CUSTOM MAIN STYLES-->
    <link href="css/custom.css" rel="stylesheet" />
    <!-- GOOGLE FONTS-->
    <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
</head>
<body>
    <div id="wrapper">
       
                    
         <jsp:include page="repetitivos/header.jsp" flush="true" /> <!-- Aqui llamamos al encabezado y la barra lateral-->
         <%}%><!-- FIN DEL ELSE   -->   
         
         
         <div id="page-wrapper">
         <div id="page-inner">
                <div class="row">
                    <div class="col-md-12">
            <% String accion = request.getParameter("accion");
                System.out.println(accion);
            %>
             <% if (accion.equalsIgnoreCase("editar")) {%>
            <h1 class="page-head-line"><center>Actualizar Cliente</center></h1> 
             <%} else {%>
              <h1 class="page-head-line"><center>Registrar Cliente</center></h1>
              <%}%> 
                    </div>
                </div>
                <!-- ROW  -->
                <div class="row">
                    <div class="col-md-12 col-sm col-xs">
                        <div class="panel panel-info">
                            <div class="panel-heading">
                                 Ingresar Datos:
                            </div>
                            
                            
                            <div class="panel-body">
                                                           <!-- /class="needs-validation"/ es para la validación  -->
                                <form role="form" method="POST" action='ClienteControlador' >
                                   
                                   <!-- Mensaje superior en caso de error o éxito al rellenar los campos-->
                                   <div class="form-group">
                                        <div class="alert alert-danger text-center" style="display:none;" id="error">
                                            <strong>Adventencia: </strong>Debe completar todos los campos
                                        </div>
                                        <div class="alert alert-success text-center" style="display:none;" id="exito">
                                            <strong>Felicidades: </strong>Su registro ha sido guardado
                                        </div>  
                                    </div> 
                                    <!-- FIN DEL MENSAJE DE ERROR O EXITO-->
                                    
                                    
                                    <!--FILA 0-->
                                    <div class="row">
                                        <div class="col-md-4 col-md-offset-4">
                                            <% if (accion.equalsIgnoreCase("editar")) {%>           
                                            <label>Código del Cliente</label>
                                            <input type="text" class="form-control" placeholder="Código" name="id_cliente" value="<c:out value="${Cliente.id_cliente}"/>" readonly="readonly">
                                                <%}%>
                                        </div>
                                    </div>    
                                    <br>


                                    <!--FILA 1-->
                                    <div class="row">
                                        <div class="form-group">
                                            <div class="col-md-4 col-md-offset-1" > <!-- "col-md-offset-1" CENTRA el cuadro de texto-->
                                               <label for="nombre">Nombre(s)</label>   <!-- La variable "Cliente de Cliente.nombre viene del ClienteControlador especificamente de "request.setAttribute("Cliente", cliente)"-->
                                               <input type="text" class="form-control" id="nombre" placeholder="Nombre" name="nombre" 
                                                      onkeyup="validacion('nombre');" value="<c:out value="${Cliente.nombre}"/>" > 
                                               <span class="help-block"></span> 
                                            </div><!--El evento "onkeyup" ocurre cuando el usuario suelta una tecla (en el teclado).-->     
                                        </div>
                                        
                                        <div class="form-group">
                                            <div class="col-md-4 col-md-offset-1" >
                                                <label for="apellido">Apellido(s)</label>
                                                <input type="text" class="form-control"  id="apellido" placeholder="Apellido" name="apellido"
                                                       onkeyup="validacion('apellido');" value="<c:out value="${Cliente.apellido}"/>" > 
                                                <span class="help-block"></span>
                                            </div>
                                        </div>
                                    </div> 
                                    <br>

                                    <!--FILA 2-->
                                    <div class="row">
                                        <div class="form-group">
                                            <div class="col-md-4 col-md-offset-1" >
                                                <label for="cedula">Nº de Cédula o D.N.I</label>
                                                <input type="text" class="form-control" id="cedula" placeholder="Nº Cédula" name="cedula" 
                                                       onkeyup="validacion('cedula');" value="<c:out value="${Cliente.cedula}"/>" >    
                                                <span class="help-block"></span>
                                            </div>
                                        </div>
                                        
                                        <div class="form-group">
                                            <div class="col-md-4 col-md-offset-1" >
                                                <label for="ruc">Nº de Ruc</label>
                                                <input type="text" class="form-control" id="ruc" placeholder="Ruc" name="ruc"
                                                       onkeyup="validacion('ruc');" value="<c:out value="${Cliente.ruc}"/>" >   
                                                <span class="help-block"></span>
                                            </div>
                                        </div> 
                                    </div><!-- FIN ROW-->
                                    <br>

                                    <!--FILA 3-->
                                    <div class="row">
                                        <div class="form-group">
                                            <div class="col-md-4 col-md-offset-1" >
                                                <label for="localidad">Localidad</label>
                                                <input type="text" class="form-control" id="localidad" placeholder="Localidad" name="localidad"
                                                       onkeyup="validacion('localidad');" value="<c:out value="${Cliente.localidad}"/>" > 
                                                <span class="help-block"></span>
                                            </div>
                                        </div>
                                        <div class="form-group">    
                                            <div class="col-md-4 col-md-offset-1" >
                                                <label for="direccion">Dirección</label>
                                                <input type="text" class="form-control" id="direccion" placeholder="Dirección" name="direccion"
                                                       onkeyup="validacion('direccion');" value="<c:out value="${Cliente.direccion}"/>" >
                                                <span class="help-block"></span>
                                            </div>
                                        </div>
                                    </div><!-- FIN ROW--> 
                                    <br>

                                    <!--FILA 4-->
                                    <div class="row">
                                        <div class="form-group">
                                            <div class="col-md-4 col-md-offset-1" >
                                                <label for="celular">Nº de Celular</label>
                                                <input type="text" class="form-control" id="celular" placeholder="Celular" name="celular"
                                                       onkeyup="validacion('celular');" value="<c:out value="${Cliente.celular}"/>" >
                                                <span class="help-block"></span>
                                            </div>
                                        </div>
                                        
                                        <div class="form-group">
                                            <div class="col-md-4 col-md-offset-1" >
                                                <label for="telefono">Nº de Teléfono</label>
                                                <input type="text" class="form-control" id="telefono" placeholder="Teléfono" name="telefono" 
                                                       onkeyup="validacion('telefono');" value="<c:out value="${Cliente.telefono}"/>" >   
                                                <span class="help-block"></span>
                                            </div>
                                        </div>
                                    </div><!-- FIN ROW-->   
                                    <br>
                                    <br>

                                     <!--FILA 5--> <!--BOTON PARA ENVIAR EL FORMULARIO AL SERVIDOR-->
                                     <div class="col-md-4 col-md-offset-8"> 
                                         <button type="submit" id="boton" class="btn btn-info"
                                                 onclick='enviarForm();'>Confirmar Registro</button>
                                    </div>
                                </form>         
                                    
                            </div> <!-- /PANEL BODY -->
                        </div> <!-- /PANEL-INFO --> 
                    </div> <!-- /REGILLA --> 
                </div> <!-- /ROW --> 
            </div><!-- /PAGE INNER  -->
        </div><!-- /. PAGE WRAPPER  -->
    </div><!-- /. WRAPPER  -->
    

    <jsp:include page="repetitivos/footer.jsp" flush="true" /> <!-- Aqui llamamos al pie de página-->
    
    
    <!-- /. FOOTER  -->
    <!-- SCRIPTS -AT THE BOTOM TO REDUCE THE LOAD TIME-->
    <!-- JQUERY SCRIPTS -->
    <script src="js/jquery-1.10.2.js"></script>
    <!-- BOOTSTRAP SCRIPTS -->
    <script src="js/bootstrap.js"></script>
    <!-- METISMENU SCRIPTS -->
    <script src="js/jquery.metisMenu.js"></script>
       <!-- CUSTOM SCRIPTS -->
    <script src="js/custom.js"></script>
    <!-- Anclamos la carpeta Validación y el archivo correspondiente a este formulario -->
    <script src="validaciones/VALclientes.js"></script>
    


</body>
</html>
