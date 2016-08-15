program ProjetoSingleTier;

uses
  Vcl.Forms,
  UnitT1 in 'UnitT1.pas' {Controle};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TControle, Controle);
  Application.Run;
end.
