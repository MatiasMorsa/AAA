

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


function returnValue = multiplicacionXY (matrix)

  matrix = transpose(matrix);
  x = matrix(1,:);
  y = matrix(2,:) ;
  
  respuesta = x.*y
  returnValue = respuesta(1,:);
  return 
endfunction 
      