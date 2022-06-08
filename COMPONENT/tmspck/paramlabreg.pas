{********************************************************************
TPARAMLABEL component
for Delphi 2.0, 3.0, 4.0, 5.0 & C++Builder 1.0, 3.0, 4.0, 5.0
version 1.0

written by TMS Software
           copyright © 2000
           Email : info@tmssoftware.com
           Web : http://www.tmssoftware.com
{********************************************************************}

unit paramlabreg;

interface

{$IFDEF VER90}
 {$DEFINE NOEDITOR}
{$ENDIF}

{$IFDEF VER93}
 {$DEFINE NOEDITOR}
{$ENDIF}

uses
  ParamLabel, Classes,
{$IFNDEF NOEDITOR}
  HTMLDE,
{$IFDEF VER140}
  DesignIntf, DesignEditors
{$ELSE}
  DsgnIntf
{$ENDIF}
{$ENDIF}
  ;


procedure Register;

implementation

procedure Register;
begin
 RegisterComponents('TMS', [TParamLabel]);
 {$IFNDEF NOEDITOR}
 RegisterPropertyEditor(TypeInfo(TStringList), TParamLabel, 'HTMLText', THTMLTextProperty);
 {$ENDIF}

end;



end.

