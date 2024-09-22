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
  Writeln('Ââåäèòå êîîðäèíàòû òî÷êè');
  Readln(x,y);

  if y >=  x*x -2 then begin
    if ((y <=0) and (y>=x)) or (y<=x) then
      Writeln('Òî÷êà ïðèíàäëåæèò')
    else
        Writeln('Òî÷êà íå ïðèíàäëåæèò')
  end
  else
    Writeln('Òî÷êà íå ïðèíàäëåæèò');
  Readln;
end.
