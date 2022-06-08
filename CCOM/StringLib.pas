{ Copyright Daniel William Grace BSc. MMngtSc. 1999
  This code may be used freely provided this file together with these
  5 comment lines remains intact. Any ideas for improvement would be
  appreciated. Offers of work? E-mail: dan@landemann.freeserve.co.uk
}

unit stringlib;

{ ANSI compatible string library version 1.4. }

{ Abbreviations
  k - length parameter
  p - position parameter
  s - primary string parameter
  s1 - secondary string parameter }

interface
  function LeftStr(s : string; k : integer): string;
  function RightStr(s : string; k : integer): string;
  function MidStr(s : string; p, k : integer): string;
  function LeftPosStr(s, s1 : string; n : integer): integer;
  function RightPosStr(s, s1 : string; n : integer): integer;
  function StripAllStr(s, s1 : string): string;
  function StripStr(s, s1 : string; n : integer): string;
  function TrimLeftStr(s, s1 : string; n : integer): string;
  function TrimRightStr(s, s1 : string; n : integer): string;
  function PadLeftStr(s, s1 : string; k : integer): string;
  function PadRightStr(s, s1 : string; k : integer): string;
  function PadMidStr(s, s1 : string; p, k : integer): string;
  function InsertLeftStr(s, s1 : string; n : integer): string;
  function InsertRightStr(s, s1 : string; n : integer): string;
  function InsertMidStr(s, s1 : string; p, n : integer): string;
  function ReplaceAllStr(s, s1, s2 : string): string;
  function ReplaceStr(s, s1, s2 : string; n : integer): string;
  function ConvToUpperStr(s : string; p, k : integer): string;
  function ConvToLowerStr(s : string; p, k : integer): string;
  function CountStr(s, s1 : string): integer;
  function IIfStr(b : boolean; s, s1: string): string;
  function ValidChrStr(s, s1 : string): boolean;
  function ValidIntStr(s : string; a, b : integer; var i : integer): boolean;
  function ValidLenStr(s : string; a, b : integer): boolean;
  function TokenStr(s, s1 : string; n : integer): string;

implementation
uses
  sysutils;

const
  ASCII_UPPER_A = 65;
  ASCII_UPPER_Z = 90;
  ASCII_LOWER_A = 97;
  ASCII_LOWER_Z = 122;

{ PRIVATE FUNCTIONS }
{------------------------------------------------------------------------------}
function MatchStr(s, s1 : string; var i, j : integer;
  ls, ls1 : integer): boolean;
{------------------------------------------------------------------------------}
{ Returns true if s1 is found at position i in s. }
var
  k : integer;
begin
  j := i; k := 1;
  while (s[j] = s1[k]) and (j <= ls) and (k <= ls1) do begin
    inc(j); inc(k);
  end;
  Result := (k = ls1 + 1)
end;

{------------------------------------------------------------------------------}
function Bound(x, lw, up : integer): integer;
{------------------------------------------------------------------------------}
{ Returns the closest integer to x bounded between l and u. }
begin
  if (x < lw) then Result := lw
  else if (x > up) then Result := up
  else Result := x;
end;

{ PUBLIC FUNCTIONS }
{------------------------------------------------------------------------------}
function LeftStr(s : string; k : integer): string;
{------------------------------------------------------------------------------}
{ Returns len number of characters in the left part of the string s. }
begin
  if (k < 1) or (Length(s) < k) then Result := ''
  else Result := Copy(s, 1, k);
end;

{------------------------------------------------------------------------------}
function RightStr(s : string; k : integer): string;
{------------------------------------------------------------------------------}
{ Returns k number of characters in the right part of the string s. }
var temp : integer;
begin
  temp := Length(s);
  if (k < 1) or (temp < k) then Result := ''
  else Result := Copy(s, temp - k + 1, k);
end;

{------------------------------------------------------------------------------}
function MidStr(s : string; p, k : integer): string;
{------------------------------------------------------------------------------}
{ Returns k number of characters starting with the p th character. }
var
  ls : integer;
begin
  ls := Length(s); p := Bound(p, 1, ls);
  if ((p + k - 1) > ls) or (p < 1) or (k < 0) then Result := ''
  else Result := Copy(s, p, k);
