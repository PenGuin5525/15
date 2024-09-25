program treu;
 {Ââåäèòå òðè ÷èñëà. Åñëè îíè ìîãóò áûòü äëèíàìè ñòîðîí ðàçíîñòîðîííåãî
 îñòðîóãîëüíîãî òðåóãîëüíèêà, âûâåäèòå èõ â ïîðÿäêå âîçðàñòàíèÿ
 è âû÷èñëèòå ïëîùàäü ïîëó÷åííîãî  òðåóãîëüíèêà }
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
  Writeln('Ââåäèòå äëèíû ñòîðîí òðåóãîëüíèêà');
  Readln(ab,bc,ca);

  if not((ab > 0) and (bc > 0) and (ca > 0) and (ab + bc - ca > e ) and (ab + ca - bc > e) and (bc + ca - ab > e)) then begin
      Writeln('Òðåóãîëüíèê íå ñóùåñòâóåò'); end
  else begin
      if not((ab <> bc) and (bc <> ca) and (ab <> ca)) then begin
        Writeln('Òðåóãîëüíèê íå ðàçíîñòîðîííèé')end
      else begin
          if not((ab * ab + bc * bc - ca*ca> e ) and (ab * ab + ca*ca - bc * bc  > e ) and (ca * ca + bc * bc - ab * ab  > e)) then begin
            Writeln('Òðåóãîëüíèê íå îñòðîóãîëüíûé') end
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
            Writeln('Ïëîùàäü òðåóãîëüíèêà = ',square);
            Writeln('Äëèíû ñòîðîí â ïîðÿäêå âîçðàñòàíèÿ ( òî÷íîñòü äî ìèëëèîíîé): ',min,' ', mid,' ', max);

          end;// if not((ab * ab + bc * bc > ca*ca) and (ab * ab + ca*ca > bc * bc) and (ca * ca + bc * bc > ab * ab))
      end;// if not((ab <> bc) and (bc <> ca) and (ab <> ca))
  end;// if not((ab > 0) and (bc > 0) and (ca > 0) and (ab + bc > ca) and (ab + ca > bc) and (bc + ca > ab))
  Readln;
end.
