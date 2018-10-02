<%@page import="modelo.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


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
    <link href="css/coloresCuadrosPaginaInicio.css" rel="stylesheet" />
    <!-- GOOGLE FONTS-->
    <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
</head>
<body>
    <div id="wrapper">
       
           
         
         <jsp:include page="repetitivos/header.jsp" flush="true" /> 
         <%}%><!-- FIN DEL ELSE   -->                        
                                        
         
        
        <!-- /. NAV SIDE  -->
        <div id="page-wrapper">
            <div id="page-inner">
                <div class="row">
                    <div class="col-md-12">
                        <h1 class="page-head-line"><center>Página Principal</center></h1>
                        <h1 class="page-subhead-line"><center>Accesos directos a algunos módulos</center></h1>

                    </div>
                </div>
                <!-- /. ROW  -->
                <div class="row">
                    <div class="col-md-4">
                        <div class="principal-box mb-purple">
                            <a href="#">
                                <i class="fa fa-users fa-5x"></i>
                                <h5>Clientes</h5>
                            </a>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="principal-box mb-green">
                            <a href="#">
                                <i class="fa fa-dollar fa-5x"></i>
                                <h5>Facturación</h5>
                            </a>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="principal-box mb-orange">
                            <a href="#">
                                <i class="fa fa-shopping-cart fa-5x"></i>
                                <h5>Compras</h5>
                            </a>
                        </div>
                    </div>
                    <div class="col-md-4 col-md-offset-4">
                        <div class="principal-box mb-lightblue">
                            <a href="#">
                                <i class="fa fa-check-circle fa-5x"></i>
                                <h5>Auditoria</h5>
                            </a>
                        </div>
                    </div>
                    
                </div><!-- /. ROW  -->
            </div><!-- /. PAGE INNER  -->
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
    


</body>
</html>
