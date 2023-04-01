unit Loja.View.Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.ExtCtrls,
  Vcl.Imaging.jpeg;

type
  TunitPrincipal = class(TForm)
    MainMenu1: TMainMenu;
    Manuteno1: TMenuItem;
    Cadastros1: TMenuItem;
    Clientes1: TMenuItem;
    Panel1: TPanel;
    Image1: TImage;
    Sair1: TMenuItem;
    Veiculos1: TMenuItem;
    procedure Clientes1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Sair1Click(Sender: TObject);
    procedure Veiculos1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  unitPrincipal: TunitPrincipal;

implementation

{$R *.dfm}

uses Loja.View.CadastroCliente, Loja.View.Splash, Loja.View.CadastroVeiculos;

procedure TunitPrincipal.Clientes1Click(Sender: TObject);
begin
  unitCadastroClientes.Show;
end;

procedure TunitPrincipal.FormCreate(Sender: TObject);
begin
  unitSplash := TunitSplash.Create(nil);
  try
    unitSplash.ShowModal;
  finally
    FreeandNil(unitSplash);
  end;
end;

procedure TunitPrincipal.Sair1Click(Sender: TObject);
begin
  Close;
end;

procedure TunitPrincipal.Veiculos1Click(Sender: TObject);
begin
  unitCadastroVeiculos.Show;
end;

end.
