unit pasCadastroCliente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, pasDmVendas, StdCtrls, Mask, DBCtrls    ;

type
  TfrmCadastroCliente = class(TForm)
    grpCadastro: TGroupBox;
    lblNome: TLabel;
    lblCodigo: TLabel;
    btnSalvar: TButton;
    btnFechar: TButton;
    dbedtcodigo: TDBEdit;
    dbedtnome: TDBEdit;
    procedure btnSalvarClick(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadastroCliente: TfrmCadastroCliente;

implementation

{$R *.dfm}

procedure TfrmCadastroCliente.btnSalvarClick(Sender: TObject);
begin
    DmVendas.dsCliente.DataSet.Post;
    close;
end;

procedure TfrmCadastroCliente.btnFecharClick(Sender: TObject);
begin
    close;
end;

procedure TfrmCadastroCliente.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    Action := caFree;
    Self := nil;
    
end;

end.
