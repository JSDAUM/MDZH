{********************************************************************
TRTFLabel component
for Delphi 2.0,3.0,4.0,5.0 C++Builder 1.0,3.0,4.0,5.0
version 1.2

written by
   TMS Software
   copyright ? 1999-2000
   Email : info@tmssoftware.com
   Web : http://www.tmssoftware.com

The source code is given as is. The author is not responsible
for any possible damage done due to the use of this code.
The component can be freely used in any application. The complete
source code remains property of the author and may not be distributed,
published, given or sold in any form as such. No parts of the source
code can be included in any other component or application without
written authorization of the author.
********************************************************************}

unit rtflreg;

interface

uses
  RTFLabel, RTFLDE, Classes,
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
 RegisterComponents('TMS',[ TRTFLabel ]);
 RegisterPropertyEditor(TypeInfo(TRichText),TRTFLabel,'RichText',TRichTextProperty);
end;

end.

