unit Frm.Multas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.DBCtrls, Vcl.StdCtrls,
  Vcl.Mask, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids;

type
  TFrmMultas = class(TForm)
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    DsVeiculos: TDataSource;
    DsMultas: TDataSource;
    DsProprietarios: TDataSource;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    DBNavigator2: TDBNavigator;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBGrid2: TDBGrid;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmMultas: TFrmMultas;

implementation

{$R *.dfm}

uses Dm.principal;

procedure TFrmMultas.FormCreate(Sender: TObject);
begin
DmPrincipal.QryPropietario.Open;
DmPrincipal.QryVeiculo.Open;
DmPrincipal.QryMultas.Open;
end;

procedure TFrmMultas.FormDestroy(Sender: TObject);
begin
DmPrincipal.QryPropietario.Close;
DmPrincipal.QryVeiculo.Close;
DmPrincipal.QryMultas.Close;

end;

end.
