unit Frm.Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Frm.Propietarios, Frm.Multas;

type
  TFrmPrincipal = class(TForm)
    BtnProprietario: TButton;
    VeiculoseMultas: TButton;
    procedure BtnProprietarioClick(Sender: TObject);
    procedure VeiculoseMultasClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

{$R *.dfm}

procedure TFrmPrincipal.BtnProprietarioClick(Sender: TObject);
var

VfrmProprietarios: TfrmPropietarios;

begin

VfrmProprietarios := TFrmPropietarios.Create(nil);

 try
 VfrmProprietarios.ShowModal;

 finally
 FreeAndNil(VfrmProprietarios);

 end;

end;

procedure TFrmPrincipal.VeiculoseMultasClick(Sender: TObject);
var
vFrmVeiculosMultas: TFrmMultas;

begin
vFrmVeiculosMultas := TFrmMultas.Create(nil);
try
  vFrmVeiculosMultas.ShowModal;
finally
  FreeAndNil(vfrmVeiculosMultas);
end;
end;

end.
