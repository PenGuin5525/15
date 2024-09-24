program treu;
 {Введите три числа. Если они могут быть длинами сторон разностороннего
 остроугольного треугольника, выведите их в порядке возрастания
 и вычислите площадь полученного  треугольника }
{$APPTYPE CONSOLE}

uses
  SysUtils,
  Windows;

const
    e = 0.000001;
var
    ab,bc,ca,square,p,max,min,mid:Real;
begin
  SetConsoleCP(1251);
  SetConsoleOutputCP(1251);
  Writeln('Введите длины сторон треугольника');
  Readln(ab,bc,ca);

  if not((ab > 0) and (bc > 0) and (ca > 0) and (ab + bc > ca) and (ab + ca > bc) and (bc + ca > ab)) then begin
      Writeln('Треугольник не существует'); end
  else begin
      if not((ab <> bc) and (bc <> ca) and (ab <> ca)) then begin
        Writeln('Треугольник не разносторонний')end
      else begin
          if not((ab * ab + bc * bc > ca*ca) and (ab * ab + ca*ca > bc * bc) and (ca * ca + bc * bc > ab * ab)) then begin
            Writeln('Треугольник не остроугольный') end
          else begin
            p:= (ab + bc + ca) / 2;
            square:= Sqrt(p*(p-ab)*(p-bc)*(p-ca));
            max:=ab;
            mid:=bc;
            min:=ca;
            if bc - ab > e then begin // bc > ab
                max:= mid;
                mid:= ab; end;
            if ca - max > e then begin  // ca > bc
                min:=mid;
                mid:= max;
                max:= ca; end
            else if ca - mid > e then begin   // ab > ca
                    min:=mid;
                    mid:= ca; end;
            Writeln('Площадь треугольника = ',square);
            Writeln('Длины сторон в порядке возрастания ( точность до миллионой): ',min,' ', mid,' ', max);

          end;// if not((ab * ab + bc * bc > ca*ca) and (ab * ab + ca*ca > bc * bc) and (ca * ca + bc * bc > ab * ab))
      end;// if not((ab <> bc) and (bc <> ca) and (ab <> ca))
  end;// if not((ab > 0) and (bc > 0) and (ca > 0) and (ab + bc > ca) and (ab + ca > bc) and (bc + ca > ab))
  Readln;
end.
