program ejer12;

type
  Matriz = array of array of integer;

var numeros:Matriz; i,j,tamano: integer;

function sumaDiagonal(num: Matriz): integer;
var i: integer;
begin
  sumaDiagonal := 0;
  for i := low(num) to high(num) do
  begin
    sumaDiagonal := sumaDiagonal + num[i][i];
  end;
end;

begin
  writeln('Ingrese el tamaño de la matriz:');
  read(tamano);
  setlength(numeros, tamano, tamano);

  writeln('Ingrese los elementos de la matriz:');
  for i := low(numeros) to high(numeros) do
  begin
    for j := low(numeros[i]) to high(numeros[i]) do
    begin
      readln(numeros[i][j]);
    end;
  end;

  writeln('La suma de la diagonal principal es: ', sumaDiagonal(numeros));
end.