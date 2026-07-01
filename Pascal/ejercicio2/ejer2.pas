program ejer2;

var x,y,suma,resta,division,multiplicacion : integer;

function sumar(x,y:integer):integer;

begin
  sumar:= x+y;
end;

function restar(x,y:integer):integer;

begin
  restar:= (x - y);
end;

procedure multiplicar(x,y:integer;var z:integer);

begin
z:= (x * y);  
end;

procedure dividir(x,y:integer;var z:integer);

begin
  z:= (x div y);
end;

begin
  writeln('Ingrese el primer valor: ');
  read(x);
  writeln('Ingrese el segundo valor: ');
  read(y);

  suma:=sumar(x,y);
  resta:=restar(x,y);
  multiplicar(x,y,multiplicacion);
  dividir(x,y,division);

  writeln('valor suma: ',suma);
  writeln('valor resta: ',resta);
  writeln('valor multiplicacion: ', multiplicacion);
  writeln('valor division: ',division);
end.