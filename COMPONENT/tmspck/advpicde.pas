{**************************************************************************}
{ TAdvPicture design editor                                                }
{ for Delphi 4.0,5.0,6.0 C++Builder 4,5                                    }
{ version 1.2                                                              }
{                                                                          }
{ written                                                                  }
{   TMS Software                                                           }
{   copyright ? 2000 - 2001                                                }
{   Email : info@tmssoftware.com                                           }
{   Web : http://www.tmssoftware.com                                       }
{                                                                          }
{ The source code is given as is. The author is not responsible            }
{ for any possible damage done due to the use of this code.                }
{ The component can be freely used in any application. The complete        }
{ source code remains property of the author and may not be distributed,   }
{ published, given or sold in any form as such. No parts of the source     }
{ code can be included in any other component or application without       }
{ written authorization of the author.                                     }
{**************************************************************************}

unit advpicde;

interface

uses
  Forms, Windows, Classes, Controls, Dialogs, ExtDlgs, AdvPicture,
{$IFDEF VER140}
  DesignIntf, DesignEditors
{$ELSE}
  DsgnIntf
{$ENDIF}
  ;


type
  TAdvPictureProperty = class(TClassProperty)
  public
    function GetAttributes: TPropertyAttributes; override;
    procedure Edit; override;
    procedure SetValue(const Value: String); override;
    function GetValue: String; override;
  end;


implementation

{ TAdvPictureProperty }

procedure TAdvPictureProperty.Edit;
var
  opendialog: TOpenPictureDialog;
begin
  inherited;
  opendialog := TOpenPictureDialog.Create(nil);

  opendialog.Filter := 'All (*.jpg;*.jpeg;*.gif;*.bmp;*.ico;*.emf;*.wmf)|*.jpg;*.jpeg;*.gif;*.bmp;*.ico;*.emf;*.wmf|JPEG Image File (*.jpg)|*.jpg|JPEG Image File (*.jpeg)|*.jpeg|GIF files (*.gif)|*.gif|Bitmaps (*.bmp)|*.bmp|Icons (*.ico)|*.ico|';
  opendialog.Filter := opendialog.Filter+'Enhanced Metafiles (*.emf)|*.emf|Metafiles (*.wmf)|*.wmf';

  if opendialog.Execute then
  begin
    TIPicture(GetOrdValue).LoadFromFile(Opendialog.FileName);
  end;
  opendialog.Free;
end;

function TAdvPictureProperty.GetAttributes: TPropertyAttributes;
begin
  Result := [paDialog];
end;

function TAdvPictureProperty.GetValue: String;
begin
  if not TIPicture(GetOrdValue).Empty then
    Result := '(TPicture)'
  else
    Result := '(None)';
end;

procedure TAdvPictureProperty.SetValue(const Value: String);
begin
  inherited;
  if Value = '' then
    TIPicture(GetOrdValue).Assign(nil);
end;



end.
