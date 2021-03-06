{**********************************************************
TANIICON component
for Delphi 2.0, 3.0, 4.0, 5.0 C++Builder 1,3,4
version 2.0

written
  TMS Software
  copyright ? 1998-1999
  Email : info@tmssoftware.com
  Web : http://www.tmssoftware.com

The source code is given as is. The author is not responsible
for any possible damage done due to the use of this code.
The component can be freely used in any application. The source
code remains property of the writer and may not be distributed
freely as such.
***********************************************************}

unit anireg;

interface

uses
  AniIcon, Classes,AniDE,
{$IFDEF VER140}
  DesignIntf, DesignEditors
{$ELSE}
  DsgnIntf
{$ENDIF}
  ;


procedure Register;

implementation

procedure Register;
begin
 RegisterComponents('TMS',[TAniIcon]);
 RegisterPropertyEditor(TypeInfo(TAniIconFile), TAniIcon, 'AniFile', TAniProperty);
end;

end.

