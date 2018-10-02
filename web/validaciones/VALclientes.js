//Obteniemos el ID del boton "submit"
var botonEnviar = document.getElementById('boton'); 

function verificar(){ //esto viene del botón "submit"

            var v1=0,v2=0,v3=0,v4=0,v5=0,v6=0,v7=0,v8=0; //declaramos las variables en 0(cero)
            //guardamos en cada variable el valor de cada campo
            v1 = validacion('nombre');
            v2 = validacion('apellido');
            v3 = validacion('cedula');
            v4 = validacion('ruc');
            v5 = validacion('localidad');
            v6 = validacion('direccion');
            v7 = validacion('celular');
            v8 = validacion('telefono');
            
            
            if (v1===false || v2===false || v3===false || v4===false || v5===false || v6===false 
                    || v7===false || v8===false) { //Si cualquier campo esta vacio o en 0(cero) entonces:
                 
                 return false;
            }else{
                
                return true;

            }

        } //FIN ---> function verificar()
        
function enviarForm(){
   
    if (verificar()) {
        $("#error").hide();
        $("#exito").show();
        botonEnviar.disabled = false;//habilitamos el boton submit
    } else {
        $("#exito").hide();//ocultamos el mensaje de éxito
        $("#error").show();//mostramos el mensaje de error
        botonEnviar.disabled = true; //desabilitamos el boton submit
    }
    //console.log('kkkkkk');
}
 
