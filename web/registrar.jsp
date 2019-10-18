<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <title>Crear Usuario</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="./css/misEstilos.css" rel="stylesheet">
        <script language="javascript" type="text/javascript" src="ValidarCliente.js"></script>
         <link href="https://fonts.googleapis.com/css?family=Mukta+Mahee:200,300,400|Playfair+Display:400,700" rel="stylesheet">
        <link rel="stylesheet" href="css/bootstrap.css">
        <link rel="stylesheet" href="css/animate.css">
        <link rel="stylesheet" href="css/owl.carousel.min.css">
        <link rel="stylesheet" href="css/aos.css">
        <link rel="stylesheet" href="fonts/ionicons/css/ionicons.min.css">
        <link rel="stylesheet" href="fonts/fontawesome/css/font-awesome.min.css">
    <!-- Theme Style -->
        <link rel="stylesheet" href="css/style.css">
        <script language="javascript" type="text/javascript" src="ValidarCliente.js"></script>
    </head>
<body class="body">
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
                        <li><form action="listarInmuebles" method="post"><button class="button1" type="submit"><a>Lista de Inmuebles</a></button></form></li>
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
            <p class="sub-heading mb-5" data-aos="fade-up" data-aos-delay="100">PERFIL DE USUARIO</p>
            </div>
        </div>
        <a href="#next-section" class="smoothscroll scroll-down">Desliza</a>
      </div>
    </section>
    <!-- END section -->

    <section class="section visit-section" id="next-section">
        <form action="registrarPersona" method="post">
            <table class="table1"><tr><td>
            <div >
                <p class="form"><select class="caja" name="tdoc" id="tdoc">
                    <option>Seleccionar tipo de documento</option>
                    <option value="1">Cédula de Ciudadanía</option> 
                    <option value="2">Cédula de Extranjería</option> 
                    <option value="3">NIT</option> 
                    <option value="4">RUT</option> 
                    </optgroup></select>DOCUMENTO:<input class="caja" type="text" name="id" id="ced"></p></td></tr>
                    <tr><td><p class="form">NOMBRE:<input class="caja" type="text" name="nom" id="name">
                    APELLIDO:<input class="caja" type="text" name="ap" id="lastname"></p></td></tr>
                <tr><td><p class="form">CONTRASEÑA:<input class="caja" type="text" name="pass" id="pass"></p></tr></td>
                <tr><td><p class="form">CORREO:<input class="caja" type="text" name="cor" id="mail">
                CELULAR:<input class="caja" type="text" name="cel" id="tel"></p></tr></td>
                <tr><td><input class="button" type="submit" id="submit" value="REGISTRAR" onclick="crear()"/></p></tr></td>
                            <script>
                                function crear(){
                                    alert("Usuario Creado")
                                }
                            </script>
                </table>
            </div> 
        </form>
     
    </section>
    
    <section class="section visit-section" id="next-section1">
        <form action="eliminarPersona" method="post" onsubmit="return validarModificar();">
            <table class="table1"><tr><td colspan="2"><strong><p>ELIMINAR USUARIO</p></strong></td></tr>
            <tr>
                    <td>
                <p class="form"><select class="caja" name="tdoc" id="tdoc">
                    <option>Seleccionar tipo de documento</option>
                    <option value="1">Cédula de Ciudadanía</option> 
                    <option value="2">Cédula de Extranjería</option> 
                    <option value="3">NIT</option> 
                    <option value="4">RUT</option> 
                    </optgroup></select>DOCUMENTO:<input class="caja" type="text" name="id" id="ced"></p></td></tr>
            <tr>
                        <td colspan="2">
                            <input class="button" type="submit" id="submit" onclick="borrar()" value="ELIMINAR"/> 
                            <script>
                                function borrar(){
                                    alert("Usuario Borrado")
                                }
                            </script>
                        </td>

                    </tr>
                </table>  
            </form>
     
    </section>
    
    <section class="section visit-section" id="next-section2">
      <form action="buscarPersona" method="post" onsubmit="return validarModificar();">
                <table class="table1" id="modificarDatos">
                    <tr>
                        <td colspan="2"><strong><p>EDITAR USUARIO</p></strong></td>
                    </tr>
                    <tr>
                    <td><p class="form"><select class="caja" name="tdoc" id="tdoc">
                    <option>Seleccionar tipo de documento</option>
                    <option value="1">Cédula de Ciudadanía</option> 
                    <option value="2">Cédula de Extranjería</option> 
                    <option value="3">NIT</option> 
                    <option value="4">RUT</option> 
                    </optgroup></select>DOCUMENTO:<input class="caja" type="text" name="id" id="ced"></p>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <input class="button" type="submit" id="submit" onclick="return valiedi();" value="BUSCAR"/> 
                        </td>
                    </tr>
                </table>
            </form>
     
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
