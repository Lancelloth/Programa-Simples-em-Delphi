object frmCadastroCliente: TfrmCadastroCliente
  Left = 658
  Top = 333
  Width = 473
  Height = 268
  Caption = 'Cadastro Cliente'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object grpCadastro: TGroupBox
    Left = 0
    Top = 0
    Width = 465
    Height = 237
    Align = alClient
    TabOrder = 0
    object lblNome: TLabel
      Left = 72
      Top = 120
      Width = 37
      Height = 16
      Caption = 'Nome'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object lblCodigo: TLabel
      Left = 64
      Top = 80
      Width = 44
      Height = 16
      Caption = 'C'#243'digo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object btnSalvar: TButton
      Left = 288
      Top = 172
      Width = 75
      Height = 41
      Caption = 'Salvar'
      TabOrder = 0
      OnClick = btnSalvarClick
    end
    object btnFechar: TButton
      Left = 366
      Top = 172
      Width = 75
      Height = 41
      Caption = 'Fechar'
      TabOrder = 1
      OnClick = btnFecharClick
    end
    object dbedtcodigo: TDBEdit
      Left = 128
      Top = 80
      Width = 271
      Height = 21
      DataField = 'codigo'
      DataSource = DmVendas.dsCliente
      TabOrder = 2
    end
    object dbedtnome: TDBEdit
      Left = 128
      Top = 118
      Width = 271
      Height = 21
      DataField = 'nome'
      DataSource = DmVendas.dsCliente
      TabOrder = 3
    end
  end
end
