Program Traza;

var
x,y,z: integer;

function promedio(a:integer; var b:integer):integer;

Begin
  b:=4;
  promedio:= (a+b) div 2;
End;

Begin
  x:=10;
  y:=5;
  z:=promedio(x,y);
  x:=z+y;

  writeln('el valor de x es:', x);
End.