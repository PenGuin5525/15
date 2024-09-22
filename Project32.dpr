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
  Writeln('Введите координаты точки');
  Readln(x,y);

  if y >=  Sqr(x) -2 then begin
    if ((y <=0) and (y>=x)) or (y<=x) then
      Writeln('Точка принадлежит')
    else
        Writeln('Точка не принадлежит')
  end
  else
    Writeln('Точка не принадлежит');
  Readln;
end.
