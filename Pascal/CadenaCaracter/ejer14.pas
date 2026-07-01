program ejer14;

var frase:String; valido:boolean;

procedure cantidadPalabras(frase:string);

var i,contador:integer;

begin
  contador:=1;

  for i:=1 to length(frase) do
	begin
	if(frase[i]=' ') then

	   contador:=contador+1;
  end;
   writeln('cantidad de palabras en la frase: ',contador);
end;

begin
valido:=false;

repeat
  begin
  writeln('ingrese una frase y que termine con &');
  readln(frase);

  if(frase[length(frase)]<>'&')then
	    writeln('frase invalida')
  else
    begin
	    writeln('frase valida');
	    valido:=true;
    end;
  end;
until valido;

cantidadPalabras(frase);
end.