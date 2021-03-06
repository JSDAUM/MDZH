{****************************************************************}
{ TWebImage component                                            }
{ for Delphi 3.0,4.0,5.0,6.0 C++Builder 3,4,5                    }
{ version 1.1                                                    }
{                                                                }
{ written by                                                     }
{   TMS Software                                                 }
{   copyright ? 2000-2001                                        }
{   Email : info@tmssoftware.com                                 }
{   Web : http://www.tmssoftware.com                             }
{****************************************************************}

unit WebImgR;

interface

uses
  WebImage, WebImgDE, Classes,
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
  RegisterComponents('TMS Web', [TWebImage]);
  RegisterPropertyEditor(TypeInfo(TWebPicture), TWebImage, 'WebPicture', TWebPictureProperty);
end;

end.

