program ejer13;

var cadena:String;

function palindromo(cad:String):boolean;

var i,j:integer;seguir:boolean;
begin
  i:= 1;
  j:=length(cad);
  seguir := true;
  palindromo := true;

  while (i<j) AND seguir do
  begin
    
    if cad[i] <> cad[j] then
    begin
      palindromo := false;
      seguir := false;
    end;
    i:= i+1;
    j:= j-1;
  end;
end;

begin
  writeln('Ingrese una frase o palabra:');
  readln(cadena);

  if palindromo(cadena) then
    writeln('La cadena es un palindromo.')
  else
    writeln('La cadena no es un palindromo.');
end.