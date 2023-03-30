unit Loja.View.CadastroPadrao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  System.ImageList, Vcl.ImgList;

type
  TCadastro = class(TForm)
    pnlPesquisa: TPanel;
    pnlPrincipal: TPanel;
    pnlBotoes: TPanel;
    btnFechar: TButton;
    btnExcluir: TButton;
    btnGravar: TButton;
    btnNovo: TButton;
    lblPesquisar: TLabel;
    edtPesquisar: TEdit;
    btnPesquisar: TButton;
    ImageList1: TImageList;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Cadastro: TCadastro;

implementation

{$R *.dfm}

end.
