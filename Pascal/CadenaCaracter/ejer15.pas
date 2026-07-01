program ejer15;

var operacion:string;
//StrToInt(s) pasa un string a un entero, pero si el string no es un numero, da error.
function guardarLetra(x:char):char;
begin
  case x of 
  '0'.. '9',' ': guardarLetra:='';
  else
  guardarLetra:=x;
  end;
end;
function guardarNum(x:char):char;
begin

guardarNum:='';
  case x of: 
  '0'.. '9': guardarNum:=x;
  
end;
function valido(x:string):boolean;
begin
  case x of:
  'mas','menos','multiplicado','divide': valido:=true;
  else valido:=false;
end;

function realizarOperacion(x:string; y:integer; z:integer):integer;
begin
  case x of:
  'mas': realizarOperacion:=y+z;
  'menos': realizarOperacion:=y-z;
  'multiplicado': realizarOperacion:=y*z;
  'divide': realizarOperacion:=y div z;
end;

procedure operar(x:string);
var funcion,y,z:string;
begin
  funcion:='';

  for i:=1 to length(x) do
  begin
    if guardarLetra(x[i])<>'' then
    funcion:=funcion+x[i];

    if (guardarNum(x[i])<>'') and (i<length(x)div 2) then
      y:=y+StrToInt(x[i]);;
      else
      begin
      if (guardarNum(x[i])<>'') then
      z:=z+StrToInt(x[i]);
      end;

  end;

  if valido(funcion) then
    writeln('el resultado de la operacion es: ',realizarOperacion(funcion,StrToInt(y),StrToInt(z)))
  else
    writeln('operacion invalida');
end;

begin
writeln('ingrese la operacion a realizar, con el formato:');
readln(operacion);
operar(operacion);
end.