unit Loja.View.PesquisaClientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Loja.View.PesquisaCadastroPadrao,
  Data.DB, System.ImageList, Vcl.ImgList, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls,
  Vcl.ExtCtrls;

type
  TunitPesquisaClientes = class(TunitPesquisaPadrao)
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
  unitPesquisaClientes: TunitPesquisaClientes;
  Ascendente : Boolean;

implementation

{$R *.dfm}

uses Loja.Model.Clientes;

procedure TunitPesquisaClientes.btnOkClick(Sender: TObject);
begin
  inherited;
  ModalResult := mrOk;
end;

procedure TunitPesquisaClientes.btnPesquisarClick(Sender: TObject);
begin
  inherited;
  dmClientes.cdsClientes.Close;
  dmClientes.cdsClientes.CommandText := 'SELECT * FROM TABELA_CLIENTE ORDER BY ID';
  dmClientes.cdsClientes.Open;
end;

procedure TunitPesquisaClientes.DBGrid1TitleClick(Column: TColumn);
begin
  dmClientes.cdsClientes.IndexFieldNames := Column.FieldName;
end;

end.