end;

{------------------------------------------------------------------------------}
function LeftPosStr(s, s1 : string; n : integer): integer;
{------------------------------------------------------------------------------}
{ Returns the position of the nth occurence of string s1 in string s counting
  from the left. }
var
  i, j, ls, ls1 : integer; found : boolean;
begin
  i := 1; found := false; ls := Length(s); ls1 := Length(s1);
  while (i <= ls) and not(found) do begin
    if MatchStr(s, s1, i, j, ls, ls1) then begin { occurence found ... }
      dec(n);
      if (n = 0) then found := true { all occurences found }
      else { skip past end of occurence } i := j;
    end
    else inc(i);
  end;
  if found then Result := i else Result := 0;
end;

{------------------------------------------------------------------------------}
function RightPosStr(s, s1 : string; n : integer): integer;
{------------------------------------------------------------------------------}
{ Returns the position of the nth occurence of string s1 in string s counting
  from the left. }
var
  i, j, ls, ls1 : integer; found : boolean;
begin
  found := false; ls := Length(s); ls1 := Length(s1); i := ls - ls1 + 2;
   while (i > 1) and not(found) do begin
    dec(i);
    if MatchStr(s, s1, i, j, ls, ls1) then begin { occurence found ... }
      dec(n);
      if (n = 0) then found := true else i := i - ls1 + 1;
    end;
  end;
  if found then Result := i else Result := 0;
end;

{------------------------------------------------------------------------------}
function StripAllStr(s, s1 : string): string;
{------------------------------------------------------------------------------}
{ Strips all occurences of string s1 from s. }
var
  i, j, ls, ls1 : integer; c : string;
begin
  i := 1; ls := Length(s); ls1 := Length(s1); c := '';
  while (i <= ls) do begin
    if MatchStr(s, s1, i, j, ls, ls1) then i := j
    else begin { no occurence ... }
      c := c + s[i]; inc(i);
    end;
  end;
  Result := c;
end;

{------------------------------------------------------------------------------}
function StripStr(s, s1 : string; n : integer): string;
{------------------------------------------------------------------------------}
{ Strips the nth occurence of s1 from s. }
var
  i, ls, ls1 : integer; left_s, right_s : string;
begin
  i := LeftPosStr(s, s1, n);
  if i = 0 then Result := s
  else begin
    if (i = 1) then left_s := '' else left_s := LeftStr(s, i - 1);
    ls :=  Length(s); ls1 := Length(s1);
    if (i - ls1 = ls) then right_s := ''
      else right_s := RightStr(s, ls - i - ls1);
   Result := left_s + right_s;
  end;
end;

{------------------------------------------------------------------------------}
function TrimLeftStr(s, s1 : string; n : integer): string;
{------------------------------------------------------------------------------}
{ Trims at most n occurences (if n is zero then all occurences) of s1 from the
  immediate left of s. }
var
  j, ls, ls1 : integer; done : boolean;
begin
  done := false; ls := Length(s); ls1 := Length(s1);
  while not done do begin
    j := LeftPosStr(s, s1, 1);
    if (j = 1) then begin
      s := RightStr(s, ls - ls1); ls := Length(s); dec(n); done := (n = 0);
    end
    else done := true;
  end;
  Result := s;
end;

{------------------------------------------------------------------------------}
function TrimRightStr(s, s1 : string; n : integer): string;
{------------------------------------------------------------------------------}
{ Trims at most n occurences (if n is zero then all occurences) of s1 from the
  immediate right of s. }
var
  j, ls, ls1 : integer; done : boolean;
begin
  done := false; ls := Length(s); ls1 := Length(s1);
  while not done do begin
    j := RightPosStr(s, s1, 1);
    if (j = ls - ls1 + 1) then begin
      s := LeftStr(s, ls - ls1); ls := Length(s); dec(n); done := (n = 0);
    end
    else done := true;
  end;
  Result := s;
end;

