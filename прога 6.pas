var f:file of real;
    a,b,max,min,x:real;
    i,imn,imx:integer;
begin
assign(f,'6.txt');
rewrite(f);
writeln('Введите в файл действительные числа, окончание ввода 0:');
repeat
write('a=');
readln(a);
write(f,a);
until a=0;
writeln('Содержание исходного файла:');
reset(f);
while not eof(f) do
 begin
  read(f,a);
  write(a:0:2,' ');
 end;
writeln;
close(f);
reset(f);
read(f,min);
max:=min;
imn:=0;
imx:=0;
for i:=0 to filesize(f)-1 do
 begin
  seek(f,i);
  read(f,a);
  if a>max then
   begin
    max:=a;
    imx:=i;
   end;
  if a<min then
   begin
    min:=a;
    imn:=i;
   end;
 end;
close(f);
writeln;
writeln('Минимальный =',min:0:2,' его индекс=',imn);
writeln('Максимальный=',max:0:2,' его индекс=',imx);
writeln;
reset(f);
seek(f,imn);
read(f,a);
seek(f,imx);
read(f,b);
seek(f,imn);
write(f,b);
seek(f,imx);
write(f,a);
close(f);
writeln('Содержание файла после обмена макс и мин элементов:');
reset(f);
while not eof(f) do
 begin
  read(f,a);
  write(a:0:2,' ');
 end;
close(f);
readln
end.