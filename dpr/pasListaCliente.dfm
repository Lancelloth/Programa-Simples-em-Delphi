object frmListaCliente: TfrmListaCliente
  Left = 468
  Top = 306
  Width = 636
  Height = 405
  Caption = 'Clientes Cadastrados'
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
    Width = 628
    Height = 374
    Align = alClient
    TabOrder = 0
    object lblBuscar: TLabel
      Left = 40
      Top = 35
      Width = 87
      Height = 13
      Caption = 'Buscar por C'#243'digo'
    end
    object gridClientes: TDBGrid
      Left = 8
      Top = 64
      Width = 609
      Height = 233
      DataSource = DmVendas.dsCliente
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'codigo'
          Title.Caption = 'C'#243'digo'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nome'
          Title.Caption = 'Nome'
          Width = 525
          Visible = True
        end>
    end
    object edtBusca: TEdit
      Left = 136
      Top = 32
      Width = 145
      Height = 21
      TabOrder = 1
    end
    object btnBuscar: TBitBtn
      Left = 300
      Top = 29
      Width = 75
      Height = 25
      Caption = 'Buscar'
      TabOrder = 2
      OnClick = btnBuscarClick
    end
    object btnAdicionar: TButton
      Left = 224
      Top = 320
      Width = 75
      Height = 41
      Caption = 'Adicionar'
      TabOrder = 3
      OnClick = btnAdicionarClick
    end
    object btnEditar: TButton
      Left = 304
      Top = 320
      Width = 75
      Height = 41
      Caption = 'Editar'
      TabOrder = 4
      OnClick = btnEditarClick
    end
    object btnExcluir: TButton
      Left = 464
      Top = 320
      Width = 75
      Height = 41
      Caption = 'Excluir'
      TabOrder = 5
      OnClick = btnExcluirClick
    end
    object btnFechar: TButton
      Left = 544
      Top = 320
      Width = 75
      Height = 41
      Caption = 'Fechar'
      TabOrder = 6
      OnClick = btnFecharClick
    end
    object btnSalvar: TButton
      Left = 384
      Top = 320
      Width = 75
      Height = 41
      Caption = 'Salvar'
      TabOrder = 7
      OnClick = btnEditarClick
    end
  end
end
