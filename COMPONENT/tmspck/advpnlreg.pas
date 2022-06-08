{*************************************************************************}
{ TAdvPanel & TAdvPanelGroup component                                    }
{ for Delphi 3.0,4.0,5.0,6.0 & C++Builder 3,4,5                           }
{ version 1.3                                                             }
{                                                                         }
{ written                                                                 }
{   TMS Software                                                          }
{   copyright © 2000-2002                                                 }
{ Email : info@tmssoftware.com                                            }
{ Web : http://www.tmssoftware.com                                        }
{                                                                         }
{ The source code is given as is. The author is not responsible           }
{ for any possible damage done due to the use of this code.               }
{ The component can be freely used in any application. The source         }
{ code remains property of the writer and may not be distributed          }
{ freely as such.                                                         }
{*************************************************************************}

unit advpnlreg;

interface


uses
  AdvPanel, AdvImgDE, Classes, AdvImage, HTMLSDE,
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
  RegisterComponents('TMS', [TAdvPanel, TAdvPanelGroup]);
  RegisterPropertyEditor(TypeInfo(TAdvImage), TAdvPanel, 'Background', TAdvImageProperty);
  RegisterPropertyEditor(TypeInfo(String), TAdvPanel, 'Text', THTMLStringProperty);
  RegisterPropertyEditor(TypeInfo(String), TPanelCaption, 'Text', THTMLStringProperty);
end;

end.

