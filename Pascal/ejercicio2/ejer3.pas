program ejer3;

var x,y:double;

function areaRectanculo(x,y: double):double;

begin
  
  areaRectanculo:=x*y
end;

function perimetroRectangulo(x,y: double):double;

begin
  perimetroRectangulo:= (2*x)+(2*y)
end;

begin
  
   writeln('ingrese el ancho: ');
   read(x);
  writeln('ingrese el alto: ' );
  read(y);

  writeln('El Area es:',areaRectanculo(x,y));
  writeln('El Perimetro es:',perimetroRectangulo(x,y));
end.