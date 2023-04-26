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
            <form name="NewServlet" action="NewServlet1" method="POST">
                <label>Nombre</label>
                <input type="text" name="nombre" value="" /><br>
                <label>RUT</label>
                <input type="text" name="RUT" value="" id="RUT" onkeyup="validarRut()"/><br>
                <label>Digito Verificador</label>
                <input type="text" name="DIG" value="" id="DIG" disabled="true"/><br>
                <label>Apellido Paterno</label>
                <input type="text" name="ap" value="" /><br>
                <label>Apellido Materno</label>
                <input type="text" name="am" value="" /><br>
                <label>Telefono</label>
                <input type="text" name="fono" value="" onkeypress="return soloNumeros(event)"/><br>
                <label>Email</label>
                <input type="text" name="correo" value="" /><br>
                <label>Sexo</label>
                <select name="sexo">
                    <option>masculino</option>
                    <option>femenino</option>
                </select><br>
                <label>Direccion</label>
                <input type="text" name="direccion" value="" /><br>
                <label>Nacionalidad</label>
                <input type="text" name="nacionalidad" value="" /><br>
                <label>Contraseña</label>
                <input type="password" name="password" value="" /><br>
                <input type="submit" value="Enviar" />
            </form>
        </div>
        
        </form>
    </body>
</html>
