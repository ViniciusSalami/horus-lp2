object FrmPropietarios: TFrmPropietarios
  Left = 0
  Top = 0
  Caption = 'FrmPropietarios'
  ClientHeight = 328
  ClientWidth = 451
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
    Top = 47
    Width = 33
    Height = 13
    Caption = 'C'#243'digo'
  end
  object Label2: TLabel
    Left = 8
    Top = 91
    Width = 27
    Height = 13
    Caption = 'Nome'
  end
  object Label3: TLabel
    Left = 8
    Top = 137
    Width = 45
    Height = 13
    Caption = 'Endere'#231'o'
  end
  object DBNavigator1: TDBNavigator
    Left = 0
    Top = 0
    Width = 440
    Height = 41
    DataSource = DsProprietario
    TabOrder = 0
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 208
    Width = 457
    Height = 120
    DataSource = DsProprietario
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object DBEdit1: TDBEdit
    Left = 8
    Top = 64
    Width = 121
    Height = 21
    DataField = 'PRP_CODIGO'
    DataSource = DsProprietario
    TabOrder = 2
  end
  object DBEdit2: TDBEdit
    Left = 8
    Top = 110
    Width = 435
    Height = 21
    DataField = 'PRP_NOME'
    DataSource = DsProprietario
    TabOrder = 3
  end
  object DBEdit3: TDBEdit
    Left = 8
    Top = 156
    Width = 435
    Height = 21
    DataField = 'PRP_ENDERECO'
    DataSource = DsProprietario
    TabOrder = 4
  end
  object DsProprietario: TDataSource
    DataSet = DmPrincipal.QryPropietario
    Left = 384
    Top = 48
  end
end
