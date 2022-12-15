var f:file of char;
    x:char;
    i,z:integer;
begin
assign(f,'1.txt');
rewrite(f);
write('Кол-во символов записать в файл z=');
read(z);
writeln('Введите в файл ',z,' символов, в том числе пробел:');
for i:=1 to z do
 begin
  read(x);
  write(f,x);
 end;
reset(f);
writeln('Исходный файл:');
z:=-1;
for i:=0 to filesize(f)-1 do
 begin
  read(f,x);
  write(x);
  if x=' ' then z:=i;
 end;
writeln;
if z=-1 then
 begin
  writeln('Вы забыли ввести пробел.');
  close(f);
 end
else
 begin
  seek(f,z);
  truncate(f);
  writeln('Удаление символов после последнего пробела, включая его:');
  seek(f,0);
  while not eof(f) do
   begin
    read(f,x);
    writeln(x);
   end;
  close(f);
 end;
end.