function validacion(campo){
            botonEnviar.disabled = false;//habilitamos el boton submit
            var a=0;
            
            if (campo==='nombre')
            {
                Nombre = document.getElementById(campo).value;
                if( Nombre == null || Nombre.length == 0 || /^\s+$/.test(Nombre) ) { //Si esta vacío el campo entonces...
                    $('#'+campo).parent().parent().attr("class", "form-group has-error"); 
                    $('#'+campo).parent().children('span').text("Rellene el campo").show();
                    return false;       
                }
             else if ( !isNaN(Nombre) ){ //Si no hay caracteres(letras) entonces entra(true)
                        $('#'+campo).parent().parent().attr("class", "form-group has-error"); 
                        $('#'+campo).parent().children('span').text("No se admite valor numérico").show();  
                        return false;
                    }
             else{
                    $('#'+campo).parent().parent().attr("class", "form-group has-success");
                    $('#'+campo).parent().children('span').hide();  
                    return true;   
                }
            } //FIN ---> if (campo==='nombre')
            
            
            if (campo==='apellido')
            {
                Apellido = document.getElementById(campo).value;
                if( Apellido == null || Apellido.length == 0 || /^\s+$/.test(Apellido) ) { //Si esta vacío el campo entonces...
                    $('#'+campo).parent().parent().attr("class", "form-group has-error"); 
                    $('#'+campo).parent().children('span').text("Rellene el campo").show();
                    return false;       
                }
             else if ( !isNaN(Apellido) ){ //
                        $('#'+campo).parent().parent().attr("class", "form-group has-error"); 
                        $('#'+campo).parent().children('span').text("No se admite valor numérico").show();  
                        return false;
                    }
             else{
                    $('#'+campo).parent().parent().attr("class", "form-group has-success");
                    $('#'+campo).parent().children('span').hide();  
                    return true;   
                }
            } //FIN ---> if (campo==='apellido')
            
            
            if (campo==='cedula')
            {
                Cedula = document.getElementById(campo).value;
                
                if( Cedula == null || Cedula.length == 0 || /^\s+$/.test(Cedula) ) { //Si esta vacío el campo entonces...
                    $('#'+campo).parent().parent().attr("class", "form-group has-error"); 
                    $('#'+campo).parent().children('span').text("Rellene el campo").show();
                    return false;       
                }
                else if( isNaN(Cedula) ){ //Si hay caracteres entonces entra(true)
                        $('#'+campo).parent().parent().attr("class", "form-group has-error"); 
                        $('#'+campo).parent().children('span').text("No se admiten letras ni caracteres especiales").show();  
                        return false;
                }
                else{
                        $('#'+campo).parent().parent().attr("class", "form-group has-success");
                        $('#'+campo).parent().children('span').hide(); 

                        return true;
                    }   
                }//FIN ---> if (campo==='cedula')
                
                
                if (campo==='ruc')
                {
                    Ruc = document.getElementById(campo).value;

                    var letras = /^[A-Za-z\s\xF1\xD1]+$/;

                    if( Ruc == null || Ruc.length == 0 || /^\s+$/.test(Ruc) ) { //Si esta vacío el campo entonces...
                        $('#'+campo).parent().parent().attr("class", "form-group has-error"); 
                        $('#'+campo).parent().children('span').text("Rellene el campo").show();
                        return false;       
                    }
                    else if( letras.test(Ruc) ){ //Si hay caracteres entonces entra(true)
                            $('#'+campo).parent().parent().attr("class", "form-group has-error"); 
                            $('#'+campo).parent().children('span').text("No se admiten letras ni caracteres especiales").show();  
                            return false;
                    }
                    else{
                            $('#'+campo).parent().parent().attr("class", "form-group has-success");
                            $('#'+campo).parent().children('span').hide(); 

                            return true;
                        }   
                }//FIN ---> if (campo==='ruc')
                
                
                if (campo==='localidad')
                {
                    Localidad = document.getElementById(campo).value;
                    if( Localidad == null || Localidad.length == 0 || /^\s+$/.test(Localidad) ) { //Si esta vacío el campo entonces...
                        $('#'+campo).parent().parent().attr("class", "form-group has-error"); 
                        $('#'+campo).parent().children('span').text("Rellene el campo").show();
                        return false;       
                    }
                    else if ( !isNaN(Localidad) ){ //Si no hay caracteres(letras) entonces entra(true)
                        $('#'+campo).parent().parent().attr("class", "form-group has-error"); 
                        $('#'+campo).parent().children('span').text("No se admite valor numérico").show();  
                        return false;
                        }
                    else{
                        $('#'+campo).parent().parent().attr("class", "form-group has-success");
                        $('#'+campo).parent().children('span').hide();  
                        return true;   
                        }
                } //FIN ---> if (campo==='localidad')
                
                
                if (campo==='direccion')
                {
                    Direccion = document.getElementById(campo).value;
                    if( Direccion == null || Direccion.length == 0 || /^\s+$/.test(Direccion) ) { //Si esta vacío el campo entonces...
                        $('#'+campo).parent().parent().attr("class", "form-group has-error"); 
                        $('#'+campo).parent().children('span').text("Rellene el campo").show();
                        return false;       
                    }
                    else if ( !isNaN(Direccion) ){ //Si no hay caracteres(letras) entonces entra(true)
                        $('#'+campo).parent().parent().attr("class", "form-group has-error"); 
                        $('#'+campo).parent().children('span').text("No se admite solo valor numérico").show();  
                        return false;
                        }
                    else{
                        $('#'+campo).parent().parent().attr("class", "form-group has-success");
                        $('#'+campo).parent().children('span').hide();  
                        return true;   
                        }
                } //FIN ---> if (campo==='localidad')
                
                
                if (campo==='celular')
                {
                    Celular = document.getElementById(campo).value;
                    
                    
                    if( Celular == null || Celular.length == 0 || /^\s+$/.test(Celular) ) { //Si esta vacío el campo entonces...
                        $('#'+campo).parent().parent().attr("class", "form-group has-error"); 
                        $('#'+campo).parent().children('span').text("Rellene el campo").show();
                        return false;       
                    }
                    else if ( isNaN(Celular) ){ //Si hay caracteres(letras) entonces entra(true)
                        $('#'+campo).parent().parent().attr("class", "form-group has-error"); 
                        $('#'+campo).parent().children('span').text("No se admite letras ni caracteres especiales").show();  
                        return false;
                        }
                    else{
                        $('#'+campo).parent().parent().attr("class", "form-group has-success");
                        $('#'+campo).parent().children('span').hide();  
                        return true;   
                        }
                } //FIN ---> if (campo==='celular')
                
                
                if (campo==='telefono')
                {
                    Telefono = document.getElementById(campo).value;
                    
                    
                    if( Telefono == null || Telefono.length == 0 || /^\s+$/.test(Telefono) ) { //Si esta vacío el campo entonces...
                        $('#'+campo).parent().parent().attr("class", "form-group has-error"); 
                        $('#'+campo).parent().children('span').text("Rellene el campo").show();
                        return false;       
                    }
                    else if ( isNaN(Telefono) ){ //Si hay caracteres(letras) entonces entra(true)
                        $('#'+campo).parent().parent().attr("class", "form-group has-error"); 
                        $('#'+campo).parent().children('span').text("No se admite letras ni caracteres especiales").show();  
                        return false;
                        }
                    else{
                        $('#'+campo).parent().parent().attr("class", "form-group has-success");
                        $('#'+campo).parent().children('span').hide();  
                        return true;   
                        }
                } //FIN ---> if (campo==='celular')
                
                
                
    }//FIN ---> function validacion(campo)
            
        
            



