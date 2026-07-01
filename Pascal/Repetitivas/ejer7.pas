program ejer7;

var x,acum:integer;

begin
  acum := 0;
  repeat
    writeln('Ingrese un numero:');
    read(x);
    write('numero ingresado: ', x)
    acum := acum + x;
    writeln('La suma de los numeros ingresados es: ', acum);
  until (x=0);

 
end.