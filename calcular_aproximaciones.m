
#Esta funcion recibe una matriz y un tipo de aproximacion y devuleve los valores, a , b y c de la funcion;
function retValue = calcular_aproximaciones(matriz,tipo_de_aproximacion,decimales)
  switch tipo_de_aproximacion;
      #Recta de minimos cuadrados
      case 1
        calc = elevar(decimales);
        aux  = resolverEcMinimosCuadrados(matriz);
        aproximacionMin = round(aux.* (calc) )./ (calc);
        retValue = error1(matriz,aproximacionMin,decimales);
        sarasa = error2(matriz,aproximacionMin,decimales);
        return
      return
      #Parabola de minimos cuadrados
      case 2
      #Aproximacion exponencial
      case 3
      #Aproximacion potencial
      case 4
      #Aproximacion hiperbola
  
  endswitch
endfunction

#recibe una matriz de la manera ([X] [Y]) y devuelve un vector con los valores a y b
function ret = resolverEcMinimosCuadrados(matriz)

 
  matriz_A = [sumaCuadrados(devolverx(matriz)),sumaVector(devolverx(matriz));sumaVector(devolverx(matriz)),length(devolvery(matriz))];
  matriz_B = [sumaVector(multiplicacionXY(matriz));sumaVector(devolvery(matriz))];
  
  ret = inv(matriz_A)* matriz_B
  return
endfunction


#Tuve que hacer esta funcion para encontrar la solucion a un error
function ret = elevar(i)
  var = 0;
  z=1;
  disp(i);
  disp(str2num(i));
  if (i > 0)
    var = 10;
    while (z < str2num(i))
      var = var *10;
      z=z+1;
    endwhile
  else
    var = 1;
  endif
  ret = var;
  return
endfunction

function retorno = error1(matriz,aprox,decimales)
  retorno = 0;
  matrizy= devolvery(matriz);
  matrizx=devolverx(matriz);
  for i = 1:length(matriz);
    retorno = retorno + ylineal(aprox,matrizx(i),decimales) - matrizy(i);
  endfor
  retorno = round(retorno .* (10^decimales) )./ (10^decimales);
  return
endfunction


function retorno = error2(matriz,aprox,decimales)
  retorno = 0;
  matrizy= devolvery(matriz);
  matrizx=devolverx(matriz);
  for i = 1:length(matriz);
    retorno = retorno + (ylineal(aprox,matrizx(i),decimales) - matrizy(i)) ^ 2 ;
  endfor
  retorno = round(retorno .* (10^decimales) )./ (10^decimales);
  return
endfunction
#}



#yLineal recibe una matriz y "x" y devuelve la funcion especificada en ese valor.
function ret = ylineal(matriz,x,decimales)
  
  ret = matriz(1) * x + matriz (2);
  ret = round(ret.* (10^decimales) )./ (10^decimales);
  return
endfunction

#sumaVector recibe un vector y devuelve un numero = la suma de sus valores
function numero = sumaVector(vector)  
  var = 0;
  for i = 1:length(vector)
    var = var + vector(i);
  endfor
  numero = var;
  return
endfunction

#sumaCuadrados recibe un vector y devuelve un numero  = la suma de los valores x^2
function numero = sumaCuadrados(vector)
  var = 0;
  
  for i = 1:length(vector)
    var = var + vector(i) * vector(i);
  endfor
  numero = var;
  return
endfunction

#sumax recime una matriz de la manera [[x] [y]] y devuelve la suma de los valores x
function numero = sumax(matriz_sumaX)

  matriz_sumaX = transpose( matriz_sumaX);
  x = matriz_sumaX(1,:);
  numero = sumaVector(x);
  return
endfunction

#sumay recime una matriz de la manera [[x] [y]] y devuelve la suma de los valores x
function numero = sumay(matriz_sumay)
  matriz_sumay = devolvery(matriz_sumay);
  numero = sumaVector(y);
  return
endfunction

#funcion devolvery recibe una matriz  de la manera [[x] [y]] y devuelve un vector con los valores y 
function y = devolvery(matris)

  matris = transpose( matris);
  y = matris(2,:);
  
  return 
endfunction

#funcion devolverx recibe una matriz  de la manera [[x] [y]] y devuelve un vector con los valores x
function x = devolverx(matris)

  matris = transpose( matris);
  x = matris(1,:);
  
  return 
endfunction

#recibe una matriz [[X] [Y]] y devuelve un numero = suma de ( X * Y)
function returnValue = multiplicacionXY (matrix)

  x = devolverx(matrix) ;
  y = devolvery(matrix) ;
 
  respu = x.*y ;
  
  #Devuelve una fila con la multiplicacion
  returnValue = sumaVector(respu);
  return 
endfunction 

#devuelve la mayorCoordenada del eje x , va a servir para graficar
function retorno = mayorCoordenadaX(matrix)
  x = devolverx(matrix);
  retorno = max(x);
  return
endfunction

#devuelve la menorCoordenada del eje x , va a servir para graficar
function retorno = menorCoordenadaX(matrix)
  x = devolverx(matrix);
  retorno = min(x);
  return
endfunction
 
 

#recibe una matriz [[X] [Y]] y devuelve suma de ln de y
function retorno = sumalny(matriz)
  y = devolvery(matriz);
  
  arrayfun = (@log,y);
  retorno = sumaVector(arrayfun);
  return
endfunction

 
