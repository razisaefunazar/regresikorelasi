program Project1;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var
  x1,x2,x3,x4,y1,y2,y3,y4,n,x: Integer;

paket1,paket2,paket3,paket4,paket5,paket6,paket7,paket8,paket9,paket10,paket11,paket12: LongInt;
sigmaxi,sigmax2,sigmayi,sigmay2,sigmaxy,sigmayi2: LongInt;

hasil,hasil2,hasil3,hasil4,hasil5,hasil6,akar:Real;



begin
  { TODO -oUser -cConsole Main : Insert code here }
  Writeln('REGRESI DAN KORELASI');
  Writeln('Nama : Muhammad Razi Saefunazar');
  Writeln('Nrp  : 152017038');
  Writeln('Kelas: A');
  Writeln('----------------------------------------------------------');
  Writeln;
  Write('masukkan nilai x1 =');
  Readln(x1);
  Write('masukkan nilai x2 =');
  Readln(x2);
  Write('masukkan nilai x3 =');
  Readln(x3);
  Write('masukkan nilai x4 =');
  Readln(x4);
  Write('masukkan nilai y1 =');
  Readln(y1);
  Write('masukkan nilai y2 =');
  Readln(y2);
  Write('masukkan nilai y3 =');
  Readln(y3);
  Write('masukkan nilai y4 =');
  Readln(y4);
  Writeln ('');
  Writeln ('');
  //////rumus perhitungan/////////
  n :=3;
  sigmayi := y1+y2+y3+y4;
  sigmay2 := (y1*y1)+(y2*y2)+(y3*y3)+(y4*y4);
  sigmaxi := x1+x2+x3+x4;
  sigmax2:= x1*x1+x2*x2+x3*x3+x4*x4;
  sigmaxy := sigmaxi*sigmayi;

  Writeln('sigma yi = ',sigmayi);
  Writeln('sigma y2 = ',sigmay2);
  Writeln('sigma xi = ',sigmaxi);
  Writeln('sigma x2 = ',sigmax2);
  Writeln('sigma xy = ',sigmaxy);
  Writeln;

  paket1:= sigmayi*sigmax2;
  Writeln('hasil paket1 = ',paket1);

  paket2:= sigmaxi*sigmaxy;
  writeln('hasil paket2 = ',paket2);

  paket3:= n*sigmax2;
  Writeln('hasil paket3 = ',paket3);

  paket4:= sigmaxi* sigmaxi;
  Writeln('Hasil paket4 = ',paket4);

  hasil:= ((paket1-paket2)/ (paket3-paket4));
  Writeln ('Hasil Konstanta(p1-p2)/(p3-p4) = ', hasil:4:1);

  paket5 := n*sigmaxy;
  Writeln('hasil paket5 = ',paket5);

  paket6 := sigmaxi*sigmayi;
  Writeln('Hasil Paket6 = ',paket6);

  paket7:= n*sigmaxi;
  Writeln('Hasil Paket7 = ',paket7);

  paket8 := sigmaxi*sigmaxi;
  Writeln('Hasil Paket8 = ',paket8);

  hasil2:= ((paket5-paket6)/(paket7-paket8));
  Writeln ('Hasil Koefisien(p5-p6)/(p7-p8)= ', hasil2:4:1);

  Writeln;
  Writeln ('Model regresi Y = a(konstanta) + bX(koefisien(1)) = ');
  x:=1;
  hasil3:= (hasil+(hasil2*x));
  Writeln('Hasil Akhir = ',hasil3:4:1);
  Writeln ('');

  Writeln ('Korelasi Pearson');
  paket9:= 3 * sigmaxy;
  Writeln('Hasil Paket9 = ', paket9);

  paket10:= sigmaxi * sigmayi;
  Writeln('Hasil Paket10 = ', paket10);

  hasil4:= paket9 - paket10;
  Writeln('Hasil Paket atas(p9-p10) = ',hasil4:4:1);

  paket11:= paket3 - paket4;
  Writeln('Hasil Paket11 = ',paket11);

  paket12 := (5*sigmay2) - (sigmayi*sigmayi);
  Writeln('Hasil Paket12 = ', paket12);


  hasil5:= paket11 * paket12;
  Writeln('Hasil Paket bawah(p12*p12) = ', hasil5:4:1);

  akar := Sqrt(paket5);
  Writeln('Akar(akar2 p5)= ', akar:4:2);
  Writeln ('====================');
  hasil6:= hasil4 / akar ;
  Writeln('Hasil Akhir Korelasi Pearson(hasil pkt atas / akar) = ', hasil6:4:1);
  Readln;



end.

