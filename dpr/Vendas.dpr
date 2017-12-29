program Vendas;

uses
  Forms,
  pasMenu in '..\pasMenu.pas' {frmMenu},
  pasListaCliente in 'pasListaCliente.pas' {frmListaCliente},
  pasDmVendas in 'pasDmVendas.pas' {DmVendas: TDataModule},
  pasCadastroCliente in 'pasCadastroCliente.pas' {frmCadastroCliente},
  pasListaVendas in 'pasListaVendas.pas' {frmListaVendas};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TDmVendas, DmVendas);
  Application.CreateForm(TfrmMenu, frmMenu);
  Application.CreateForm(TfrmListaVendas, frmListaVendas);
  Application.Run;
end.
