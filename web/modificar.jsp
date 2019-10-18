<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>MODIFICAR</title>
        <!--ESTILO DE BOOSTRAP-->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css" integrity="sha384-9gVQ4dYFwwWSjIDZnLEWnxCjeSWFphJiwGPXr1jddIhOegiu1FwO5qRGvFXOdJZ4" crossorigin="anonymous">
        <!--ESTILO PROPIO-->
        <link rel="stylesheet" href="estilo.css">
        <script type="text/javascript" src="validar.js"></script>
        <script defer src="https://use.fontawesome.com/releases/v5.0.13/js/solid.js" integrity="sha384-tzzSw1/Vo+0N5UhStP3bvwWPq+uvzCMfrN1fEFe+xBmv1C/AtVX5K0uZtmcHitFZ" crossorigin="anonymous"></script>
        <script defer src="https://use.fontawesome.com/releases/v5.0.13/js/fontawesome.js" integrity="sha384-6OIrr52G08NpOFSZdxxz1xdNSndlD4vdcf/q2myIUVO0VsqaGHJsB0RaBE01VTOY" crossorigin="anonymous"></script>
    </head>
    <body>
        <div id="content">
            <form action="buscarPersona" method="post" onsubmit="return validarModificar();">
                <table id="modificarDatos">
                    <tr>
                        <td colspan="2"><strong>INGRESE LOS DATOS DEL USUARIO</strong></td>
                    </tr>
                    <tr>
                        <td>No. Documento</td>
                        <td>Tipo De Documento</td>
                    </tr>
                    <tr>
                        <td><input type ="text" name="id" id="documento" onkeypress="return soloNumeros(event)" ></td>
                        <td><select type ="text" name="tdoc" id="tipo">
                                 <option>Seleccionar tipo de documento</option>
                                 <option value="1">Cédula de Ciudadanía</option> 
                                 <option value="2">Cédula de Extranjería</option> 
                                 <option value="3">NIT</option> 
                                 <option value="4">RUT</option> 
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <input type="submit" id="submit" value="BUSCAR"/> 
                        </td>
                    </tr>
                </table>
            </form>
        </div>
        <!-- jQuery CDN - Slim version (=without AJAX) -->
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <!-- Bootstrap JS -->
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js" integrity="sha384-uefMccjFJAIv6A+rW+L4AHf99KvxDjWSu1z9VI8SKNVmz4sk7buKt/6v9KI65qnm" crossorigin="anonymous"></script>  
        <script type="text/javascript" src="validar.js"></script>
    </body>
</html>
