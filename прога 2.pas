var
 S: ShortString;
 var input,output: file of ShortString;
 m, i: integer;
begin
  Assign(input,'вход2.txt');
  Rewrite(input);
   write('Введите строки исходного файла:');
  for i:=1 to 5 do
  begin
       readln(s);
       write(input,s);
  end;
  Reset(input);
  Assign(output,'выход2.txt');
  Rewrite(output);
 
 m:=-1;
 
 while (not eof(input)) do
  begin
   Read(input,S);
   if (Length(S)>m) or (m=-1) then
   m:=Length(S);
  end;
 
 Close(input);
 Reset(input);
 
 while (not eof(input)) do
  begin
   Read(input,S);
   if Length(S)=m then
   Write(output,S);
  end;
 
 Close(input);
 Close(output);
end.