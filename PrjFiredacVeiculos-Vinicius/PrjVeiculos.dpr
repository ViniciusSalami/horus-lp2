program PrjVeiculos;

uses
  Vcl.Forms,
  Frm.Principal in 'Frm.Principal.pas' {FrmPrincipal},
  Dm.principal in 'Dm.principal.pas' {DmPrincipal: TDataModule},
  Frm.Propietarios in 'Frm.Propietarios.pas' {FrmPropietarios},
  Frm.Multas in 'Frm.Multas.pas' {FrmMultas};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.CreateForm(TDmPrincipal, DmPrincipal);
  Application.CreateForm(TFrmPropietarios, FrmPropietarios);
  Application.CreateForm(TFrmMultas, FrmMultas);
  Application.Run;
end.
