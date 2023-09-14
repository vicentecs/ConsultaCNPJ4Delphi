program DemoCNPJWS;

uses
  Vcl.Forms,
  UMain in 'UMain.pas' {Form1},
  UCNPJWS in 'UCNPJWS.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
