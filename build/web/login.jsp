
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
      <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>login</title>

    <!-- BOOTSTRAP STYLES-->
    <link href="css/bootstrap.css" rel="stylesheet" />
    <!-- FONTAWESOME STYLES-->
    <link href="css/font-awesome.css" rel="stylesheet" />
    <!-- GOOGLE FONTS-->
    <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />

</head>
<body style="background-color: #E2E2E2;">
    <div class="container">
        <div class="row text-center " style="padding-top:100px;">
            <div class="col-md-12">
                <img src="img/12-iconoUsuario.png" />
            </div>
        </div>
         <div class="row ">
               
                <div class="col-md-4 col-md-offset-4 col-sm-6 col-sm-offset-3 col-xs-10 col-xs-offset-1">
                           
                            <div class="panel-body">
                                <form action="InicioSesion" method="post">
                                    <hr />
                                    <h3><center>Iniciar Sesión</center></h3>
                                       <br />
                                    <div class="form-group">
                                        <div class="input-group">
                                            <span class="input-group-addon"><i class="fa fa-envelope" aria-hidden="true"></i></span>
                                            <input type="text" class="form-control" id="USUARIO" placeholder="Usuario " name="usuario"
                                                   onkeyup="validacion('USUARIO');"/>
                                            <span class="help-block"></span>
                                        </div>
                                    </div>
                                       
                                    <div class="form-group">
                                        <div class="input-group">
                                            <span class="input-group-addon"><i class="fa fa-lock" aria-hidden="true"  ></i></span>
                                            <input type="password" class="form-control" id="PASS" placeholder="Contraseña" name="pass" 
                                                   onkeyup="validacion('USUARIO');"/>
                                            <span class="help-block"></span>
                                        </div>    
                                    </div>
                                       
                                    <!--          
                                    <div class="form-group">    
                                        <span class="pull-right">
                                            <a href="index.html" >Has olvidado tu contraseña?</a> 
                                        </span>
                                    </div>
                                    -->
                                    <div class="col-md-4 col-md-offset-7">  
                                        <input type="submit" class="btn btn-primary" value="Iniciar Sesión"/>
                                        <hr />
                                    </div>
                                    
                                    </form>
                            </div>
                           
                </div>
                
                
        </div>
    </div>

</body>
</html>
