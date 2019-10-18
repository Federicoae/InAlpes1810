/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
function valida() {
    var tdocumento, documento, nombre, apellido, correo, celular, expresion,expresion1, expresion2, expresion3 ;
    tdocumento = document.getElementById("tdoc").value;
    documento = document.getElementById("ced").value;
    nombre = document.getElementById("name").value;
    apellido = document.getElementById("lastname").value;
    correo = document.getElementById("mail").value;
    celular = document.getElementById("tel").value;
  expresion = /\w+@\w+\.[a-z]/ ;
  expresion1=/\w+@\w+\.[a-z]\.[a-z]/ ;
  expresion2=/\[0-9]\-[0-9]/; 
  expresion3=/\w/;
    if(tdocumento === "Seleccionar tipo de documento"){
        alert("Revisar tipo de documento");
        return false;
    }
    if(documento === ""||nombre === ""||apellido === ""||correo === ""||celular === ""){
        alert("Faltan datos en el formulario");
        return false;
        
    }
    else if (tdocumento==="1"&&documento.length>10&&isNaN(documento)){
        alert("Cedula Erronea");
        return false;
    }
    else if (tdocumento==="2"&&documento.length>6&&isNaN(documento)){
        alert("Cedula de Extranjeria Erronea");
        return false;
    }
   
    else if (tdocumento==="3"&&documento.length>12&&(!expresion2.test(documento))){
        alert("NIT Erroneo");
        return false;
    }
    else if (tdocumento==="4"&&documento.length>10&&(!expresion2.test(documento))){
        alert("RUT Erroneo");
        return false;
    }
    else if (nombre.length>45&&(!expresion3.test(nombre))){
        alert("Nombre muy largo");
        return false;
    }
    else if (apellido.length>45&&(!expresion3.test(apellido))){
        alert("Apellido muy largo");
        return false;
    }
    else if (correo.length>45){
        alert("Correo demasiado largo");
        return false;
    }
    
    else if (!expresion.test(correo)&&!expresion1.test(correo)){
        alert("Correo no es valido");
        return false;
    }
    else if (celular.length>10){
        alert("Telefono demasiado largo");
        return false;
    }
    else if (isNaN(celular)){
        alert("El telefono contiene caracteres");
        return false;
    }   
}

function valiedi(){
    var tdocumento, documento,expresion2 ;
    tdocumento = document.getElementById("tdoc").value;
    documento = document.getElementById("ced").value;
    expresion2=/\[0-9]\-[0-9]/;
     if(tdocumento === "Seleccionar tipo de documento"){
        alert("Revisar tipo de documento");
        return false;
    }
    if(documento === ""){
        alert("Faltan datos para editar");
        return false;
        
    }
    else if (tdocumento==="1"&&documento.length>10&&isNaN(documento)){
        alert("Cedula Erronea");
        return false;
    }
    else if (tdocumento==="2"&&documento.length>6&&isNaN(documento)){
        alert("Cedula de Extranjeria Erronea");
        return false;
    }
   
    else if (tdocumento==="3"&&documento.length>12&&(!expresion2.test(documento))){
        alert("NIT Erroneo");
        return false;
    }
    else if (tdocumento==="4"&&documento.length>10&&(!expresion2.test(documento))){
        alert("RUT Erroneo");
        return false;
    } 
}


function valieli(){
    var tdocumento, documento,expresion2 ;
    tdocumento = document.getElementById("tdoc").value;
    documento = document.getElementById("ced").value;
    expresion2=/\[0-9]\-[0-9]/;
     if(tdocumento === "Seleccionar tipo de documento"){
        alert("Revisar tipo de documento");
        return false;
    }
    if(documento === ""){
        alert("Faltan datos para eliminar");
        return false;
        
    }
    else if (tdocumento==="1"&&documento.length>10&&isNaN(documento)){
        alert("Cedula Erronea");
        return false;
    }
    else if (tdocumento==="2"&&documento.length>6&&isNaN(documento)){
        alert("Cedula de Extranjeria Erronea");
        return false;
    }
   
    else if (tdocumento==="3"&&documento.length>12&&(!expresion2.test(documento))){
        alert("NIT Erroneo");
        return false;
    }
    else if (tdocumento==="4"&&documento.length>10&&(!expresion2.test(documento))){
        alert("RUT Erroneo");
        return false;
    } 
    
}