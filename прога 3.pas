var f,g,h:file of real;
    n, i:integer;
    a:real;
begin
randomize;
assign(f,'вход3.txt');
rewrite(f);
write('Введите количество чисел исходного файла: ');
readln(n);
for i:=1 to n do
 begin
  a:=10*random;
  write(f,a);
 end;
randomize;
reset(f);
assign(g,'выход3.1.txt');
rewrite(g);
assign(h,'выход3.2.txt');
rewrite(h);
writeln('Содержание исходного файла:');
for i:=0 to filesize(f)-1 do
 begin
  read(f,a);
  write(a:0:2,' ');
  if odd(i)then write(g,a)
  else write(h,a)
 end;
writeln;
writeln;
seek(g,0);
writeln('Содержание файла чисел с четными номерами:');
while not eof(g) do
 begin
  read(g,a);
  write(a:0:2,' ');
 end;
close(g);
writeln;
writeln;
seek(h,0);
writeln('Содержание файла чисел с нечетными номерами:');
while not eof(h) do
 begin
  read(h,a);
  write(a:0:2,' ');
 end;
close(h);
end.