var
  f: Text;
  a, b, max: integer;
  S: string;
 
begin
  Assign(f, '5.txt');
  Rewrite(f);
  
  for a := 1 to 10 do
  begin
    b := Random(10);
    Write(f, b);
  end;
  
  Close(f);
  
  Reset(f);
  Read(f, S);
  
  max := StrToInt(S[2]);
  
  for a := 2 to S.Length - 1 do
  begin
    if StrToInt(S[a]) > StrToInt(S[a - 1]) then
      if StrToInt(S[a]) > StrToInt(S[a + 1]) then
        max := StrToInt(S[a]);
  end;
  
  Writeln(max);
end.