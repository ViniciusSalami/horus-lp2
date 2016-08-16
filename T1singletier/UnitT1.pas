unit UnitT1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Datasnap.DBClient, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.Mask, Vcl.ExtCtrls,
  Data.Bind.EngExt, Vcl.Bind.DBEngExt, Data.Bind.Components;

type
  TControle = class(TForm)
    dsClienteDataSet: TClientDataSet;
    DataSource: TDataSource;
    dsClienteDataSetCodigo: TIntegerField;
    dsClienteDataSetDescricao: TStringField;
    dsClienteDataSetUnidade: TStringField;
    dsClienteDataSetFornecedor: TStringField;
    dsClienteDataSetData: TDateField;
    dsClienteDataSetQuantidade: TFloatField;
    dsClienteDataSetUnitario: TCurrencyField;
    dsClienteDataSetTotal: TCurrencyField;
    dsClienteDataSetEstoqueQtd: TAggregateField;
    dsClienteDataSetEstoqueVlr: TAggregateField;
    pnl1: TPanel;
    dbnvgr1: TDBNavigator;
    lblCodigo: TLabel;
    lblData: TLabel;
    lblDescricao: TLabel;
    lblFornecedor: TLabel;
    lblUnidade: TLabel;
    lblQuantidade: TLabel;
    lblUnitario: TLabel;
    lblTotal: TLabel;
    dbedtCodigo: TDBEdit;
    dbedtDescricao: TDBEdit;
    dbedtData: TDBEdit;
    dbedtFornecedor: TDBEdit;
    dbedtQuantidade: TDBEdit;
    dbedtUnitario: TDBEdit;
    dbedtUnidade: TDBEdit;
    dbedtTotal: TDBEdit;
    pnl2: TPanel;
    lblPesquisa: TLabel;
    lblCampo: TLabel;
    lblAcao: TLabel;
    lblValor: TLabel;
    edtValor: TEdit;
    btnExecutar: TButton;
    dbgrd1: TDBGrid;
    pnl3: TPanel;
    lblQuant: TLabel;
    lblValorde: TLabel;
    dbedtEstoque: TDBEdit;
    dbedtValor: TDBEdit;
    BindingsList1: TBindingsList;
    cbAcao: TComboBox;
    cbCampo: TComboBox;
    procedure dsClienteDataSetCalcFields(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure dsClienteDataSetBeforePost(DataSet: TDataSet);
    procedure btnExecutarClick(Sender: TObject);
    procedure cbAcaoChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Controle: TControle;

implementation

{$R *.dfm}

procedure TControle.btnExecutarClick(Sender: TObject);
begin
  if (edtValor.Text = '') and edtValor.Enabled then
  begin
    raise Exception.Create('Valor obrigatório!');
    edtValor.setFocus;
    Abort;
  end;

  with dsClienteDataSet do
  begin
    // 0 Indexar
    if cbAcao.ItemIndex = 0 then
    begin
      IndexFieldNames := cbCampo.Text;
      ShowMessage('Index criado!');
    end;
    // 1 Locate
    if cbAcao.ItemIndex = 1 then
    begin
      if Locate(cbCampo.Text, edtValor.Text, [loCaseInsensitive, loPartialKey])
      then
        ShowMessage('Registro encontrado!')
      else
        ShowMessage('Registro não encontrado!');
    end;
    // 2 FindKey
    if cbAcao.ItemIndex = 2 then
    begin
      try
        if FindKey([edtValor.Text]) then
          ShowMessage('Registro encontrado!')
        else
          ShowMessage('Registro não encontrado!');
      except
        ShowMessage('Crie um index primeiro!');
      end;
    end;
    // 3 Limpar
    if cbAcao.ItemIndex = 3 then
      EmptyDataSet;
    // 4 Percorrer
    if cbAcao.ItemIndex = 4 then
    begin
      First;
      while not Eof do
      begin
        if FieldByName(cbCampo.Text).AsInteger = StrToIntDef(edtValor.Text, 0)
        then
        begin
          ShowMessage('Registro encontrado!');
          Exit
        end
        else
          Next;
      end;
      ShowMessage('Registro não encontrado!');
    end;
    // 5 Filtrar
    if cbAcao.ItemIndex = 5 then
    begin
      Filter := edtValor.Text;
      Filtered := True;
    end;
    // 6 Limpar Filtro
    if cbAcao.ItemIndex = 6 then
    begin
      Filtered := False;
      Filter := EmptyStr;
    end;

  end;
end;

procedure TControle.cbAcaoChange(Sender: TObject);
begin
  if cbAcao.ItemIndex in [0, 3, 6] then
    edtValor.Enabled := False
  else
    edtValor.Enabled := True;
end;

procedure TControle.dsClienteDataSetBeforePost(DataSet: TDataSet);
Var
  LField: TField;
begin
  for LField in dsClienteDataSet.fields do
  begin
    if (LField.AsString = EmptyStr) and (LField.FieldKind = fkData) then
    begin
      ShowMessage('O campo ' + LField.DisplayName + ' precisa ser informado!');
      Abort;
    end;
  end;
end;

procedure TControle.dsClienteDataSetCalcFields(DataSet: TDataSet);
begin
  if (not dsClienteDataSet.FieldByName('unitario').IsNull) and
    (not dsClienteDataSet.FieldByName('Quantidade').IsNull) then
  begin
    dsClienteDataSet.FieldByName('Total').Value :=
      dsClienteDataSet.FieldByName('unitario').Value *
      dsClienteDataSet.FieldByName('Quantidade').Value;
  end;

end;

procedure TControle.FormCreate(Sender: TObject);
const
  cDataFile = 'Dados.xml';
begin

  dsClienteDataSet.FileName := ExtractFilePath(Application.ExeName) + cDataFile;
  if not FileExists(dsClienteDataSet.FileName) then
    dsClienteDataSet.CreateDataSet;
  dsClienteDataSet.Open;
end;

end.
