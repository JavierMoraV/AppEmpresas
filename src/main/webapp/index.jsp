<%-- 
    Document   : index
    Created on : 30-03-2023, 19:37:34
    Author     : User
--%>
    <script>
        function soloNumeros(e){
            var key = window.Event ? e.which : e.keyCode;
            return (key >= 48 && key <= 57);
        };
        
        function validarRut(){
            
            var arut = new Array(8);
            var i, j, dv;
            if((document.getElementById("RUT").value.length) = 0){
                alert("debe ingresar un numero de rut");
            }
            else{
                for(i=1; i<9; i++){
                    arut[i] = 0;
                }
                i=0;
                for(j= (9-(document.getElementById("RUT").value.length)); j<9;j++){
                    if((document.getElementById("RUT").value.substr(i,1) >= 0) & (document.getElementById("RUT").value.substr(i,1)<= 9)){
                        arut[j] = document.getElementById("RUT").value.substr(i,1);
                        i++;
                    }
                    else{
                        alert("debe ingresar solo numeros!!!");
                        i=0;
                        break;
                    }
                }
                if(i>0){
                    dv = 11 - (((arut[1]*3) + (arut[2]*2) + (arut[3]*7) + (arut[4]*6) + (arut[5]*5) + (arut[6]*4)+(arut[7]*3) + (arut[8]*2))%11);
                    
                if(dv===10){
                        dv = "k";
                    }
                    else if(dv===11){
                        dv= "0";
                    }
                    document.getElementById("DIG").value = dv;
                    return dv;
                }
            }
        }
        
      /*  function valida(){
            //validar nombre
            var NOM = document.getElementById("nombre").value;
            if(NOM==""){
                alert("campo nombre vacio");
                return false;
            }else{
                alert("nombre: "+NOM);
            }
            //validar rut
            var RUT = document.getElementById("RUT").value;
            if(RUT==""){
                alert("campo rut vacio");
                return false;
            }else{
                alert("rut:" +RUT);
            }
            
            //validar apellido paterno
            var AP = document.getElementById("ap").value;
            if(AP==""){
                alert("campo apellido paterno vacio");
                return false;
            }
            else{
                alert("apellido paterno: "+AP);
            }
            //validar apellido materno
            var AM = document.getElementById("am").value;
            if(AM==""){
                alert("campo apellido materno vacio");
                return false;
            }
            else{
                alert("apelldio materno: "+AM);
            }
            //validar fono
            var FONO = document.getElementById("fono").value;
            if(FONO==""){
                alert("campo fono vacio");
                return false;
            }
            else{
                alert("telefono: "+FONO);
            }
            //validar correo
            var CORREO = document.getElementById("correo").value;
            if(CORREO==""){
                alert("campo email vacio");
                return false;
            }
            else{
                alert("correo: "+CORREO);
            }
            
        }*/
    
        function valida(){
            
            var mensaje = "";
            nombre = document.getElementById("nombre").value;
            if(nombre==""){
                mensaje=mensaje+" *nombre esta en blanco \n";
                
            }
            
            var RUT = document.getElementById("RUT").value;
            if(RUT==""){
                mensaje=mensaje+" *RUT en blanco \n";
                
            }
            
            var ap = document.getElementById("ap").value;
            if(ap==""){
                mensaje=mensaje+" *apellido paterno en blanco \n";
                
            }
            
            var ma = document.getElementById("am").value;
            if(ma==""){
                mensaje=mensaje+" *apellido materno en blanco \n";
                
            }
            
            var telefono = document.getElementById("fono").value;
            if(telefono==""){
                mensaje=mensaje+" *telefono  en blanco \n";
                
            }
            
            var correo = document.getElementById("correo").value;
            if(correo==""){
                mensaje=mensaje+" *correo en blanco \n";
                
            }
            
            sexo = document.getElementById("sexo").value;
            if(sexo==""){
                mensaje=mensaje+" *sexo en blanco \n";
            }
            
            direccion = document.getElementById("direccion").value;
            if(direccion==""){
                mensaje=mensaje+" *direccion en blanco \n";
                
            }
            
            nacionalidad = document.getElementById("nacionalidad").value;
            if(nacionalidad==""){
                mensaje=mensaje+" *nacionalidad en blanco \n";
                
            }
            
            contrasena = document.getElementById("password").value;
            if(contrasena==""){
                mensaje=mensaje+" *contraseña en blanco \n";
                
            }
            contrasena2 = document.getElementById("password").value;
            if(contrasena==""){
                mensaje=mensaje+" *confirmar contraseña en blanco \n";
                
            }else if(contrasena==contrasena2){
                alert("contraseña correcta");
            }else{
                alert("contraseña erronea")
            }
            
            if(mensaje!=""){
                mensaje="datos faltantes en el formulario \n\n"+mensaje;
                alert(mensaje);
                return false;
            }else{
                
                alert("datos ingresados correctamente")
                
            }
            
        }
    </script>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <style>
        body{
            margin: 0 auto;
        }
    </style>
    
    <body>
        <div class="form">
            <h1>Ingrese sus Datos</h1>
            <form name="NewServlet" action="NewServlet1" method="POST" onsubmit="return valida()">
                <label>Nombre</label>
                <input type="text" name="nombre" id="nombre" value="" /><br>
                <label>RUT</label>
                <input type="text" name="RUT" value="" id="RUT" onkeyup="validarRut()"/>
                <label>-</label>
                <input type="text" name="DIG" value="" id="DIG" disabled="true"/><br>
                <label>Apellido Paterno</label>
                <input type="text" name="ap" id="ap" value="" /><br>
                <label>Apellido Materno</label>
                <input type="text" name="am" id="am" value="" /><br>
                <label>Telefono</label>
                <input type="text" name="fono" value="" id="fono" onkeypress="return soloNumeros(event)"/><br>
                <label>Email</label>
                <input type="text" name="correo" value="" id="correo" /><br>
                <label>Sexo</label>
                <select name="sexo" id="sexo">
                    <option>masculino</option>
                    <option>femenino</option>
                </select><br>
                <label>Direccion</label>
                <input type="text" name="direccion" value="" id="direccion"/><br>
                <label>Nacionalidad</label>
                <input type="text" name="nacionalidad" value="" id="nacionalidad"/><br>
                <label>Contraseña</label>
                <input type="password" name="password" value="" id="password"/><br>
                <label>confirmar Contraseña</label>
                <input type="password" name="password" value="" id="password2"/><br>
                <input type="submit" value="Enviar" />
            </form>
        </div>
        
        </form>
    </body>
</html>
