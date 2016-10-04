unit Frm.Propietarios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls;

type
  TFrmPropietarios = class(TForm)
    DBNavigator1: TDBNavigator;
    DsProprietario: TDataSource;
    DBGrid1: TDBGrid;
    DBEdit1: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPropietarios: TFrmPropietarios;

implementation

{$R *.dfm}

uses Dm.principal;

procedure TFrmPropietarios.FormCreate(Sender: TObject);
begin
  DmPrincipal.QryPropietario.Open;
end;

procedure TFrmPropietarios.FormDestroy(Sender: TObject);
begin
 DmPrincipal.QryPropietario.Close;
end;

end.
