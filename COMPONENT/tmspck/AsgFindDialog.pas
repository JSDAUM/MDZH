{***************************************************************************}
{ TAdvStringGrid Find dialog component                                      }
{ for Delphi 2.0,3.0,4.0,5.0 & C++Builder 1.0,3.0,4.0,5.0                   }
{ version 1.0   - rel. March 2001                                           }
{                                                                           }
{ written by TMS Software                                                   }
{            copyright ? 2001                                               }
{            Email : info@tmssoftware.com                                   }
{            Web : http://www.tmssoftware.com                               }
{                                                                           }
{ The source code is given as is. The author is not responsible             }
{ for any possible damage done due to the use of this code.                 }
{ The component can be freely used in any application. The complete         }
{ source code remains property of the author and may not be distributed,    }
{ published, given or sold in any form as such. No parts of the source      }
{ code can be included in any other component or application without        }
{ written authorization of the author.                                      }
{***************************************************************************}

{$I TMSDEFS.INC}

unit AsgFindDialog;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, AdvGrid;

type
  TAsgFindDlg = class(TForm)
    Options: TGroupBox;
    Label1: TLabel;
    TextToFind: TComboBox;
    Docase: TCheckBox;
    Whole: TCheckBox;
    MatchFirst: TCheckBox;
    IgnoreHTML: TCheckBox;
    Scope: TRadioGroup;
    OkBtn: TButton;
    CancelBtn: TButton;
    Fixed: TCheckBox;
    gbDirection: TGroupBox;
    cbForwardTB: TCheckBox;
    cbForwardLR: TCheckBox;
    cbBackwardBT: TCheckBox;
    cbBackwardRL: TCheckBox;
    procedure OkBtnClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure CancelBtnClick(Sender: TObject);
    procedure TextToFindChange(Sender: TObject);
    procedure ScopeClick(Sender: TObject);
    procedure cbForwardTBClick(Sender: TObject);
    procedure cbForwardLRClick(Sender: TObject);
    procedure cbBackwardBTClick(Sender: TObject);
    procedure cbBackwardRLClick(Sender: TObject);
    procedure cbForwardTBMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure cbForwardLRMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure cbBackwardBTMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure cbBackwardRLMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  private
    { Private declarations }
    bInhibitcbForwardTB: boolean;
    bInhibitcbForwardLR: boolean;
    bInhibitcbBackwardBT: boolean;
    bInhibitcbBackwardRL: boolean;
  public
    { Public declarations }
    bInhibitToggle: boolean;
    FGrid: TAdvStringGrid;
    FGridCell: TPoint;
    FMsgNoMoreFound: string;
    FMsgNotFound: string;
  end;


  TAdvGridFindDialog = class(TComponent)
  private
    FGrid: TAdvStringGrid;
    FAsgFind: TAsgFindDlg;
    FTxtCaption: string;
    FTxtOptionsWholeWords: string;
    FTxtScope: string;
    FTxtDirForward1: string;
    FTxtDirForward2: string;
    FTxtBtnOk: string;
    FTxtScopeCurrCol: string;
    FTxtOptionsCase: string;
    FTxtOptionsFixedCells: string;
    FTxtOptionsMatchFirst: string;
    FTxtScopeAllCells: string;
    FTxtTextToFind: string;
    FTxtScopeCurrRow: string;
    FTxtBtnCancel: string;
    FTxtDirBackward1: string;
    FTxtDirBackward2: string;
    FTxtDirection: string;
    FTxtOptionsIgnoreHTML: string;
    FTxtOptions: string;
    FMsgNoMoreFound: string;
    FMsgNotFound: string;
  protected
    procedure Notification(AComponent: TComponent; AOperation: TOperation); override;
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    procedure Execute;
  published
    property Grid: TAdvStringGrid read FGrid write FGrid;
    property MsgNotFound: string read FMsgNotFound write FMsgNotFound;
    property MsgNoMoreFound: string read FMsgNoMoreFound write FMsgNoMoreFound;
    property TxtCaption: string read FTxtCaption write FTxtCaption;
    property TxtTextToFind: string read FTxtTextToFind write FTxtTextToFind;
    property TxtDirection: string read FTxtDirection write FTxtDirection;
    property TTxtDirForward1: string read FTxtDirForward1 write FTxtDirForward1;
    property TTxtDirForward2: string read FTxtDirForward2 write FTxtDirForward2;
    property TTxtDirBackward1: string read FTxtDirBackward1 write FTxtDirBackward1;
    property TTxtDirBackward2: string read FTxtDirBackward2 write FTxtDirBackward2;
    property TxtScope: string read FTxtScope write FTxtScope;
    property TxtScopeAllCells: string read FTxtScopeAllCells write FTxtScopeAllCells;
    property TxtScopeCurrRow: string read FTxtScopeCurrRow write FTxtScopeCurrRow;
    property TxtScopeCurrCol: string read FTxtScopeCurrCol write FTxtScopeCurrCol;
    property TxtOptions: string read FTxtOptions write FTxtOptions;
    property TxtOptionsCase: string read FTxtOptionsCase write FTxtOptionsCase;
    property TxtOptionsWholeWords: string read FTxtOptionsWholeWords write FTxtOptionsWholeWords;
    property TxtOptionsMatchFirst: string read FTxtOptionsMatchFirst write FTxtOptionsMatchFirst;
    property TxtOptionsIgnoreHTML: string read FTxtOptionsIgnoreHTML write FTxtOptionsIgnoreHTML;
    property TxtOptionsFixedCells: string read FTxtOptionsFixedCells write FTxtOptionsFixedCells;
    property TxtBtnOk: string read FTxtBtnOk write FTxtBtnOk;
    property TxtBtnCancel: string read FTxtBtnCancel write FTxtBtnCancel;
  end;


implementation

{$R *.DFM}

procedure TAsgFindDlg.OkBtnClick(Sender: TObject);
var
  FirstSearch: Boolean;
  FindParams: TFindParams;

begin
  if Assigned(FGrid) then
  begin
    if (TextToFind.Text <> '') and
       (TextToFind.Items.IndexOf(TextToFind.Text) = -1) then
      TextToFind.Items.Add(TextToFind.Text);

    FindParams := [fnAutoGoto];

    if DoCase.Checked then
      FindParams := FindParams + [fnMatchCase];
    if Whole.Checked then
      FindParams := FindParams + [fnMatchFull];
    if MatchFirst.Checked then
      FindParams := FindParams + [fnMatchStart];
    if IgnoreHTML.Checked then
      FindParams := FindParams + [fnIgnoreHTMLTags];
    if Fixed.Checked then
      FindParams := FindParams + [fnIncludeFixed];
    if cbBackwardBT.Checked or cbBackwardRL.Checked then
      FindParams := FindParams + [fnBackward];
    if cbForwardLR.Checked or cbBackwardRL.Checked then
      FindParams := FindParams + [fnDirectionLeftRight];
    if Scope.ItemIndex = 1 then
      FindParams := FindParams + [fnFindInCurrentRow];
    if Scope.ItemIndex = 2 then
      FindParams := FindParams + [fnFindInCurrentCol];

    FirstSearch := (FGridCell.x = -1) and (FGridCell.y = -1);
    FGridCell := FGrid.Find(FGridCell,TextToFind.Text,FindParams);

    if (FGridCell.x = -1) and (FGridCell.y = -1) then
      if FirstSearch then
        MessageDlg(FMsgNotFound + ' '#13+'"'+TextToFind.Text+'"',mtInformation,[mbOK],0)
      else
        MessageDlg(FMsgNoMoreFound + ' '#13+'"'+TextToFind.Text+'"',mtInformation,[mbOK],0);
  end;
end;

procedure TAsgFindDlg.FormCreate(Sender: TObject);
begin
  FGridCell := Point(-1,-1);
end;

procedure TAsgFindDlg.CancelBtnClick(Sender: TObject);
begin
  Close;
end;

procedure TAsgFindDlg.TextToFindChange(Sender: TObject);
begin
  FGridCell := Point(-1,-1);
end;

{ TAdvGridFindDialog }

constructor TAdvGridFindDialog.Create(AOwner: TComponent);
begin
  inherited;
  FAsgFind := TAsgFindDlg.Create(nil);

  FMsgNotFound := 'Could not find text';
  FMsgNoMoreFound := 'No more occurences of text ';

  FTxtCaption := 'Find text';


  FTxtTextToFind := 'Text to find';

  FTxtDirection := 'Direction';
  FTxtDirForward1 := 'Forward (top to bottom)';
  FTxtDirForward2 := 'Forward (left to right)';
  FTxtDirBackward1 := 'Backward (bottom to top)';
  FTxtDirBackward2 := 'Backward (right to left)';

  FTxtScope := 'Scope';
  FTxtScopeCurrCol := 'Current column only';
  FTxtScopeCurrRow := 'Current row only';
  FTxtScopeAllCells := 'All cells';

  FTxtOptionsCase := '&Case sensitive';
  FTxtOptionsMatchFirst := '&Match from first char';
  FTxtOptionsFixedCells := '&Find in fixed cells';
  FTxtOptionsWholeWords := '&Whole words only';
  FTxtOptionsIgnoreHTML := '&Ignore HTML tags';

  FTxtBtnCancel := 'Cancel';
  FTxtBtnOk := 'Ok';
end;

destructor TAdvGridFindDialog.Destroy;
begin
  FAsgFind.Free;
  inherited;
end;

procedure TAdvGridFindDialog.Execute;
begin
  FAsgFind.FGrid := Self.FGrid;
  FAsgFind.Caption := FTxtCaption;

  FAsgFind.Options.Caption := FTxtOptions;

  FAsgFind.Scope.Items[0] := FTxtScopeAllCells;
  FAsgFind.Scope.Items[1] := FTxtScopeCurrCol;
  FAsgFind.Scope.Items[2] := FTxtScopeCurrRow;

  FAsgFind.Scope.Caption := FTxtScope;
  FAsgFind.gbDirection.Caption := FTxtDirection;

  FAsgFind.Label1.Caption := FTxtTextToFind;

  FAsgFind.Docase.Caption := FTxtOptionsCase;
  FAsgFind.Whole.Caption := FTxtOptionsWholeWords;
  FAsgFind.MatchFirst.Caption := FTxtOptionsMatchFirst;
  FAsgFind.IgnoreHTML.Caption := FTxtOptionsIgnoreHTML;
  FAsgFind.Fixed.Caption := FTxtOptionsFixedCells;

  FAsgFind.OkBtn.Caption := TxtBtnOK;
  FAsgFind.CancelBtn.Caption := TxtBtnCancel;

  FAsgFind.cbForwardTB.Caption := FTxtDirForward1;
  FAsgFind.cbForwardLR.Caption := FTxtDirForward1;
  FAsgFind.cbBackwardBT.Caption := FTxtDirBackward1;
  FAsgFind.cbBackwardRL.Caption := FTxtDirBackward2;

  FAsgFind.FMsgNoMoreFound := FMsgNoMoreFound;
  FAsgFind.FMsgNotFound := FMsgNotFound;

  FAsgFind.Show;
end;

procedure TAdvGridFindDialog.Notification(AComponent: TComponent;
  AOperation: TOperation);
begin
  if (AOperation = opRemove) and (AComponent = FGrid) then
     FGrid := Nil;
  inherited;
end;

procedure TAsgFindDlg.ScopeClick(Sender: TObject);
begin
  // if "Current row only" selected, disable
  // bottom-to-top & top-to-bottom directions
  if Scope.ItemIndex = 1 then
  begin
    cbForwardTB.Enabled := False;
    cbBackwardBT.Enabled := False;
    cbBackwardRL.Enabled := True;
    cbForwardLR.Enabled := True;
    if (cbForwardTB.Checked or cbBackwardBT.checked) then
    begin
      cbForwardTB.Checked := False;
      cbBackwardBT.Checked := False;
      cbBackwardRL.Checked := False;
      cbForwardLR.Checked := True;
    end;
  end
  else
  // if "Current column only" selected, disable
  // right-to-left & left-to-right directions
  if Scope.ItemIndex = 2 then
  begin
    cbForwardLR.Enabled := False;
    cbBackwardRL.Enabled := False;
    cbBackwardBT.Enabled := True;
    cbForwardTB.Enabled := True;
    if (cbForwardLR.Checked or cbBackwardRL.Checked) then
    begin
      cbForwardLR.Checked := False;
      cbBackwardRL.Checked := False;
      cbBackwardBT.Checked := False;
      cbForwardTB.Checked := True;
    end;
  end
  else
  // otherwise, enable all direction options
  begin
    cbForwardLR.Enabled := True;
    cbBackwardRL.Enabled := True;
    cbForwardTB.Enabled := True;
    cbBackwardBT.Enabled := True;
  end;
end;

// *** The following code block uses a group of four checkboxes to simulate
// *** a radio groupbox with four buttons.  This was done to produce the
// *** mutually exclusive behavior of radio's, while allowing individual
// *** "radio's" to be enabled/disabled.

procedure TAsgFindDlg.cbForwardTBClick(Sender: TObject);
begin
  if cbForwardTB.Checked and not bInhibitcbForwardTB then
  begin
    if cbForwardLR.Checked then
      cbForwardLR.Checked := False;
    if cbBackwardBT.Checked then
      cbBackwardBT.Checked := False;
    if cbBackwardRL.Checked then
      cbBackwardRL.Checked := False;
  end
  else
  if bInhibitcbForwardTB then
  begin
    cbForwardTB.Checked := True;
    bInhibitcbForwardTB := False;
  end;
end;

procedure TAsgFindDlg.cbForwardLRClick(Sender: TObject);
begin
  if cbForwardLR.Checked and not bInhibitcbForwardLR then
  begin
    if cbForwardTB.Checked then
      cbForwardTB.Checked := False;
    if cbBackwardBT.Checked then
     cbBackwardBT.Checked := False;
    if cbBackwardRL.Checked then
      cbBackwardRL.Checked := False;
  end
  else
  if bInhibitcbForwardLR then
  begin
    cbForwardLR.Checked := True;
    bInhibitcbForwardLR := False;
  end;
end;

procedure TAsgFindDlg.cbBackwardBTClick(Sender: TObject);
begin
  if cbBackwardBT.Checked and not bInhibitcbBackwardBT then
  begin
    if cbForwardTB.Checked then
      cbForwardTB.Checked := False;
    if cbForwardLR.Checked then
      cbForwardLR.Checked := False;
    if cbBackwardRL.Checked then
      cbBackwardRL.Checked := False;
  end
  else
  if bInhibitcbBackwardBT then
  begin
    cbBackwardBT.Checked := True;
    bInhibitcbBackwardBT := False;
  end;
end;

procedure TAsgFindDlg.cbBackwardRLClick(Sender: TObject);
begin
  if cbBackwardRL.Checked and not bInhibitcbBackwardRL then
  begin
    if cbForwardTB.Checked then
      cbForwardTB.Checked := False;
    if cbForwardLR.Checked then
      cbForwardLR.Checked := False;
    if cbBackwardBT.Checked then
      cbBackwardBT.Checked := False;
  end
  else
  if bInhibitcbBackwardRL then
  begin
    cbBackwardRL.Checked := True;
    bInhibitcbBackwardRL := False;
  end;
end;

procedure TAsgFindDlg.cbForwardTBMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if cbForwardTB.Checked then
    bInhibitcbForwardTB := True;
end;

procedure TAsgFindDlg.cbForwardLRMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if cbForwardLR.Checked then
    bInhibitcbForwardLR := True;
end;

procedure TAsgFindDlg.cbBackwardBTMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if cbBackwardBT.Checked then
    bInhibitcbBackwardBT := True;
end;

procedure TAsgFindDlg.cbBackwardRLMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if cbBackwardRL.Checked then
    bInhibitcbBackwardRL := True;
end;

// ********* end checkbox group with radiobox behaviour *********

end.
