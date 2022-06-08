unit mainFrm;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, ComCtrls, DdeMan, DdeWinFaxConv;

type
  TfrmMain = class(TForm)
    RichEdit1: TRichEdit;
    Bevel1: TBevel;
    Label1: TLabel;
    edDialPrefix: TEdit;
    Label2: TLabel;
    chkDialAsEntered: TCheckBox;
    edLongDistancePrefix: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    edLocalAreaCode: TEdit;
    chkRemoveLAC: TCheckBox;
    chkIncludeDate: TCheckBox;
    Bevel2: TBevel;
    Label5: TLabel;
    Label6: TLabel;
    edPhoneNumber: TEdit;
    edSendDateTime: TEdit;
    Label7: TLabel;
    Label8: TLabel;
    edRecipientName: TEdit;
    edRecipientCompany: TEdit;
    Label9: TLabel;
    edSubject: TEdit;
    Label10: TLabel;
    edKeywords: TEdit;
    Label11: TLabel;
    edBillingCode: TEdit;
    Label12: TLabel;
    edBftFax: TEdit;
    Label13: TLabel;
    btnAddWinFax: TButton;
    btnPrint: TButton;
    DdeWinFaxConv1: TDdeWinFaxConv;
    btnSetWinFaxLink: TButton;
    Label14: TLabel;
    Label15: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure btnAddWinFaxClick(Sender: TObject);
    procedure btnPrintClick(Sender: TObject);
    procedure btnSetWinFaxLinkClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.DFM}

procedure TfrmMain.FormCreate(Sender: TObject);
begin
     edSendDateTime.Text := FormatDateTime('mm/dd/yy hh:mm:ss',Now);
end;

procedure TfrmMain.btnSetWinFaxLinkClick(Sender: TObject);
begin
     if not DdeWinFaxConv1.SetWinFaxLink then begin
        MessageDlg('Could not connect to WinFax PRO.'#10#13 +
                   'The WinFax PRO Controller may not be running.',
                   mtError,[mbOk],0);
     end;
end;

procedure TfrmMain.btnAddWinFaxClick(Sender: TObject);
begin
     // Add recipient to WinFax

     // DdeWinFaxConv1
     with DdeWinFaxConv1 do begin
          DialAsEntered := chkDialAsEntered.Checked;
          DialPrefix := edDialPrefix.Text;
          LongDistancePrefix := edLongDistancePrefix.Text;
          RemoveLocalAreaCode := chkRemoveLAC.Checked;
          LocalAreaCode := edLocalAreaCode.Text;
          IncludeSendDateTime := chkIncludeDate.Checked;
     end;

     // SendFaxParams
     with DdeWinfaxConv1.SendFaxParams do begin
          PhoneNumber := edPhoneNumber.Text;
          SendDateTime := StrToDateTime(edSendDateTime.Text);
          RecipientName := edRecipientName.Text;
          RecipientCompany := edRecipientCompany.Text;
          Subject := edSubject.Text;
          Keywords := edKeywords.Text;
          BillingCode := edBillingCode.Text;
          BftFax := edBftFax.Text;
     end;
     DdeWinFaxConv1.Execute;
end;

procedure TfrmMain.btnPrintClick(Sender: TObject);
begin
     MessageDlg('WinFax Pro should be your default printer.',mtInformation,[mbOk],0);
     RichEdit1.Print(Caption);
end;

end.
