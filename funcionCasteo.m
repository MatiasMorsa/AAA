
function varRet = funcionCasteo (datos);

  coordenadas_x = [];
  coordenadas_y = [];

  contador = 0;

  variableArray = "((1,-2),(3,2),(8,0))";

  for i= 1:length(variableArray)
    if((variableArray(i) == "0")||(variableArray(i)== "1")||(variableArray(i)== "2")||(variableArray(i)== "3")||(variableArray(i)== "4")||(variableArray(i)== "5")||(variableArray(i)== "6")||(variableArray(i)== "7")||(variableArray(i)== "8")||(variableArray(i)== "9"))
      variable = str2num(variableArray(i))
      if (variableArray(i-1) == "-");
        variable = variable *(-1);  
      endif
      switch contador
        case 0
        coordenadas_x = [coordenadas_x variable];
        contador = 1;
        case 1
        coordenadas_y = [coordenadas_y variable];
        contador = 0;
      endswitch
    endif
  endfor
  
  #Devuelve una matriz de la manera [X ,Y]
  varRet = [coordenadas_x'  coordenadas_y'];
  return