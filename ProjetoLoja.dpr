program ProjetoLoja;

uses
  Vcl.Forms,
  Loja.View.Principal in 'src\View\Loja.View.Principal.pas' {unitPrincipal},
  Loja.View.PesquisaCadastroPadrao in 'src\View\Loja.View.PesquisaCadastroPadrao.pas' {unitPesquisaPadrao},
  Loja.Model.Conexao in 'src\Model\Loja.Model.Conexao.pas' {dmConexao: TDataModule},
  Loja.Model.Clientes in 'src\Model\Loja.Model.Clientes.pas' {dmClientes: TDataModule},
  Loja.View.CadastroPadrao in 'src\View\Loja.View.CadastroPadrao.pas' {Cadastro},
  Loja.View.CadastroCliente in 'src\View\Loja.View.CadastroCliente.pas' {unitCadastroClientes},
  Loja.View.PesquisaClientes in 'src\View\Loja.View.PesquisaClientes.pas' {unitPesquisaClientes},
  Loja.View.Splash in 'src\View\Loja.View.Splash.pas' {unitSplash},
  Loja.View.CadastroVeiculos in 'src\View\Loja.View.CadastroVeiculos.pas' {unitCadastroVeiculos},
  Loja.Model.Veiculos in 'src\Model\Loja.Model.Veiculos.pas' {dmVeiculos: TDataModule},
  Loja.View.PesquisaVeiculos in 'src\View\Loja.View.PesquisaVeiculos.pas' {unitPesquisaVeiculos};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TdmConexao, dmConexao);
  Application.CreateForm(TdmClientes, dmClientes);
  Application.CreateForm(TunitPrincipal, unitPrincipal);
  Application.CreateForm(TunitPesquisaClientes, unitPesquisaClientes);
  Application.CreateForm(TunitCadastroClientes, unitCadastroClientes);
  Application.CreateForm(TCadastro, Cadastro);
  Application.CreateForm(TunitPesquisaPadrao, unitPesquisaPadrao);
  Application.CreateForm(TunitCadastroVeiculos, unitCadastroVeiculos);
  Application.CreateForm(TdmVeiculos, dmVeiculos);
  Application.CreateForm(TunitPesquisaVeiculos, unitPesquisaVeiculos);
  Application.Run;
end.
