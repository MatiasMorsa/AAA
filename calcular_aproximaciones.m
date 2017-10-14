

function retValue = calcular_aproximaciones(matriz,tipo_de_aproximacion) 
  switch tipo_de_aproximacion
      #Recta de minimos cuadrados
      case 1
        retValue = multiplicacionXY(matriz);
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


#sumaVector recibe un vector y devuelve un numero = la suma de sus valores
function numero = sumaVector(vector)  
  var = 0
  for i = 1:length(vector)
    var = var + vector(i)
  endfor
  numero = var
  return
endfunction

#sumaCuadrados recibe un vector y devuelve un numero  = la suma de los valores x^2
function numero = sumaCuadrados(vector)
  var = 0
  
  for i = 1:length(vector)
    var = var + vector(i) * vector(i)
  endfor
  numero = var
  
  return
endfunction

#sumax recime una matriz de la manera [[x] [y]] y devuelve la suma de los valores x
function numero = sumax(matriz_sumaX)
  matriz_sumaX = transpose( matriz_sumaX);
  x = matriz_sumaX(1,:)
  
  numero = sumaVector(x)
  return
endfunction

#sumay recime una matriz de la manera [[x] [y]] y devuelve la suma de los valores x
function numero = sumay(matriz_sumay)
  matriz_sumay = devolvery(matriz_sumay) 
  numero = sumaVector(y)
  return
endfunction

#funcion devolvery recibe una matriz  de la manera [[x] [y]] y devuelve un vector con los valores y 
function y = devolvery(matris)

  matris = transpose( matris);
  y = matris(2,:)
  
  return 
endfunction

#funcion devolverx recibe una matriz  de la manera [[x] [y]] y devuelve un vector con los valores x
function x = devolverx(matris)

  matris = transpose( matris);
  x = matris(1,:)
  
  return 
endfunction

#recibe una matriz [[X] [Y]] y devuelve un numero = suma de ( X * Y)
function returnValue = multiplicacionXY (matrix)

  x = devolverx(matrix)
  y = devolvery(matrix) 
 
  respu = x.*y
  
  #Devuelve una fila con la multiplicacion
  returnValue = sumaVector(respu)
  return 
endfunction 

#devuelve la mayorCoordenada del eje x , va a servir para graficar
function retorno = mayorCoordenadaX(matrix)
  x = devolverx(matrix)
  retorno = max(x)
  return
endfunction

#devuelve la menorCoordenada del eje x , va a servir para graficar
function retorno = menorCoordenadaX(matrix)
  x = devolverx(matrix)
  retorno = min(x)
  return
endfunction
 
 

#recibe una matriz [[X] [Y]] y devuelve suma de ln de y
function retorno = sumalny(matriz)
  y = devolvery(matriz)
  
  arrayfun = (@log,y)
  retorno = sumaVector(arrayfun)
  return
endfunction