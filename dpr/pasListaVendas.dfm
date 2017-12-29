object frmListaVendas: TfrmListaVendas
  Left = 740
  Top = 351
  Width = 740
  Height = 410
  Caption = 'Vendas Efetuadas'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object grpListCli: TGroupBox
    Left = 0
    Top = 0
    Width = 732
    Height = 379
    Align = alClient
    TabOrder = 0
    object lblBuscar: TLabel
      Left = 27
      Top = 35
      Width = 111
      Height = 13
      Caption = 'Buscar por C'#243'd. Cliente'
    end
    object lbl1: TLabel
      Left = 382
      Top = 35
      Width = 6
      Height = 13
      Caption = 'a'
    end
    object dbgrdClientes: TDBGrid
      Left = 8
      Top = 64
      Width = 713
      Height = 233
      DataSource = DmVendas.dsNotas
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'descricao'
          Title.Caption = 'Produto'
          Width = 236
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'valor'
          Title.Caption = 'Valor'
          Width = 114
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'data'
          Title.Caption = 'Data do Pedido'
          Width = 123
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'quantidade'
          Title.Caption = 'Quantidade'
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'total'
          Title.Caption = 'Total'
          Width = 160
          Visible = True
        end>
    end
    object edtCodCliente: TEdit
      Left = 143
      Top = 30
      Width = 89
      Height = 21
      TabOrder = 1
      OnChange = edtCodClienteChange
    end
    object btnBuscar: TBitBtn
      Left = 540
      Top = 29
      Width = 75
      Height = 25
      Caption = 'Filtrar'
      TabOrder = 2
      OnClick = btnBuscarClick
    end
    object btnFechar: TButton
      Left = 640
      Top = 320
      Width = 75
      Height = 41
      Caption = 'Fechar'
      TabOrder = 3
      OnClick = btnFecharClick
    end
    object editDataIni: TMaskEdit
      Left = 256
      Top = 30
      Width = 111
      Height = 21
      EditMask = '!99/99/0000;1;_'
      MaxLength = 10
      TabOrder = 4
      Text = '  /  /    '
    end
    object editDataFim: TMaskEdit
      Left = 394
      Top = 30
      Width = 111
      Height = 21
      EditMask = '!99/99/0000;1;_'
      MaxLength = 10
      TabOrder = 5
      Text = '  /  /    '
    end
  end
end
