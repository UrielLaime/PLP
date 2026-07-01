program ejer10;

type
  Estudiante = record
    nombre: string;
    nota: integer;
  end;

var Estudiantes: array[1..5] of Estudiante;i: integer;

procedure nombreValido(var nom: string);
var valor: string;
begin

  repeat
    writeln('Ingrese el nombre del estudiante (max 30 caracteres):');
    readln(valor);
    nom:=valor;
  until (length(valor)<=30);
end;

procedure mostrarDatos(E: array of Estudiante);
var i: integer;
begin
  for i := 1 to 5 do
  begin
    writeln('Nombre: ', E[i].nombre, ' - Nota: ', E[i].nota);
  end;
end;

begin
 for i := 1 to 5 do
  begin
    writeln('ingrese el nombre del estudiante ', i, ':');
    nombreValido(Estudiantes[i].nombre);
    writeln('Ingrese la nota del estudiante ', i, ':');
    readln(Estudiantes[i].nota);
  end;
  mostrarDatos(Estudiantes);
end.