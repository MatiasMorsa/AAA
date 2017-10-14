
#Pido al usuario que ingrese un un vector de coordenadas.
pkg load control;
pkg load signal;


variable_aux = 0
sel_menu_ppal=0

#mensaje=msgbox("hola","bienvenido");
#btn = dialog ("hola", "bienvenido", "btn1", "btn2", "btn3", "btn1");

prompt = {"Ingrese los datos"};
defaults = {""};
rowscols = [1];

while (sel_menu_ppal!=3)
  if(variable_aux == 0)
    sel_menu_ppal = menu("Seleccione una opcion","Ingresar datos","Comparar aproximaciones","Finalizar");
  endif
  variable_aux = 0
  switch sel_menu_ppal
      case 1
          
          dims = inputdlg ("Por favor ingrese los datos de la forma ((x1,y1),...,(xn,yn))", "Datos: ", rowscols, defaults);
          #hh=msgbox(dims{1},"Usted a ingresado los datos");
          sel_menu1 = menu("Por favor seleccione un metodo de aproximación:","Recta de min. cuadrados","Parabola de min. cuadrados","Exponencial","Potencial","Hiperbola","Volver atras");
           if (sel_menu1 == 6)
              varable_aux=1;
          endif
          sel_menu12 = menu("¿Desea mostrar la nube de puntos junto al polinomio?","Si","No","Volver atras");
          if (sel_menu12 == 3)
              varable_aux=1;
          endif
      case 2
          disp('Opcion 2')
      case 3
          disp('Opcion 3')
      otherwise
          disp('Opcion incorrecta, por favor vuelva a seleccionar otra opcion value')
  endswitch
 endwhile


