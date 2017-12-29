unit pasDmVendas;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  TDmVendas = class(TDataModule)
    con: TADOConnection;
    dsCliente: TDataSource;
    tblCliente: TADOQuery;
    atncfldClienteid: TAutoIncField;
    wdstrngfldClientenome: TWideStringField;
    tblClientecodigo: TWideStringField;
    tblNotas: TADOQuery;
    dsNotas: TDataSource;
    Descricao: TWideStringField;
    valor: TBCDField;
    data: TDateField;
    quantidade: TIntegerField;
    total: TBCDField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DmVendas: TDmVendas;

implementation

{$R *.dfm}

end.