{------------------------------------------------------------------------------}
function PadLeftStr(s, s1 : string; k : integer): string;
{------------------------------------------------------------------------------}
{ Pads the string s on the left with the string s1, returning the result to the
  specified length counting from the left (or as near as possible - e.g. it does
  not use substrings of s1 to reach the specified length. For example
  PadLeftStr('345', '12', 6) = '12345', not '112345'. }
var
  ls, ls1 : integer;
begin
  ls :=  Length(s); ls1 := Length(s1);
  if k <= ls then Result := LeftStr(s, k)
  else begin
    while (ls + ls1 <= k) do begin
      s := s1 + s; ls := ls + ls1;
    end;
    Result := s;
  end;
end;

{------------------------------------------------------------------------------}
function PadRightStr(s, s1 : string; k : integer): string;
{------------------------------------------------------------------------------}
{ Pads the string s on the right with the string s1, returning the result to the
  specified length counting from the right(or as near as possible - e.g. it does
  not use substrings of s1 to reach the specified length.) }
var
  ls, ls1 : integer;
begin
  ls :=  Length(s); ls1 := Length(s1);
  if k <= ls then Result := RightStr(s, k)
  else begin
    while (ls + ls1 <= k) do begin
      s := s + s1; ls := ls + ls1;
    end;
    Result := s;
  end;
end;

{------------------------------------------------------------------------------}
function PadMidStr(s, s1 : string; p, k : integer): string;
{------------------------------------------------------------------------------}
{ Pads the string s in the middle at the position p with the string s1,
  returning the result to the specified length counting from the left. (or as
  near as possible - e.g. it does not use substrings of s1 to reach the
  specified length.) }
var
  ls, ls1, t : integer; c : string;
begin
  ls :=  Length(s); ls1 := Length(s1);
  if k <= ls then Result := LeftStr(s, k)
  else begin
    p := Bound(p, 1, ls);
    c := LeftStr(s, p - 1);  t := ls - p + 1;
    while (ls + ls1 <= k) do begin
      c := c + s1; ls := ls + ls1;
    end;
    Result := c + RightStr(s, t);
  end;
end;

{------------------------------------------------------------------------------}
function InsertLeftStr(s, s1 : string; n : integer): string;
{------------------------------------------------------------------------------}
{ Inserts n copies of the string s1 to the left of s. }
var
  i : integer;
begin
  for i := 1 to n do s := s1 + s;
  Result := s;
end;

{------------------------------------------------------------------------------}
function InsertRightStr(s, s1 : string; n : integer): string;
{------------------------------------------------------------------------------}
{ Inserts the n copies of the string s1 to the right of s. }
var
  i : integer;
begin
  for i := 1 to n do s := s + s1;
  Result := s;
end;

{------------------------------------------------------------------------------}
function InsertMidStr(s, s1 : string; p, n : integer): string;
{------------------------------------------------------------------------------}
{ Inserts n copies of the string s1 at position p in s. }
var
  i, ls : integer; c : string;
begin
  c := LeftStr(s, p - 1);
  for i := 1 to n do c := c + s1;
  ls := Length(s); Result := c + RightStr(s, ls - p + 1);
end;

{------------------------------------------------------------------------------}
function ReplaceAllStr(s, s1, s2 : string): string;
{------------------------------------------------------------------------------}
{ Replaces all occurences of s1 in s with s2. }
var
  i, j, ls, ls1 : integer; c : string;
begin
  i := 1; ls := Length(s); ls1 := Length(s1); c := '';
  while (i <= ls) do begin
    if MatchStr(s, s1, i, j, ls, ls1) then begin
      c := c + s2;
      i := j;
    end
    else begin { no occurence ... }
      c := c + s[i]; inc(i);
    end;
  end;
  Result := c;
end;

{------------------------------------------------------------------------------}
function ReplaceStr(s, s1, s2 : string; n : integer): string;
{------------------------------------------------------------------------------}
{ Replaces the nth occurence of s1 in s with s2. }
var
  i, ls, ls1 : integer; left_s, right_s : string;
begin
  i := LeftPosStr(s, s1, n);
  if i = 0 then Result := s
  else begin
    if (i = 1) then left_s := '' else left_s := LeftStr(s, i - 1);
    ls :=  Length(s); ls1 := Length(s1);
    if (i - ls1 = ls) then right_s := ''
      else right_s := RightStr(s, ls - i - ls1);
   Result := left_s + s2 + right_s;
  end;
end;

{------------------------------------------------------------------------------}
function ConvToUpperStr(s : string; p, k : integer): string;
{------------------------------------------------------------------------------}
{ Converts lower case letters to upper case. }
var
  i, a, t, ls : integer; cs : string;
begin
  ls := Length(s); cs := Copy(s, 1, ls); t := - ASCII_LOWER_A + ASCII_UPPER_A;
  p := Bound(p, 1, ls);
  for i := p to k do begin
    a := ord(s[i]);
    if (a >= ASCII_LOWER_A) and (a <= ASCII_LOWER_Z)
    then cs[i] := chr(a + t)
    else cs[i] := chr(a);
  end;
  Result := cs;
end;

{------------------------------------------------------------------------------}
function ConvToLowerStr(s : string; p, k : integer): string;
{------------------------------------------------------------------------------}
{ Converts upper case letters to lower case. }
var
  i, a, t, ls : integer; cs : string;
begin
  ls := Length(s); cs := Copy(s, 1, ls); t := ASCII_LOWER_A - ASCII_UPPER_A;
  p := Bound(p, 1, ls);
  for i := p to k do begin
    a := ord(s[i]);
    if (a >= ASCII_UPPER_A) and (a <= ASCII_UPPER_Z)
    then cs[i] := chr(a + t)
    else cs[i] := chr(a);
  end;
  Result := cs;
end;

{------------------------------------------------------------------------------}
function CountStr(s, s1 : string): integer;
{------------------------------------------------------------------------------}
{ Counts the number of occurences of string s1 in string s, starting at
  position p and continuing for the specified length. }
var
  i, j, k, ls, ls1 : integer; c : string;
begin
  i := 1; ls := Length(s); ls1 := Length(s1); c := ''; k := 0;
  while (i <= ls) do begin
    if MatchStr(s, s1, i, j, ls, ls1) then begin
      inc(k); i := j;
    end
    else inc(i);
  end;
  Result := k;
end;

{------------------------------------------------------------------------------}
function IIfStr(b : boolean; s, s1: string): string;
{------------------------------------------------------------------------------}
{ Returns s if b is true s1 otherwise }
begin
  if b then Result := s else Result := s1;
end;

{------------------------------------------------------------------------------}
function ValidChrStr(s, s1 : string): boolean;
{------------------------------------------------------------------------------}
{ Returns true if all the characters of string s are in s1, false otherwise. }
var
  i, j, ls, ls1 : integer; ok, found : boolean;
begin
  ls := Length(s); ls1 := Length(s1); ok := true; i := 1;
  while (i <= ls) and ok do begin
    found := false; j := 1;
    while (j <= ls1) and not found do
      if (s[i] = s1[j]) then found := true
      else inc(j);
    ok := found; inc(i);
  end;
  Result := ok;
end;

{------------------------------------------------------------------------------}
function ValidIntStr(s : string; a, b : integer; var i : integer): boolean;
{------------------------------------------------------------------------------}
{ Validates an integer. }
var
  code, t : integer;
begin
  Val(s, t, code);
  if (code = 0) and (t >= a) and (t <= b)
  then begin
    i := t; Result := True;
  end
  else Result := False;
end;

{------------------------------------------------------------------------------}
function ValidLenStr(s : string; a, b : integer): boolean;
{------------------------------------------------------------------------------}
{ Validates the length of a string. }
var
  ls : integer;
begin
  ls := Length(s);
  if (ls >= a) and (ls <= b) then Result := True
  else Result := False;
end;

{------------------------------------------------------------------------------}
function TokenStr(s, s1 : string; n : integer): string;
{------------------------------------------------------------------------------}
{ Gets the nth token (string) in s whose tokens are separated by the delimeter
  string in s1. }
var
  i, j, ls : integer;
begin
  ls := Length(s);
  if (n < 1) or (ls = 0) then Result := ''
  else begin
    { Calculate 1st character position of the nth token. }
    if (n = 1) then i := 1 else i := LeftPosStr(s, s1, n - 1) + Length(s1);
    if (i > ls) then Result := ''
    else begin
      { Calculate 1st character after nth token. }
      j := LeftPosStr(s, s1, n);
      if (j = 0) then j := ls + 1;
      Result := MidStr(s, i, j - i);
    end;
  end;
end;

end.
