

#Cargo los packages que me van a servir despues
pkg load control;
pkg load signal;

#Inicializo las variables de navegacion
volver_atras = 0
volver_menu_ppal = 1
sel_menu_ppal=0

#mensaje=msgbox("hola","bienvenido");
#btn = dialog ("hola", "bienvenido", "btn1", "btn2", "btn3", "btn1");

#Inicializo variables para pedir datos despues
prompt = {"Ingrese los datos"};
defaults = {""};
rowscols = [1];

#Verifico que no elija la opcion finalizar


while (sel_menu_ppal!= 4) 
  
  #Verifico que volvio al menu ppal
  if(volver_menu_ppal == 1)
    sel_menu_ppal = menu("Seleccione una opcion","Ingresar datos","Comparar aproximaciones","Limpiar grafico","Finalizar");
      volver_atras = 0;
      opcion = 0 ;
      volver_menu_ppal = 0;
  endif
  
  
  switch sel_menu_ppal
      case 1
          switch opcion          
              case 0
                  opcion = 1;
                  sel_menu_ppal = 1; 
                  dims = inputdlg ("Por favor ingrese los datos de la forma ((x1,y1),...,(xn,yn))", "Datos: ", rowscols, defaults);
                   #hh=msgbox(dims{1},"Usted a ingresado los datos");
              case 1
                  sel_menu1 = menu("Por favor seleccione un metodo de aproximación:","Recta de min. cuadrados","Parabola de min. cuadrados","Exponencial","Potencial","Hiperbola \n"," - Volver atras - "," - Ir al menu principal -");
                  switch sel_menu1 
                      case 6
                          volver_atras=1;
                          volver_menu_ppal = 0;
                          opcion = 0;
                      case 7
                          volver_menu_ppal = 1;
                          volver_atras = 0;
                      otherwise
                        opcion = 2;                
                  endswitch
              case 2
                  sel_menu12 = menu("¿Desea mostrar la nube de puntos junto al polinomio?","Si","No \n"," - Volver atras -"," - Ir al menu principal - ");
                  switch sel_menu12 
                      case 3
                          volver_atras=1;
                          volver_menu_ppal = 0;
                          opcion = 1;
                      case 4
                          volver_menu_ppal = 1;
                          volver_atras = 0;
                      otherwise
                          datos_casteados = funcionCasteo(dims{1});
                          #graficarFuncion((calcular_aproximaciones(datos_casteados,1)),1);
                          volver_menu_ppal = 1;
                  endswitch
              endswitch
              
              
      case 2
          disp('Opcion 2')
      case 3
          disp('Opcion 3')
          limpiar_grafico();
          volver_menu_ppal = 1;
#Capturo el error, al pedo pero bueno
      otherwise
          disp('Opcion incorrecta, por favor vuelva a seleccionar otra opcion')
  endswitch
endwhile


