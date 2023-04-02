unit Loja.View.PesquisaVeiculos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Loja.View.PesquisaCadastroPadrao,
  Data.DB, System.ImageList, Vcl.ImgList, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls,
  Vcl.ExtCtrls;

type
  TunitPesquisaVeiculos = class(TunitPesquisaPadrao)
    DataSource1: TDataSource;
    procedure btnPesquisarClick(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
    procedure DBGrid1TitleClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  unitPesquisaVeiculos: TunitPesquisaVeiculos;

implementation

{$R *.dfm}

uses Loja.Model.Veiculos, Loja.View.CadastroVeiculos;

procedure TunitPesquisaVeiculos.btnOkClick(Sender: TObject);
begin
  inherited;
  ModalResult := mrOk;
end;

procedure TunitPesquisaVeiculos.btnPesquisarClick(Sender: TObject);
begin
  inherited;
  dmVeiculos.cdsVeiculos.Close;
  dmVeiculos.cdsVeiculos.CommandText := 'SELECT * FROM TABELA_VEICULO ORDER BY ID';
  dmVeiculos.cdsVeiculos.Open;
end;

procedure TunitPesquisaVeiculos.DBGrid1TitleClick(Column: TColumn);
begin
  inherited;
  dmVeiculos.cdsVeiculos.IndexFieldNames := Column.FieldName;
end;

end.
