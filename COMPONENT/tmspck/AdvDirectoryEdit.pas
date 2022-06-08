{*********************************************************************}
{ TAdvDirectoryEdit                                                   }
{ for Delphi 3.0,4.0,5.0,6.0 & C++Builder 3.0,4.0,5.0                 }
{ version 1.0                                                         }
{                                                                     }
{ written by                                                          }
{  TMS Software                                                       }
{  copyright © 2002                                                   }
{  Email : info@tmssoftware.com                                       }
{  Web : http://www.tmssoftware.com                                   }
{                                                                     }
{ The source code is given as is. The author is not responsible       }
{ for any possible damage done due to the use of this code.           }
{ The component can be freely used in any application. The source     }
{ code remains property of the author and may not be distributed      }
{ freely as such.                                                     }
{*********************************************************************}

unit AdvDirectoryEdit;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, AdvEdBtn, AdvEdit;

{$I TMSDEFS.INC}  

type
  TAdvDirectoryEdit = class(TAdvEditBtn)
  private
    { Private declarations }
    FDummy: Byte;
    FOnClickBtn:TNotifyEvent;
    FOnValueValidate: TValueValidateEvent;
  protected
    { Protected declarations }
    procedure BtnClick (Sender: TObject); override;
    procedure ValueValidate(Sender: TObject; Value: String; Var IsValid: Boolean); Virtual;

  public
    { Public declarations }
    constructor Create(AOwner: TComponent); override;
  published
    property AutoThousandSeparator: Byte read FDummy;
    property EditAlign: Byte read FDummy;
    property EditType: Byte read FDummy;
    property ExcelStyleDecimalSeparator: Byte read FDummy;
    property PasswordChar: Byte read FDummy;
    property Precision: Byte read FDummy;
    property Signed: Byte read FDummy;
    property ShowURL: Byte read FDummy;
    property URLColor: Byte read FDummy;

    property OnClickBtn: TNotifyEvent read FOnClickBtn;
    property OnValueValidate: TValueValidateEvent read fOnValueValidate;
  end;

implementation

uses
 {$WARNINGS OFF}
 // avoid platform specific warning 
  FileCtrl, ShlObj, ActiveX;
 {$WARNINGS ON}

{$R *.RES}

constructor TAdvDirectoryEdit.Create(AOwner: TComponent);
begin
  Inherited;
  Glyph.LoadFromResourceName (HInstance, 'AdvDirectoryEdit');
  Button.OnClick := BtnClick;
  Inherited OnValueValidate := ValueValidate;
  ButtonWidth := 18;
end;

{$IFNDEF DELPHI5_LVL}
function ExcludeTrailingBackslash(DirName: string): string;
begin
  if Length(DirName) > 0 then
  begin
    if (DirName[Length(DirName)] in ['\','/']) then
      Delete(DirName,Length(DirName),1);
  end;
  Result := DirName;
end;
{$ENDIF}

Function AdvDirectoryEditCallBack (Wnd: HWND; uMsg: UINT; lParam, lpData: LPARAM): Integer; stdcall;
var
  Temp: String;
  pt: TPoint;
begin
  if uMsg = BFFM_INITIALIZED then
  begin
    with TAdvDirectoryEdit (lpData) Do
    begin
      {$WARNINGS OFF}
      // avoid platform specific warning
      if Text = '' then
        Temp := GetCurrentDir
      else
        Temp := ExcludeTrailingBackslash (Text);
      {WARNINGS ON}

      SendMessage (Wnd, BFFM_SETSELECTION, 1, Integer(PChar(Temp)));

      with TAdvDirectoryEdit(lpData) do
      begin
        pt := Point(0,Height);
        pt := ClientToScreen(pt);
        SetWindowPos(wnd,HWND_NOTOPMOST,pt.X,pt.Y,0,0,SWP_NOSIZE or SWP_NOZORDER);
      end;
    end;
  end;
  Result := 0;
end;

procedure TAdvDirectoryEdit.BtnClick (Sender: TObject);
var
  bi: TBrowseInfo;
  iIdList: PItemIDList;
  DisplayName: String;
  MAlloc: IMalloc;
begin
  FillChar(bi, sizeof(bi), #0);
  SetLength (DisplayName, MAX_PATH);

  with bi do
  begin
    if Text <> '' Then
      DisplayName := Text
    else
      DisplayName := GetCurrentDir;
    hwndOwner := Application.Handle;
    pszDisplayName := PChar (DisplayName);
    lpszTitle := 'Select Directory';
    ulFlags := BIF_RETURNONLYFSDIRS;
    lpfn := AdvDirectoryEditCallBack;
    lParam := Integer(Self);
  end;

  iIdList := Nil;
  try
    iIdList := SHBrowseForFolder(bi);
  except
  end;

  if iIdList <> Nil then
  begin
    try
      SetLength (DisplayName, MAX_PATH);
      if SHGetPathFromIDList (iIdList, PChar(DisplayName)) then
      begin
        if Text <> DisplayName then
        begin
          Text := DisplayName;
          Modified := True;
        end;
      end;
    finally
      SHGetMalloc(MAlloc);
      MAlloc.Free(iIdList);
    end;
  end;
end;

procedure TAdvDirectoryEdit.ValueValidate(Sender: TObject; Value: String; Var IsValid: Boolean);
begin
  IsValid := DirectoryExists (Value);
end;

end.
