program ejer9;

var texto:string;i,contA,contE,contI,contO,contU:integer;


procedure contarVocales( letra:char ;var contA,contE,contI,contO,contU:integer);

begin
  case letra of
      'a','A': contA := contA + 1;
      'e','E': contE := contE + 1;
      'i','I': contI := contI + 1;
      'o','O': contO := contO + 1;
      'u','U': contU := contU + 1;
    end;
end;

procedure mayorVocal(contA,contE,contI,contO,contU:integer);
var
  max: integer;
  vocal: char;
begin
  max := contA;
  vocal := 'A';

  if contE > max then
  begin
    max := contE;
    vocal := 'E';
  end;

  if contI > max then
  begin
    max := contI;
    vocal := 'I';
  end;

  if contO > max then
  begin
    max := contO;
    vocal := 'O';
  end;

  if contU > max then
  begin
    max := contU;
    vocal := 'U';
  end;

  writeln('La vocal que mas aparece es: ', vocal);
end;

begin
  
 contA:=0; contE:=0; contI:=0; contO:=0; contU:=0;

  writeln('Ingrese un texto terminado en punto:');
  readln(texto);

  for i := 1 to length(texto) do
  begin
    if texto[i] = '.' then
      break;

    contarVocales(texto[i], contA, contE, contI, contO, contU);
  end;

  mayorVocal(contA,contE,contI,contO,contU);
end.