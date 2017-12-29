unit pasMenu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, pasListaCliente, pasListaVendas;

type
  TfrmMenu = class(TForm)
    MainMenu1: TMainMenu;
    Cadastro1: TMenuItem;
    opCliente: TMenuItem;
    Vendas1: TMenuItem;
    procedure opClienteClick(Sender: TObject);
    procedure Vendas1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMenu: TfrmMenu;

implementation

{$R *.dfm}

procedure TfrmMenu.opClienteClick(Sender: TObject);
begin
  try
    Application.CreateForm(TfrmListaCliente, frmListaCliente);
    frmListaCliente.ShowModal;
    finally
    frmListaCliente.Free;
    end;
end;

procedure TfrmMenu.Vendas1Click(Sender: TObject);
begin
  try
    Application.CreateForm(TfrmListaVendas, frmListaVendas);
    frmListaVendas.ShowModal;
    finally
    frmListaVendas.Free;
    end;
end;

end.
