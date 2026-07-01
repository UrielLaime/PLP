program ejer5;

var x,y:integer;

function esDivisible(x,y:integer):boolean;
begin
  esDivisible := (x mod y) = 0;
end;

begin
    writeln('Ingrese un numero:');
  read(x);
  writeln('Ingrese otro numero:');
  read(y);

  if (esDivisible(x,y)) then
    writeln('Es Divisible')
  else
    writeln('No es Divisible');
end.