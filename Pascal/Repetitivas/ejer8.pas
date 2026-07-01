program ejer8;

var x,acum:integer;

begin

  acum := 0;
  repeat
    writeln('Ingrese un numero:');
    read(x);
    
    if(x mod 2=0) then
     acum:= acum + 1;

      
  until (acum=5);

end.