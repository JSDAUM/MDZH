program testWFConv;

uses
  Forms,
  mainFrm in 'mainFrm.pas' {frmMain};

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TfrmMain, frmMain);
  Application.Run;
end.
