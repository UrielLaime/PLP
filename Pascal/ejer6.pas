program ejer6;

var x:integer;

procedure aprobado(x:integer);
begin
  
  if(x<4) then
    writeln('Reprobado')
  else
    if (x<=6) then
      writeln('Bien')
    else
      if (x<=9) then
      writeln('Muy Bien')
      else
      writeln('Excelente');
end;

begin

repeat
  writeln('Ingrese un numero:');
  read(x);

  aprobado(x);
until (x<=0);
end.