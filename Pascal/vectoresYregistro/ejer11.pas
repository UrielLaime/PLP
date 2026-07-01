program ejer11;

var numeros:array[1..10] of integer; i: integer;

function mayorArray(num:array of integer): integer;
begin
  mayorArray := num[low(num)];
  for i := low(num) to high(num) do
  begin
    if num[i] > mayorArray then
      mayorArray := num[i];
  end;
end;

begin
  writeln('Ingrese 10 numeros:');
  for i := low(numeros) to high(numeros) do
  begin
    readln(numeros[i]);
  end;

  writeln('El numero mayor es: ', mayorArray(numeros));
end.