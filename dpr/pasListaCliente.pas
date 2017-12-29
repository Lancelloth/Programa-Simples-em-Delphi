unit pasListaCliente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, pasDmVendas, pasCadastroCliente, DB, Buttons;

type
  TfrmListaCliente = class(TForm)
    grpListCli: TGroupBox;
    gridClientes: TDBGrid;
    edtBusca: TEdit;
    btnBuscar: TBitBtn;
    btnAdicionar: TButton;
    btnEditar: TButton;
    btnExcluir: TButton;
    btnFechar: TButton;
    btnSalvar: TButton;
    lblBuscar: TLabel;
    procedure FormShow(Sender: TObject);
    procedure btnAdicionarClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnBuscarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmListaCliente: TfrmListaCliente;

implementation

{$R *.dfm}

procedure TfrmListaCliente.FormShow(Sender: TObject);
begin
    DmVendas.tblCliente.SQL.Clear;
    DmVendas.tblCliente.SQL.Add('SELECT * FROM cliente');
    DmVendas.dsCliente.DataSet.Open;

end;

procedure TfrmListaCliente.btnAdicionarClick(Sender: TObject);
begin
    Application.CreateForm(TfrmCadastroCliente, frmCadastroCliente);
    DmVendas.dsCliente.DataSet.Append;
    frmCadastroCliente.ShowModal;
end;

procedure TfrmListaCliente.btnEditarClick(Sender: TObject);
begin
    DmVendas.dsCliente.DataSet.Edit;
end;

procedure TfrmListaCliente.btnExcluirClick(Sender: TObject);
begin
    if DmVendas.dsCliente.DataSet.RecordCount = 0  then begin
      MessageBox(Application.Handle, PChar('Não existe registo na tabela!'), PChar('Falha ao Excluir'), MB_OK+MB_ICONERROR);
      Exit;
    end;

    if (MessageBox(Application.Handle, PChar('Deseja Excluir o registro?'), PChar('Confirmar Exclusão'), MB_YESNO+MB_ICONQUESTION)) = id_yes then begin
       DmVendas.dsCliente.DataSet.Delete;
    end;

end;

procedure TfrmListaCliente.btnSalvarClick(Sender: TObject);
begin
    DmVendas.dsCliente.DataSet.Post;
    DmVendas.dsCliente.DataSet.Refresh;
end;

procedure TfrmListaCliente.btnFecharClick(Sender: TObject);
begin
    Close;
end;

procedure TfrmListaCliente.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    DmVendas.dsCliente.DataSet.Close;
end;

procedure TfrmListaCliente.btnBuscarClick(Sender: TObject);
var
  codigo : string;
begin
    codigo := '%'+Trim(edtBusca.Text)+'%';
    DmVendas.tblCliente.SQL.Clear;
    DmVendas.tblCliente.SQL.Add('SELECT id, codigo, nome FROM cliente WHERE codigo like'''+codigo+'''');
    DmVendas.tblCliente.Open;
end;

end.
