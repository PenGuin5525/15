program Project32;

{$APPTYPE CONSOLE}

uses
  SysUtils,
  Windows;

var
  x,y:Real;
begin
  SetConsoleCP(1251);
  SetConsoleOutputCP(1251);
  Writeln('������� ���������� �����');
  Readln(x,y);

  if y >=  Sqr(x) -2 then begin
    if ((y <=0) and (y>=x)) or (y<=x) then
      Writeln('����� �����������')
    else
        Writeln('����� �� �����������')
  end
  else
    Writeln('����� �� �����������');
  Readln;
end.
