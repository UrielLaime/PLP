program ejer4;

var x:real;

function esPositivo(x:real):boolean;

begin
  esPositivo := x > 0;
end;

begin
    writeln('Ingrese un numero:');
  read(x);

  if (esPositivo(x)) then
    writeln('Es Positivo')
  else
    writeln('Es Negativo');
end.