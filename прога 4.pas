var f:file of real;
    n,i:integer;
    a,sum:real;
begin
randomize;
assign(f,'4.txt');
rewrite(f); 
write('Сколько чисел записать в файл n=');
readln(n);
for i:=1 to n do
 begin
  a:=10*random; 
  write(f,a);
 end;
reset(f);
writeln('Содержвние файла:');
sum:=0;
for i:=0 to filesize(f)-1 do
 begin
  read(f,a); 
  write(a:0:2,' ');
  if i mod 2<>0 then sum:=sum+a; 
 end;
writeln;
close(f); 
write('Сумма элементов с четными номерами=',sum:0:2);
end.