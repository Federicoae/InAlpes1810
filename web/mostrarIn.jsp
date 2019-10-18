<%@page import="controlador.inmueble"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>GUARDAR CAMBIOS</title>
        <!--ESTILO DE BOOSTRAP-->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css" integrity="sha384-9gVQ4dYFwwWSjIDZnLEWnxCjeSWFphJiwGPXr1jddIhOegiu1FwO5qRGvFXOdJZ4" crossorigin="anonymous">
        <!--ESTILO PROPIO-->
        <link rel="stylesheet" href="estilo.css">
        <script defer src="https://use.fontawesome.com/releases/v5.0.13/js/solid.js" integrity="sha384-tzzSw1/Vo+0N5UhStP3bvwWPq+uvzCMfrN1fEFe+xBmv1C/AtVX5K0uZtmcHitFZ" crossorigin="anonymous"></script>
        <script defer src="https://use.fontawesome.com/releases/v5.0.13/js/fontawesome.js" integrity="sha384-6OIrr52G08NpOFSZdxxz1xdNSndlD4vdcf/q2myIUVO0VsqaGHJsB0RaBE01VTOY" crossorigin="anonymous"></script>
        <link rel="stylesheet" type="text/css" href="tcal.css" />
        <link href="./css/misEstilos.css" rel="stylesheet">
        <script type="text/javascript" src="tcal.js"></script>
    </head>
    <body class="body2">
        <%inmueble perso = (inmueble) request.getAttribute("usuario");%>
        <div id="content">
            <form action="modificarInmueble" method="post">         
            <table class="table1"><tr><td>
            <div >
                <p class="form"><select class="caja" name="ubi" id="ubi">
                    <option>Seleccionar ciudad</option>
                    <option value="1">Bogota</option> 
                    <option value="2">Cali</option> 
                    <option value="3">Medellin</option>
                    </optgroup></select><select class="caja" name="con" id="con">
                    <option>Tipo de oferta</option>
                    <option value="1">Venta</option> 
                    <option value="2">Arriendo</option> 
                    <option value="3">Venta/Arriendo</option>
                    </optgroup></select>DIRECCION:<input class="caja" type="text" name="dir" id="dir"></p></td></tr>
                    <tr><td><p class="form">DESCRIPCION:<input class="caja2" type="text" name="desc" id="desc">
                    PRECIO:<input class="caja" type="text" name="pre" id="pre"></p></td></tr>
                <tr>
                        <td colspan="3">
                            <input class="button" type="submit" id="submit" value="GUARDAR CAMBIOS"/>
                        </td>
                    </tr>
                </table>
            </form>

        </div>
        <!-- jQuery CDN - Slim version (=without AJAX) -->
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <!-- Popper.JS -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js" integrity="sha384-cs/chFZiN24E4KMATLdqdvsezGxaGsi4hLGOzlXwp5UZB1LY//20VyM2taTB4QvJ" crossorigin="anonymous"></script>
        <!-- Bootstrap JS -->
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js" integrity="sha384-uefMccjFJAIv6A+rW+L4AHf99KvxDjWSu1z9VI8SKNVmz4sk7buKt/6v9KI65qnm" crossorigin="anonymous"></script>  
        <script type="text/javascript" src="validar.js"></script>
    </body>
</html>
