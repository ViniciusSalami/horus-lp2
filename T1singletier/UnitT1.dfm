object Controle: TControle
  Left = 0
  Top = 0
  Caption = 'Controle de Estoque - Single Tier'
  ClientHeight = 434
  ClientWidth = 805
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object pnl1: TPanel
    Left = 0
    Top = 24
    Width = 801
    Height = 97
    Align = alCustom
    TabOrder = 0
    object lblCodigo: TLabel
      Left = 16
      Top = 8
      Width = 33
      Height = 13
      Caption = 'Codigo'
    end
    object lblData: TLabel
      Left = 16
      Top = 54
      Width = 23
      Height = 13
      Caption = 'Data'
    end
    object lblDescricao: TLabel
      Left = 144
      Top = 8
      Width = 46
      Height = 13
      Caption = 'Descri'#231#227'o'
    end
    object lblFornecedor: TLabel
      Left = 144
      Top = 54
      Width = 55
      Height = 13
      Caption = 'Fornecedor'
    end
    object lblUnidade: TLabel
      Left = 678
      Top = 8
      Width = 39
      Height = 13
      Caption = 'Unidade'
    end
    object lblQuantidade: TLabel
      Left = 424
      Top = 54
      Width = 97
      Height = 13
      Caption = 'Quantidade (+ ou -)'
    end
    object lblUnitario: TLabel
      Left = 552
      Top = 54
      Width = 37
      Height = 13
      Caption = 'Unitario'
    end
    object lblTotal: TLabel
      Left = 678
      Top = 54
      Width = 24
      Height = 13
      Caption = 'Total'
    end
    object dbedtCodigo: TDBEdit
      Left = 13
      Top = 27
      Width = 121
      Height = 21
      DataField = 'Codigo'
      DataSource = DataSource
      TabOrder = 0
    end
    object dbedtDescricao: TDBEdit
      Left = 140
      Top = 27
      Width = 532
      Height = 21
      DataField = 'Descricao'
      DataSource = DataSource
      TabOrder = 1
    end
    object dbedtData: TDBEdit
      Left = 13
      Top = 69
      Width = 121
      Height = 21
      DataField = 'Data'
      DataSource = DataSource
      TabOrder = 2
    end
    object dbedtFornecedor: TDBEdit
      Left = 140
      Top = 69
      Width = 278
      Height = 21
      DataField = 'Fornecedor'
      DataSource = DataSource
      TabOrder = 3
    end
    object dbedtQuantidade: TDBEdit
      Left = 424
      Top = 69
      Width = 121
      Height = 21
      DataField = 'Quantidade'
      DataSource = DataSource
      TabOrder = 4
    end
    object dbedtUnitario: TDBEdit
      Left = 551
      Top = 69
      Width = 121
      Height = 21
      DataField = 'Unitario'
      DataSource = DataSource
      TabOrder = 5
    end
    object dbedtUnidade: TDBEdit
      Left = 678
      Top = 27
      Width = 121
      Height = 21
      DataField = 'Unidade'
      DataSource = DataSource
      TabOrder = 6
    end
    object dbedtTotal: TDBEdit
      Left = 678
      Top = 69
      Width = 121
      Height = 21
      DataField = 'Total'
      DataSource = DataSource
      TabOrder = 7
    end
  end
  object dbnvgr1: TDBNavigator
    Left = 281
    Top = 1
    Width = 240
    Height = 25
    DataSource = DataSource
    TabOrder = 1
  end
  object pnl2: TPanel
    Left = 0
    Top = 127
    Width = 801
    Height = 74
    Align = alCustom
    TabOrder = 2
    object lblPesquisa: TLabel
      Left = 0
      Top = 0
      Width = 160
      Height = 13
      Caption = 'Pesquisa, Ordenal'#231#227'o e Filtragem'
    end
    object lblCampo: TLabel
      Left = 6
      Top = 19
      Width = 33
      Height = 13
      Caption = 'Campo'
    end
    object lblAcao: TLabel
      Left = 166
      Top = 19
      Width = 24
      Height = 13
      Caption = 'A'#231#227'o'
    end
    object lblValor: TLabel
      Left = 312
      Top = 19
      Width = 24
      Height = 13
      Caption = 'Valor'
    end
    object edtValor: TEdit
      Left = 312
      Top = 38
      Width = 233
      Height = 21
      Enabled = False
      TabOrder = 0
    end
    object btnExecutar: TButton
      Left = 557
      Top = 32
      Width = 240
      Height = 33
      Caption = 'Executar'
      TabOrder = 1
      OnClick = btnExecutarClick
    end
  end
  object dbgrd1: TDBGrid
    Left = -4
    Top = 207
    Width = 801
    Height = 154
    DataSource = DataSource
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Codigo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Descricao'
        Width = 183
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Unidade'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Fornecedor'
        Width = 262
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Data'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Quantidade'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Unitario'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Total'
        Visible = True
      end>
  end
  object pnl3: TPanel
    Left = -4
    Top = 367
    Width = 805
    Height = 66
    TabOrder = 4
    object lblQuant: TLabel
      Left = 328
      Top = 24
      Width = 115
      Height = 13
      Caption = 'Quantidade em Estoque'
    end
    object lblValorde: TLabel
      Left = 595
      Top = 24
      Width = 81
      Height = 13
      Caption = 'Valor de Estoque'
    end
    object dbedtEstoque: TDBEdit
      Left = 449
      Top = 16
      Width = 121
      Height = 21
      DataField = 'EstoqueQtd'
      DataSource = DataSource
      TabOrder = 0
    end
    object dbedtValor: TDBEdit
      Left = 682
      Top = 16
      Width = 121
      Height = 21
      DataField = 'EstoqueVlr'
      DataSource = DataSource
      TabOrder = 1
    end
  end
  object cbAcao: TComboBox
    Left = 157
    Top = 165
    Width = 145
    Height = 21
    ItemIndex = 0
    TabOrder = 5
    Text = 'Indexar'
    OnChange = cbAcaoChange
    Items.Strings = (
      'Indexar'
      'Locate'
      'FindKey'
      'Limpar'
      'Percorrer'
      'Filtrar'
      'Limpar Filtro')
  end
  object cbCampo: TComboBox
    Left = 6
    Top = 165
    Width = 145
    Height = 21
    ItemIndex = 0
    TabOrder = 6
    Text = 'Codigo'
    Items.Strings = (
      'Codigo'
      'Descricao'
      'Unidade'
      'Fornecedor'
      'Data'
      'Quantidade'
      'Unitario'
      'Total')
  end
  object dsClienteDataSet: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    Params = <>
    BeforePost = dsClienteDataSetBeforePost
    OnCalcFields = dsClienteDataSetCalcFields
    Left = 328
    Top = 248
    object dsClienteDataSetCodigo: TIntegerField
      FieldName = 'Codigo'
    end
    object dsClienteDataSetDescricao: TStringField
      FieldName = 'Descricao'
      Size = 50
    end
    object dsClienteDataSetUnidade: TStringField
      FieldName = 'Unidade'
      Size = 2
    end
    object dsClienteDataSetFornecedor: TStringField
      FieldName = 'Fornecedor'
      Size = 50
    end
    object dsClienteDataSetData: TDateField
      FieldName = 'Data'
    end
    object dsClienteDataSetQuantidade: TFloatField
      FieldName = 'Quantidade'
    end
    object dsClienteDataSetUnitario: TCurrencyField
      FieldName = 'Unitario'
    end
    object dsClienteDataSetTotal: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'Total'
      Calculated = True
    end
    object dsClienteDataSetEstoqueQtd: TAggregateField
      FieldName = 'EstoqueQtd'
      Visible = True
      Active = True
      DisplayName = ''
      Expression = 'SUM(Quantidade)'
    end
    object dsClienteDataSetEstoqueVlr: TAggregateField
      FieldName = 'EstoqueVlr'
      Visible = True
      Active = True
      DisplayName = ''
      Expression = 'SUM(Quantidade*Unitario)'
    end
  end
  object DataSource: TDataSource
    DataSet = dsClienteDataSet
    Left = 400
    Top = 248
  end
  object BindingsList1: TBindingsList
    Methods = <>
    OutputConverters = <>
    Left = 20
    Top = 5
  end
end
