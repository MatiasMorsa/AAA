
#((1,5),(2,6),(3,9),(4,8),(6,10)) tiene que dar a = 36/37 ; b = 166/37
#((1,2.6),(1.2,3.8),(2.5,7.1),(2.9,8),(9.6,26.7)) tiene que dar a = 2.715 ; b = 0.125

#Cargo los packages que me van a servir despues
pkg load control;
pkg load signal;

#Inicializo las variables de navegacion
volver_atras = 0;
volver_menu_ppal = 1;
sel_menu_ppal = 0;


#mensaje=msgbox(aux1,"bienvenido");
#btn = dialog ("hola", "bienvenido", "btn1", "btn2", "btn3", "btn1");

#Inicializo variables para pedir datos despues
prompt = {"Cantidad de decimales","Por favor ingrese los datos de la forma (x1,y1),...,(xn,yn)"};
defaults = {"2",""};
rowscols = [1;1.10];

#Verifico que no elija la opcion finalizar


while (sel_menu_ppal!= 4) 
  
  #Verifico que volvio al menu ppal
  if(volver_menu_ppal == 1)
    sel_menu_ppal = menu("Seleccione una opcion","-Ingresar datos","-Comparar aproximaciones","-Limpiar grafico","-Finalizar");
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
                  dims = inputdlg (prompt,"Ingreso de datos", rowscols, defaults);
                   #hh=msgbox(dims{2},"Usted a ingresado los datos");
              case 1
                  sel_menu1 = menu("Por favor seleccione un metodo de aproximación:","1) Recta de cuadrados min.","2) Parabola de cuadrados \nminimos","3) Exponencial","4) Potencial","5) Hiperbola \n"," - Volver atras - "," - Ir al menu principal -");
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
                  sel_menu12 = menu("Seleccione una opcion","1) Ver el grafico","2) Ver el grafico y la \ndistribucion de puntos","3) Obtener detalle del \ncalculo\n"," - Volver atras -"," - Ir al menu principal - ");
                  switch sel_menu12
                      case 1
                          datos_casteados = funcionCasteo2(dims{2},str2num(dims{1}));
                          disp(datos_casteados);
                          aproximacion = calcular_aproximaciones(datos_casteados,sel_menu1,dims{1},0);
                          #graficarFucion(aproximacion);
                          volver_menu_ppal = 1;
                      case 2
                          datos_casteados = funcionCasteo2(dims{2},str2num(dims{1}));
                          disp(datos_casteados);
                          aproximacion = calcular_aproximaciones(datos_casteados,sel_menu1,dims{1},0);
                          #graficarFucion(aproximacion);
                          #graficarPuntos(datos_casteados);
                          volver_menu_ppal = 1;
                      case 3
                          datos_casteados = funcionCasteo2(dims{2},str2num(dims{1}));
                          disp(datos_casteados);
                          aproximacion = calcular_aproximaciones(datos_casteados,sel_menu1,dims{1},1);
                          #graficarFucion(aproximacion);
                          #aproximacion = calcular_aproximaciones(datos_casteados,sel_menu1);
                      case 4
                          volver_atras=1;
                          volver_menu_ppal = 0;
                          opcion = 1;
                      case 5
                          volver_menu_ppal = 1;
                          volver_atras = 0;
                  endswitch
          endswitch
              
              
      case 2
          disp('Opcion 2')
      case 3
          disp('Opcion 3')
          limpiar_grafico();
          volver_menu_ppal = 1;
      case 4
           #despedida=msgbox("Hasta Luego","Finalizar");
      otherwise
        disp('Opcion incorrecta, por favor vuelva a seleccionar otra opcion');
  endswitch
endwhile


