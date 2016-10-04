object FrmMultas: TFrmMultas
  Left = 0
  Top = 0
  Caption = 'FrmMultas'
  ClientHeight = 495
  ClientWidth = 679
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 24
    Width = 33
    Height = 13
    Caption = 'C'#243'digo'
  end
  object Label2: TLabel
    Left = 8
    Top = 70
    Width = 25
    Height = 13
    Caption = 'Placa'
  end
  object Label3: TLabel
    Left = 152
    Top = 70
    Width = 29
    Height = 13
    Caption = 'Marca'
  end
  object Label4: TLabel
    Left = 344
    Top = 70
    Width = 34
    Height = 13
    Caption = 'Modelo'
  end
  object Label5: TLabel
    Left = 533
    Top = 70
    Width = 19
    Height = 13
    Caption = 'Ano'
  end
  object Label6: TLabel
    Left = 8
    Top = 116
    Width = 56
    Height = 13
    Caption = 'Proprietario'
  end
  object Label7: TLabel
    Left = 8
    Top = 310
    Width = 22
    Height = 13
    Caption = 'Item'
  end
  object Label8: TLabel
    Left = 152
    Top = 310
    Width = 23
    Height = 13
    Caption = 'Data'
  end
  object Label9: TLabel
    Left = 434
    Top = 310
    Width = 40
    Height = 13
    Caption = 'R$ Valor'
  end
  object Label10: TLabel
    Left = 298
    Top = 310
    Width = 23
    Height = 13
    Caption = 'Hora'
  end
  object Label11: TLabel
    Left = 8
    Top = 356
    Width = 24
    Height = 13
    Caption = 'Local'
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 162
    Width = 649
    Height = 111
    DataSource = DsVeiculos
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'VEI_CODIGO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VEI_PLACA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VEI_MARCA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VEI_MODELO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VEI_ANO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRP_CODIGO'
        Visible = True
      end>
  end
  object DBNavigator1: TDBNavigator
    Left = 152
    Top = 0
    Width = 400
    Height = 25
    DataSource = DsVeiculos
    TabOrder = 1
  end
  object DBEdit1: TDBEdit
    Left = 8
    Top = 43
    Width = 121
    Height = 21
    DataField = 'PRP_CODIGO'
    DataSource = DsVeiculos
    TabOrder = 2
  end
  object DBEdit2: TDBEdit
    Left = 8
    Top = 89
    Width = 121
    Height = 21
    DataField = 'VEI_PLACA'
    DataSource = DsVeiculos
    TabOrder = 3
  end
  object DBEdit3: TDBEdit
    Left = 152
    Top = 89
    Width = 169
    Height = 21
    DataField = 'VEI_MARCA'
    DataSource = DsVeiculos
    TabOrder = 4
  end
  object DBEdit4: TDBEdit
    Left = 344
    Top = 89
    Width = 169
    Height = 21
    DataField = 'VEI_MODELO'
    DataSource = DsVeiculos
    TabOrder = 5
  end
  object DBEdit5: TDBEdit
    Left = 533
    Top = 89
    Width = 121
    Height = 21
    DataField = 'VEI_ANO'
    DataSource = DsVeiculos
    TabOrder = 6
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 8
    Top = 135
    Width = 649
    Height = 21
    DataField = 'PRP_CODIGO'
    DataSource = DsVeiculos
    KeyField = 'PRP_CODIGO'
    ListField = 'PRP_NOME'
    ListSource = DsProprietarios
    TabOrder = 7
  end
  object DBNavigator2: TDBNavigator
    Left = 8
    Top = 279
    Width = 240
    Height = 25
    DataSource = DsMultas
    TabOrder = 8
  end
  object DBEdit6: TDBEdit
    Left = 8
    Top = 329
    Width = 121
    Height = 21
    DataField = 'MLT_ITEM'
    DataSource = DsMultas
    TabOrder = 9
  end
  object DBEdit7: TDBEdit
    Left = 152
    Top = 329
    Width = 121
    Height = 21
    DataField = 'MLT_DATA'
    DataSource = DsMultas
    TabOrder = 10
  end
  object DBEdit8: TDBEdit
    Left = 298
    Top = 329
    Width = 121
    Height = 21
    DataField = 'MLT_HORA'
    DataSource = DsMultas
    TabOrder = 11
  end
  object DBEdit9: TDBEdit
    Left = 434
    Top = 329
    Width = 121
    Height = 21
    DataField = 'MLT_VALOR'
    DataSource = DsMultas
    TabOrder = 12
  end
  object DBEdit10: TDBEdit
    Left = 8
    Top = 375
    Width = 646
    Height = 21
    DataField = 'MLT_LOCAL'
    DataSource = DsMultas
    TabOrder = 13
  end
  object DBGrid2: TDBGrid
    Left = 8
    Top = 402
    Width = 646
    Height = 65
    DataSource = DsMultas
    TabOrder = 14
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'VEI_CODIGO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MLT_ITEM'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MLT_DATA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MLT_HORA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MLT_VALOR'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MLT_LOCAL'
        Visible = True
      end>
  end
  object DsVeiculos: TDataSource
    DataSet = DmPrincipal.QryVeiculo
    Left = 152
    Top = 24
  end
  object DsMultas: TDataSource
    DataSet = DmPrincipal.QryMultas
    Left = 200
    Top = 24
  end
  object DsProprietarios: TDataSource
    DataSet = DmPrincipal.QryPropietario
    Left = 264
    Top = 24
  end
end
