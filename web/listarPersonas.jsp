<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>INGENIERIA WEB</title>
        <script language="javascript" type="text/javascript" src="ValidarCliente.js"></script>
        <link href="./css/misEstilos.css" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Mukta+Mahee:200,300,400|Playfair+Display:400,700" rel="stylesheet">
        <link rel="stylesheet" href="css/bootstrap.css">
        <link rel="stylesheet" href="css/animate.css">
        <link rel="stylesheet" href="css/owl.carousel.min.css">
        <link rel="stylesheet" href="css/aos.css">
        <link rel="stylesheet" href="fonts/ionicons/css/ionicons.min.css">
        <link rel="stylesheet" href="fonts/fontawesome/css/font-awesome.min.css">
    <!-- Theme Style -->
        <link rel="stylesheet" href="css/style.css">
    </head>   
<body class="body2">
    <header class="site-header">
      <div class="container-fluid">
        <div class="row">
            <div class="col-4 site-logo" data-aos="fade"><a style="color: orange" href="index.html"><img src="https://upload.wikimedia.org/wikipedia/commons/thumb/4/47/University_of_Los_Andes_logo.svg/1200px-University_of_Los_Andes_logo.svg.png" height="100">Tu Mejor Agente</a></div>
          <div class="col-8">
            <div class="site-menu-toggle js-site-menu-toggle"  data-aos="fade">
              <span></span>
              <span></span>
              <span></span>
            </div>
            <!-- END menu-toggle -->

            <div class="site-navbar js-site-navbar">
              <nav role="navigation">
                <div class="container">
                  <div class="row full-height align-items-center">
                    <div class="col-md-6">
                      <ul class="list-unstyled menu">
                        <li class="active"><a href="index.html">Inicio</a></li>
                        <li><a href="about.html">Nosotros</a></li>
                        <li><a href="blog.html">Lista de Inmuebles</a></li>
                        <li><a href="contact.html">Contactenos</a></li>
                      </ul>
                    </div>
                    <div class="col-md-6 extra-info">
                      <div class="row">
                        <div class="col-md-6 mb-5">
                          <h3>Informacion de Contacto</h3>
                          <p>Avenida Caracas # 46 -72 <br> Bogotá,Colombia</p>
                          <p>falmanzar65@ucatolica.edu.co</p>
                          <p>(+57) 3175521348</p>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </nav>
            </div>
          </div>
        </div>
      </div>
    </header>
    <!-- END head -->

    <section class="site-hero overlay" style="background-image: url(img/hero_1.jpg)">
      <div class="container">
        <div class="row site-hero-inner align-items-center">
          <div class="col-md-7 text-left ml-auto">
            <h1 class="heading" data-aos="fade-up" style="color: orange">Inmobiliaria InAlpes</h1>
            <p class="sub-heading mb-5" data-aos="fade-up" data-aos-delay="100">LISTA DE CLIENTES</p>
            </div>
        </div>
        <a href="#next-section" class="smoothscroll scroll-down">Desliza</a>
      </div>
    </section>
    <!-- END section -->

    <section class="section visit-section" id="next-section">
                <div id="content">
            <% ResultSet resul= (ResultSet)request.getAttribute("lista");%>
            <table class="table1"id="listaUsuarios">
                <tr>
                    <th id="ele"><p class="p1">No. DOCUMENTO</p></th>
                    <th id="ele"><p class="p1">TIPO DOCUMENTO</p></th>
                    <th id="ele"><p class="p1">NOMBRE</p></th>
                    <th id="ele"><p class="p1">APELLIDO</p></th>
                    <th id="ele"><p class="p1">CORREO</p></th>
                    <th id="ele"><p class="p1">CELULAR</p></th>
                    <th id="ele"><p class="p1">CONTRASEÑA</p></th>
                </tr>
                <% while(resul.next()){ %>
                <tr>
                    <td id="ele"><p class="p1"><%= resul.getInt("documento") %></p></td>
                    <% String a="";
                    if(resul.getString("tdocumento").equals("1")){
                       a="Cedula de ciudadania";
                    }else if(resul.getString("tdocumento").equals("2")){
                         a="Cedula de Extranjeria";
                    }else if(resul.getString("tdocumento").equals("3")){
                         a="NIT";
                    }else if(resul.getString("tdocumento").equals("4")){
                        a="RUT";
                    } %>
                    <td id="ele"><p class="p1"><%= a %></p></td>
                    <td id="ele"><p class="p1"><%= resul.getString("nombre") %></p></td>
                    <td id="ele"><p class="p1"><%= resul.getString("apellido") %></p></td>
                    <td id="ele"><p class="p1"><%= resul.getString("correo") %></p></td>
                    <td id="ele"><p class="p1"><%= resul.getLong("celular") %></p></td>
                    <td id="ele"><p class="p1"><%= resul.getString("contraseña") %></p></td>
               </tr>
                <% } %>
            </table>
        </div>
    </section>
    <!-- END section -->
    <footer class="section footer-section bg-primary">
      <div class="container" >
        <div class="row mb-4">
          <div class="col-md-3 mb-5">
            <ul class="list-unstyled link">
              <li><a href="#">Acerca de Nosotros</a></li>
              <li><a href="#">Politica de Privacidad</a></li>
              <li><a href="#">Ayuda</a></li>
            </ul>
          </div>
          <div class="col-md-3 mb-5  contact-info">
            <p><span class="d-block">Dirección:</span> <span> Avenida Caracas # 46 -72 , Bogotá, Colombia</span></p>
            <p><span class="d-block">Telefono:</span> <span> (+57) 3175521348</span></p>
            <p><span class="d-block">Email:</span> <span> falmanzar65@ucatolica.edu.co</span></p>
          </div>
        </div>
      </div>
    </footer> 
    <script src="js/jquery-3.2.1.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/jquery.waypoints.min.js"></script>
    <script src="js/aos.js"></script>
    <script src="js/main.js"></script>
  </body>
</html>
