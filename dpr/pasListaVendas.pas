unit pasListaVendas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, DBGrids, pasDmVendas, Mask;

type
  TfrmListaVendas = class(TForm)
    grpListCli: TGroupBox;
    lblBuscar: TLabel;
    dbgrdClientes: TDBGrid;
    edtCodCliente: TEdit;
    btnBuscar: TBitBtn;
    btnFechar: TButton;
    editDataIni: TMaskEdit;
    editDataFim: TMaskEdit;
    lbl1: TLabel;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnFecharClick(Sender: TObject);
    procedure btnBuscarClick(Sender: TObject);
    procedure edtCodClienteChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmListaVendas: TfrmListaVendas;

implementation

{$R *.dfm}

procedure TfrmListaVendas.FormShow(Sender: TObject);
begin
    DmVendas.tblNotas.SQL.Clear;
    //SQL PARA PREENCHIMENTO DO GRID
    DmVendas.tblNotas.SQL.Add('SELECT p.descricao as Descricao, p.valor, nF.dataNota as Data,'+
                              ' iNota.quantidade as Quantidade, (iNota.quantidade * p.valor) as Total' +
                              ' FROM cliente as c '+
                              'inner join notaFiscal as nF '+
                                'on nF.idCliente = c.id '    +
                              'inner join itemNota as inota ' +
                                'on inota.idNotaFiscal = nF.id ' +
                              'inner join produto as p ' +
                                'on p.id = inota.idProduto');
    DmVendas.dsNotas.DataSet.Open;
end;

procedure TfrmListaVendas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    DmVendas.dsNotas.DataSet.Close;
end;

procedure TfrmListaVendas.btnFecharClick(Sender: TObject);
begin
    close();
end;

procedure TfrmListaVendas.btnBuscarClick(Sender: TObject);
var
  mascara : string;
begin
  if (editDataIni.Text = mascara) and (editDataFim.Text = mascara) then
    begin
       ShowMessage('Insira o período');
       Exit;
    end;

    try
       DmVendas.tblNotas.SQL.Clear;
       // SELECT APLICANDO FILTRO POR PERÍODO
       DmVendas.tblNotas.SQL.Add('SELECT p.descricao as Descricao, p.valor, nF.dataNota as Data,'+
                            ' iNota.quantidade as Quantidade, (iNota.quantidade * p.valor) as Total' +
                            ' FROM cliente as c '+
                            'inner join notaFiscal as nF '+
                              'on nF.idCliente = c.id '    +
                            'inner join itemNota as inota ' +
                              'on inota.idNotaFiscal = nF.id ' +
                            'inner join produto as p ' +
                              'on p.id = inota.idProduto'+
                              ' where datanota between '''+FormatDateTime('yyyy/MM/dd',StrToDate(editDataIni.Text))+
                              ''' and '''+FormatDateTime('yyyy/MM/dd',StrToDate(editDataFim.Text))+'''');

        DmVendas.dsNotas.DataSet.Open;

        Except
           ShowMessage('Uma das datas do período podem estar inválidas, verifique o preenchimento de ambas');
           editDataIni.SetFocus;

      end;





    //edtTeste.Text := FormatDateTime('yyyy/MM/dd',StrToDate(editDataIni.Text));
end;

procedure TfrmListaVendas.edtCodClienteChange(Sender: TObject);
begin
    if edtCodCliente.Text <> '' then
    begin
       DmVendas.tblNotas.SQL.Clear;
       //APLICANDO FILTRO POR CÓDIGO DE CLIENTE NO ONCHANGE
       DmVendas.tblNotas.SQL.Add('SELECT p.descricao as Descricao, p.valor, nF.dataNota as Data,'+
                            ' iNota.quantidade as Quantidade, (iNota.quantidade * p.valor) as Total' +
                            ' FROM cliente as c '+
                            'inner join notaFiscal as nF '+
                              'on nF.idCliente = c.id '    +
                            'inner join itemNota as inota ' +
                              'on inota.idNotaFiscal = nF.id ' +
                            'inner join produto as p ' +
                              'on p.id = inota.idProduto'+
                              ' where c.codigo = '''+edtCodCliente.Text+'''');
        DmVendas.dsNotas.DataSet.Open;
    end
    else
    begin
       DmVendas.tblNotas.SQL.Clear;
       //CASO O EDITESTEJA NULO, AQUI CONSTA O SQL PARA TRAZER TODAS AS NOTAS/VENDAS
       DmVendas.tblNotas.SQL.Add('SELECT p.descricao as Descricao, p.valor, nF.dataNota as Data,'+
                                ' iNota.quantidade as Quantidade, (iNota.quantidade * p.valor) as Total' +
                                ' FROM cliente as c '+
                                'inner join notaFiscal as nF '+
                                  'on nF.idCliente = c.id '    +
                                'inner join itemNota as inota ' +
                                  'on inota.idNotaFiscal = nF.id ' +
                                'inner join produto as p ' +
                                  'on p.id = inota.idProduto');
       DmVendas.dsNotas.DataSet.Open;
    end;
end;

end.
