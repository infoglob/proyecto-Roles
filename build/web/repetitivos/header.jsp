<%@page import="modelo.Usuario"%>
<% 
    HttpSession sesion = request.getSession();//obtengo la Session
    
    Usuario usu = (Usuario)sesion.getAttribute("usuario");//guardo en "usu" el objeto usuario
%>

<!--========================================================
                      ENCABEZADO Y BARRA LATERAL 
========================================================-->
    <div> 
        <nav class="navbar navbar-default navbar-cls-top " role="navigation" style="margin-bottom: 0">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".sidebar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="index.html">D&E Informatica</a>
            </div>
            <div class="header-right">
                <span><a href="sistema.jsp" class="btn btn-primary" title="Inicio">Inicio</a></span>
                <a href="logout.jsp" class="btn btn-danger" title="Cerrar Sesión">Cerrar Sesión</a>
            </div>
            <!-- 
            <div class="header-right">
                <a href="#" class="btn btn-primary" title="Inicio">Inicio</a>
            </div>-->
            
        </nav>
        <!--========================================================
                         BARRA LATERIAL IZQUIERDA PARTE GRIS
            ========================================================-->
        <nav class="navbar-default navbar-side" role="navigation">
            <div class="sidebar-collapse">
                <ul class="nav" id="main-menu">
                    <li>
                        <div class="user-img-div">
                            <center><img src="img/13-iconoUsuarioAlingresar.png" /></center>
                            
                            <div class="inner-text" style="text-align: center"><!--NOMBRE DE USUARIO-->
                                <b style="color:#37E817">USUARIO:</b><br>
                                <% 
                                   String nombre = usu.getNombre();
                                   String apellido = usu.getApellido();
                                   
                                   if((nombre.equals("") || nombre != null) && (apellido.equals("") || apellido != null) )
                                   {out.println(nombre+" "+apellido);}
                                   //fin del ELSE
                                %>
                                
                            </div>
                        </div>

                    </li>

                    
                    <!--USUARIO-->
                    <li>
                        <a class="active-menu" href="registroUsuario.jsp"><i class="fa fa-user-plus "></i>Registrar Usuario</a>
                    </li>
                    
                    
                    <!--CLIENTE-->
                    <li>
                        <a href="#"><i class="fa fa-user"></i>Cliente <span class="fa arrow"></span></a>
                         <ul class="nav nav-second-level">
                            <li>
                                <a href="ClienteControlador?accion=REGISTRAR"><i class="fa fa-toggle-on"></i>Registrar Cliente</a>
                            </li>
                             <li>
                                <a href="ClienteControlador?accion=listar"><i class="fa fa-bell "></i>Listar Cliente </a>
                            </li>
                            <li>
                                <a href="#"><i class="fa fa-bell "></i>Cuenta Corriente</a>
                            </li>                        
                        </ul>
                    </li>
                    
                    
                    <!--ARTICULO-->
                    <li>
                        <a href="#"><i class="glyphicon glyphicon-th-large"></i>Artículos<span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li>
                                <a href="#"><i class="fa fa-coffee"></i>Registrar Artículos</a>
                            </li>
                            <li>
                                <a href="#"><i class="fa fa-flash "></i>Listar Artículos</a>
                            </li> 
                            <li>
                                <a href="#"><i class="fa fa-flash "></i>Movimiento Artículos</a>
                            </li>   
                        </ul>
                    </li>
                    
                    
                    <!--COMPRAS-->
                     <li>
                        <a href="#"><i class="glyphicon glyphicon-user"></i>Compras <span class="fa arrow"></span></a>
                         <ul class="nav nav-second-level">
                            <li>
                                <a href="#"><i class="fa fa-coffee"></i>Detalle Compras</a>
                            </li>
                            <li>
                                <a href="#"><i class="fa fa-flash "></i>Registrar Proveedor</a>
                            </li>
                            <li>
                                <a href="#"><i class="fa fa-flash "></i>Listar Proveedor</a>
                            </li>
                        </ul>
                    </li>

                    <!--Orden de Servicio-->
                     <li>
                        <a href="#"><i class="fa fa-bug "></i>Orden de Servicio<span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                           
                            <li>
                                <a href="#"><i class="fa fa-desktop "></i>Generar Orden</a>
                            </li>
                            <li>
                                <a href="#"><i class="fa fa-code "></i>Listar Ordenes</a>
                            </li>
                            <li>
                                <a href="#"><i class="fa fa-desktop "></i>Regisrar Máquinas</a>
                            </li>
                             <li>
                                <a href="#"><i class="fa fa-code "></i>Listar Máquinas</a>
                            </li>
                        </ul>
                    </li>
                    
                    
                    <!--MAQUINA-->
                    <li>
                        <a href="#"><i class="fa fa-anchor "></i>Máquina<span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                           
                            <li>
                                <a href="#"><i class="fa fa-desktop "></i>Registar Máquina</a>
                            </li>
                            <li>
                                <a href="#"><i class="fa fa-code "></i>Listar Máquina</a>
                            </li>
                        </ul>
                    </li> 
                    
                    
                    <!--TECNICO-->
                     <li>
                        <a href="#"><i class="fa fa-wrench "></i>Técnico<span class="fa arrow"></span></a>
                         <ul class="nav nav-second-level">
                           
                             <li>
                                <a href="#"><i class="fa fa-desktop "></i>Registrar Técnico</a>
                            </li>
                             <li>
                                <a href="#"><i class="fa fa-code "></i>Listar Técnicos</a>
                            </li>
                        </ul>
                    </li>
                    
                    
                    <!-- FACTURACION -->
                    <li>
                        <a href="#"><i class="fa fa-wrench "></i>Facturación<span class="fa arrow"></span></a>
                         <ul class="nav nav-second-level">
                           
                            <li>
                                <a href="#"><i class="fa fa-desktop "></i>Generar Factura</a>
                            </li>
                            <li>
                                <a href="#"><i class="fa fa-code "></i>Listar Facturas</a>
                            </li>
                            <li>
                                <a href="#"><i class="fa fa-code "></i>Generar Cobranza</a>
                            </li>
                            <li>
                                <a href="#"><i class="fa fa-code "></i>Listar Cobranzas</a>
                            </li>
                        </ul>
                    </li>
                    
                    
                     <!--AUDITORIA-->
                     <li>
                        <a href="#"><i class="fa fa-wrench "></i>Auditoría</a>
                         <ul class="nav nav-second-level">
                         </ul>
                    </li>

                </ul>
            </div>
        </nav>                        
                                
    </div>                        