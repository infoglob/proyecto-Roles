<%-- 
    Document   : index
    Created on : 13-ago-2018, 19:01:59
    Author     : Diego
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <!-- Basic Page Needs
    ================================================== -->
    <meta charset="utf-8">
    <!--[if IE]><meta http-equiv="x-ua-compatible" content="IE=9" /><![endif]-->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>home</title>
    <meta name="description" content="Your Description Here">
    <meta name="keywords" content="bootstrap themes, portfolio, responsive theme">
    
    <!-- Favicons
    ================================================== -->
    <link rel="shortcut icon" href="img/favicon.ico" type="image/x-icon">
    <link rel="apple-touch-icon" href="img/apple-touch-icon.png">
    <link rel="apple-touch-icon" sizes="72x72" href="img/apple-touch-icon-72x72.png">
    <link rel="apple-touch-icon" sizes="114x114" href="img/apple-touch-icon-114x114.png">

    <!-- Bootstrap -->
    <link rel="stylesheet" type="text/css"  href="css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="fonts/font-awesome/css/font-awesome.css">

    <!-- Stylesheet
    ================================================== -->
    <link rel="stylesheet" type="text/css"  href="css/style.css">
    <link rel="stylesheet" type="text/css" href="css/responsive.css">

    <script type="text/javascript" src="js/modernizr.custom.js"></script>

    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.2.0/css/all.css" integrity="sha384-hWVjflwFxL6sNzntih27bfxkr27PmbbK/iSvJ+a4+0owXq79v+lsFkW54bOGbiDQ" crossorigin="anonymous">
    <link href='http://fonts.googleapis.com/css?family=Raleway:500,600,700,100,800,900,400,200,300' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Playball' rel='stylesheet' type='text/css'>


    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>
  <body>
      
    <div id="tf-home">
        <div class="overlay">
            <div id="sticky-anchor"></div>
            <nav id="tf-menu" class="navbar navbar-default">
                <div class="container">
                    <!-- Brand and toggle get grouped for better mobile display -->
                    <div class="navbar-header">
                      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                      </button>
                      <a href="index.html">
                          <img src="img/11.png" class="img-responsive">
                      </a>
                    </div>

                    <!-- Collect the nav links, forms, and other content for toggling -->
                    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                      <ul class="nav navbar-nav navbar-right">
                        <li><a href="#tf-home">Inicio</a></li>
                        <li><a href="#tf-service">Servicios</a></li>
                        <li><a href="#tf-portfolio">Reparaciones</a></li>
                        <li><a href="#tf-about">Nosotros</a></li>
                        <li><a href="#tf-contact">Contacto</a></li>
                        <li><a href="login.jsp">Iniciar Sesión</a></li> 
                      </ul>
                    </div><!-- /.navbar-collapse -->
                </div><!-- /.container-fluid -->
            </nav>

            <div class="container">
                <div class="content">
                    <h1>Bienvenido</h1>
                    <h3>Aquí podras encontrar todos los servicios que realizamos,<br>
                        para consultas no dudes en contactarnos</h3>
                    <br>
                    <a href="#tf-contact" class="btn btn-primary my-btn">Contáctanos</a>
                    <a href="#tf-portfolio" class="btn btn-primary my-btn2">Algunos trabajos</a>
                </div>
            </div>
        </div>
    </div>

    <div id="tf-service">
        <div class="container">

            <div class="col-md-4">

                <div class="media">
                  <div class="media-left media-middle">
                    <i class="fa fa-gears"></i>
                  </div>
                  <div class="media-body">
                    <h4 class="media-heading">Computadoras, notebooks e impresoras</h4>
                    <p>Reparamos computadoras de escritorio, notebooks, e impresoras.
                        Le damos la solución que usted necesita con un alto interes en
                        su satisfacción.</p>
                  </div>
                </div>

            </div>

            <div class="col-md-4">

                <div class="media">
                  <div class="media-left media-middle">
                    <i class="fas fa-handshake"></i>
                  </div>
                  <div class="media-body">
                    <h4 class="media-heading">Buen trato con nuestros clientes</h4>
                    <p>Cumplimos con nuestros clientes dandoles el trato que se merecen
                        además siempre tratamos de entregar todos los trabajos en la 
                        fecha que fue establecida con el cliente.</p>
                  </div>
                </div>

            </div>

            <div class="col-md-4">

                <div class="media">
                  <div class="media-left media-middle">
                    <i class="fas fa-coins"></i>
                  </div>
                  <div class="media-body">
                    <h4 class="media-heading">El mejor servicio a un muy buen costo</h4>
                    <p>Damos lo mejor de nosotros para que usted quede satisfecho con el
                        servicio realizado, ademas contamos con uno de los mejores costos
                        del mercado en cuanto a servicio técnico.</p>
                  </div>
                </div>

            </div>
            
        </div>
    </div>

    <div id="tf-portfolio">
        <div class="container">
            <div class="section-title">
                <h3>Reparación de notebooks, computadoras e impresoras.</h3>
                <hr>
            </div>

            <div class="space"></div>

            <div class="row">
                <div class="col-md-4">
                    <img src="img/2.jpg" class="img-responsive">
                </div>

                <div class="col-md-4">
                    <img src="img/3.jpg" class="img-responsive">
                </div>

                <div class="col-md-4">
                    <img src="img/4.jpg" class="img-responsive">
                </div>
            </div>

            <div class="row toppadding">
                <div class="col-md-4">
                    <img src="img/5.jpg" class="img-responsive">
                </div>

                <div class="col-md-4">
                    <img src="img/6.jpg" class="img-responsive">
                </div>

                <div class="col-md-4">
                    <img src="img/7.jpg" class="img-responsive">
                </div>
            </div>

        </div>
    </div>

    <div id="tf-about">
        <div class="overlay">
            <div class="container">
                <div class="row">
                    <div class="col-md-6 col-md-offset-6">
                        <h3>Acerca de Nosotros</h3>
                        <br>
                        <p>Somos una Micro Empresa encargada de prestar soluciones informáticas apoyadas en tecnologías en constante evolución, en todas las áreas demandantes de desarrollo informático, buscando permanentemente la diferenciación por la calidad del servicio y la satisfacción
                        del cliente.</p>
                        <p>
                            Pretendemos desarrollar nuestros recursos humanos para asegurar una cultura institucional basada en la ética, la innovación y la búsqueda permanente de la excelencia, para que estas sean las bases para un crecimiento sustentable que aseguren el futuro de nuestra Micro Empresa.
                        </p>
                        
                        <br>
                        <a href="#tf-why-me" class="btn btn-primary my-btn dark">¿Por qué contratarnos?</a>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div id="tf-why-me">
        <div class="overlay">
            <div class="container">
                <div class="row">
                    <div class="col-md-6">
                        <h3>¿Por qué contratarnos?</h3>
                        <br>
                        <ul class="list-inline why-me">
                            <li>
                                <h4>Servicio Técnico Especializado y de Confianza</h4>
                                <p>Contamos con técnicos informáticos altamente capacitados
                                para en el área. <p>Además usted puede confiar en nuestro 
                                equipo que se toma muy enserio su trabajo.</p></p>
                            </li>
                            <li>
                                <h4>Lo mejor en Atención al Cliente</h4>
                                <p>Nuestro equipo de atención al cliente cuenta con una alta
                                especialización en el tema, por lo que usted puede estar seguro
                                que será atendido de la mejor manera.</p>
                            </li>
                            <li>
                                <h4>Garantía en todos nuestros servicios</h4>
                                <p>Todos nuestros servicios técnicos cuentan con garantía
                                de hasta un mes.</p>
                            </li>
                        </ul>
                        <a href="#tf-contact" class="btn btn-primary my-btn dark">Contáctenos</a>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div id="tf-contact">
        <div class="container">
            <div class="section-title">
                <h3>Contáctenos</h3>
                <p>Por favor ingrese sus datos correspondientes y déjenos su mensaje.
                    Nos pondremos en contacto con usted en breve.</p>
                <hr>
            </div>

            <div class="space"></div>

            <div class="row">
                <div class="col-md-6 col-md-offset-3">
                    <form id="contact">
                      <div class="form-group">
                        <input type="email" class="form-control" id="exampleInputEmail1" placeholder="Nombre(s)">
                      </div>
                      <div class="form-group">
                        <input type="email" class="form-control" id="exampleInputPassword1" placeholder="Apellido(s)">
                      </div>
                      <div class="form-group">
                        <input type="email" class="form-control" id="exampleInputEmail1" placeholder="E-mail">
                      </div>
                      <div class="form-group">
                        <textarea class="form-control" rows="4" placeholder="Mensaje"></textarea>
                      </div>
                      <button type="submit" class="btn btn-primary my-btn dark">Enviar</button>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <nav id="tf-footer">
        <div class="container">
             <div class="pull-left">
                <p>© 2018 Copyright DyE Informática. All Rights reserved.</p>
            </div>
            <div class="pull-right"> 
                <ul class="social-media list-inline">
                    <li><a href="#"><span class="fab fa-facebook-f"></span></a></li>
                    <li><a href="#"><span class="fab fa-twitter"></span></a></li>
                    <li><a href="#"><span class="fab fa-instagram"></span></a></li>
                    <li><a href="#"><span class="fab fa-google-plus-g"></span></a></li>
                </ul>
            </div>
        </div>
    </nav>
   

    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <script type="text/javascript" src="js/jquery.1.11.1.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script type="text/javascript" src="js/bootstrap.js"></script>

    <!-- Javascripts
    ================================================== -->
    <script type="text/javascript" src="js/main.js"></script>

  </body>
</html>