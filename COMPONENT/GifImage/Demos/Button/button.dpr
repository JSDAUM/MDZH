program button;

uses
  Forms,
  main in 'main.pas' {FormMain};

{$R *.RES}

begin
  Application.Initialize;
  Application.Title := 'GIF Button Demo';
  Application.CreateForm(TFormMain, FormMain);
  Application.Run;
end.
