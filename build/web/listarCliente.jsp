<%@page import="modelo.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<%
    HttpSession sesion = request.getSession();//obtengo la Session
    if (sesion.getAttribute("usuario") == null) {//si no hay usuario logueado redireccioneme a página especificada
        response.sendRedirect("login.jsp");
    } else {
        Usuario usu = (Usuario) sesion.getAttribute("usuario");//guardo en "usu" el objeto usuario
%>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Responsive Bootstrap Advance Admin Template</title>

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
        <!-- STYLES OF TABLE-->
        <link href='https://cdn.datatables.net/1.10.16/css/jquery.dataTables.min.css' rel='stylesheet' type='text/css' />
    </head>

    <body>

        <div id="wrapper">

            <jsp:include page="repetitivos/header.jsp" flush="true" /> <!-- Aqui llamamos al encabezado y la barra lateral-->
            <%}%><!-- FIN DEL ELSE   -->

        <div id="page-wrapper">
            <div id="page-inner">
                <div class="row">
                    <div class="col-md-12">
                        <h1 class="page-head-line"><center>Lista de Clientes</center></h1>
                    </div>
                </div>


                <!-- ROW  -->
                <div class="row">
                    <div class="col-md-12 col-sm col-xs">
                        <div class="panel panel-info">
                            <table id="tabla" class="display" cellspacing="0" width="100%">
                                <thead>
                                <tr>
                                    <th><center>Código</center></th>
                                    <th><center>Nombre</center></th>
                                    <th><center>Apellido</center></th>
                                    <th><center>C.I</center></th>
                                    <th><center>Ruc</center></th>
                                    <th><center>Ciudad</center></th>
                                    <th><center>Dirección</center></th>
                                    <th><center>Celular</center></th>
                                    <th><center>Teléfono</center></th>
                                    <th><center></center></th>
                                    <th><center></center></th>
                                </tr>
                                </thead>
                                
                                <tfoot>
                                <tr>
                                    <th><center>Código</center></th>
                                    <th><center>Nombre</center></th>
                                    <th><center>Apellido</center></th>
                                    <th><center>C.I.N</center></th>
                                    <th><center>Ruc</center></th>
                                    <th><center>Ciudad</center></th>
                                    <th><center>Dirección</center></th>
                                    <th><center>Celular</center></th>
                                    <th><center>Teléfono</center></th>
                                    <th><center></center></th>
                                    <th><center></center></th>
                                </tr>
                                </tfoot>
                                
                                <tbody>
                                    <c:forEach items="${Cliente}" var="CLIENTE">
                                        <tr>
                                            <td><c:out value="${CLIENTE.id_cliente}" /></td>
                                            <td><c:out value="${CLIENTE.nombre}" /></td>
                                            <td><c:out value="${CLIENTE.apellido}" /></td>
                                            <td><c:out value="${CLIENTE.cedula}" /></td>
                                            <td><c:out value="${CLIENTE.ruc}" /></td>
                                            <td><c:out value="${CLIENTE.localidad}" /></td>
                                            <td><c:out value="${CLIENTE.direccion}" /></td>
                                            <td><c:out value="${CLIENTE.celular}" /></td>
                                            <td><c:out value="${CLIENTE.telefono}" /></td>
                                            <td><a href="#modalEliminarCliente<c:out value="${CLIENTE.id_cliente}"/>" title="Eliminar" class="btn btn-danger" data-toggle="modal"><i class="fa fa-trash-o" aria-hidden="true"></i></a></td>
                                            <!--INICIO "MODAL" PARA BOTON DE ELIMINAR-->
                                    <div class="modal fade" id="modalEliminarCliente<c:out value="${CLIENTE.id_cliente}"/>">
                                        <div class="modal-dialog" role="document">
                                            <div class="modal-content">
                                                <!--Boton de CERRAR(X) ventana
                                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                    <span aria-hidden="true">&times;</span>
                                                </button>-->
                                                <!--Encabezado del Modal-->
                                                <div class="modal-header bg-primary">
                                                    <h2><center>Eliminar Registro</center></h2>
                                                </div>
                                                <!--Contenido dentro de la ventana-->
                                                <div class="modal-body">
                                                    <h3>Esta a punto de eliminar el registro de <b><c:out value="${CLIENTE.nombre}"/> <c:out value="${CLIENTE.apellido}"/></b>. Este proceso es irreversible.</h3>
                                                    <br>
                                                    <p><h4><b>¿Seguro que desea hacerlo?</b></h4></p>
                                                </div>
                                                <!--Pie de ventana (Botones de SI y NO)-->
                                                <div class="modal-footer">
                                                    <button type="button" class="btn btn-secundary" data-dismiss="modal">No</button>
                                                    <a href="ClienteControlador?accion=borrar&id_cliente=<c:out value="${CLIENTE.id_cliente}"/>" ><button type="button" class="btn btn-primary">Si</button></a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <td><a href="ClienteControlador?accion=editar&id_cliente=<c:out value="${CLIENTE.id_cliente}"/>" ><i class="fa fa-pencil" aria-hidden="true" title="Editar"></i></a></td>  
                                    </tr>
                                </c:forEach>

                                </tbody>
                            </table>

                        </div>
                    </div>
                </div> <!-- /. ROW  -->
            </div> <!-- /. INNER  -->
        </div><!-- /. PAGE WRAPPER  -->
        </div> <!-- /. WRAPPER  -->
       
        
        <jsp:include page="repetitivos/footer.jsp" flush="true" /> <!-- Aqui llamamos al pie de página-->
        
    
        <!-- /. FOOTER  -->
        <!-- SCRIPTS -AT THE BOTOM TO REDUCE THE LOAD TIME-->
        <!-- JQUERY SCRIPTS -->
        <script src="js/jquery-1.10.2.js"></script>
        <!-- JQUERY OF DataTable -->
        <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
        <script src="https://cdn.datatables.net/1.10.16/js/jquery.dataTables.min.js"></script>
        <!-- BOOTSTRAP SCRIPTS -->
        <script src="js/bootstrap.js"></script>
        <!-- METISMENU SCRIPTS -->
        <script src="js/jquery.metisMenu.js"></script>
           <!-- CUSTOM SCRIPTS -->
        <script src="js/custom.js"></script>
    
       <!-- DATA TABLE -->
       <script>
           $(document).ready(function(){
           $('#tabla').DataTable({
              language: {   "sProcessing":     "Procesando...",
                            "sLengthMenu":     "Mostrar _MENU_ registros",
                            "sZeroRecords":    "No se encontraron resultados",
                            "sEmptyTable":     "Ningún dato disponible en esta tabla",
                            "sInfo":           "Mostrando registros del _START_ al _END_ de un total de _TOTAL_ registros",
                            "sInfoEmpty":      "Mostrando registros del 0 al 0 de un total de 0 registros",
                            "sInfoFiltered":   "(filtrado de un total de _MAX_ registros)",
                            "sInfoPostFix":    "",
                            "sSearch":         "Buscar:",
                            "sUrl":            "",
                            "sInfoThousands":  ",",
                            "sLoadingRecords": "Cargando...",
                            "oPaginate": {
                                "sFirst":    "Primero",
                                "sLast":     "Último",
                                "sNext":     "Siguiente",
                                "sPrevious": "Anterior"
                            },
                            "oAria": {
                                "sSortAscending":  ": Activar para ordenar la columna de manera ascendente",
                                "sSortDescending": ": Activar para ordenar la columna de manera descendente"
                            }
                        }
           });
        });
       </script>
        
    </body>
</html>
