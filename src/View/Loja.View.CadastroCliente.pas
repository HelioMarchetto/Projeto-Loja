unit Loja.View.CadastroCliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Loja.View.CadastroPadrao,
  System.ImageList, Vcl.ImgList, Vcl.StdCtrls, Vcl.ExtCtrls, Data.DB, Vcl.Mask,
  Vcl.DBCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TunitCadastroClientes = class(TCadastro)
    edtNome: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    edtEndereco: TEdit;
    edtBairro: TEdit;
    Label3: TLabel;
    edtNumero: TEdit;
    Label4: TLabel;
    edtCidade: TEdit;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    edtCPF: TEdit;
    gbContatos: TGroupBox;
    Label9: TLabel;
    edtContatoTelefone: TEdit;
    Label10: TLabel;
    edtContatoCelular: TEdit;
    btnCancelar: TButton;
    cbUF: TComboBox;
    DataSource1: TDataSource;
    edtCEP: TEdit;
    edtPesquisaID: TEdit;
    sqlPesquisaCliente: TFDQuery;
    Panel1: TPanel;
    procedure btnPesquisarClick(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edtPesquisaIDKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
    procedure BuscaCamposBanco;
  public
    { Public declarations }
    procedure LimpaCampos;
  end;

var
  unitCadastroClientes: TunitCadastroClientes;

implementation

{$R *.dfm}

uses Loja.View.PesquisaClientes, Loja.Model.Conexao, Loja.Model.Clientes;

procedure TunitCadastroClientes.btnCancelarClick(Sender: TObject);
begin
  inherited;
  dmClientes.cdsClientes.Cancel;
end;

procedure TunitCadastroClientes.btnExcluirClick(Sender: TObject);
begin
  inherited;
  if Application.MessageBox('Deseja realmente excluir o registro?', 'Selecione', MB_YESNO + MB_ICONQUESTION) <> mrYes then
  exit;
  try
    dmClientes.cdsClientes.Delete;
    dmClientes.cdsClientes.ApplyUpdates(0);
    Application.MessageBox('Registro excluído com sucesso!', 'Sucesso', MB_OK + MB_ICONINFORMATION);
    LimpaCampos;
  except on E: Exception do
    Application.MessageBox('Erro ao excluir registro', 'Erro', MB_OK + MB_ICONERROR);
  end;
end;

procedure TunitCadastroClientes.btnFecharClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TunitCadastroClientes.btnGravarClick(Sender: TObject);
begin

  if Trim(edtNome.Text) = '' then
  begin
    edtNome.SetFocus;
    Application.MessageBox('O campo Nome deve ser preenchido!', 'Atenção', MB_OK + MB_ICONEXCLAMATION);
    abort;
  end;

  if Trim(edtEndereco.Text) = '' then
  begin
    edtEndereco.SetFocus;
    Application.MessageBox('O campo Endereço deve ser preenchido!', 'Atenção', MB_OK + MB_ICONEXCLAMATION);
    abort;
  end;

  if Trim(edtBairro.Text) = '' then
  begin
    edtBairro.SetFocus;
    Application.MessageBox('O campo Bairro deve ser preenchido!', 'Atenção', MB_OK + MB_ICONEXCLAMATION);
    abort;
  end;

  if Trim(edtNumero.Text) = '' then
  begin
    edtNumero.SetFocus;
    Application.MessageBox('O campo Número deve ser preenchido!', 'Atenção', MB_OK + MB_ICONEXCLAMATION);
    abort;
  end;

  if Trim(edtCidade.Text) = '' then
  begin
    edtCidade.SetFocus;
    Application.MessageBox('O campo Cidade deve ser preenchido!', 'Atenção', MB_OK + MB_ICONEXCLAMATION);
    abort;
  end;

  if Trim(edtCEP.Text) = '' then
  begin
    edtCEP.SetFocus;
    Application.MessageBox('O campo CEP deve ser preenchido!', 'Atenção', MB_OK + MB_ICONEXCLAMATION);
    abort;
  end;

  if Trim(cbUF.Text) = '' then
  begin
    cbUF.SetFocus;
    Application.MessageBox('O campo UF deve ser preenchido!', 'Atenção', MB_OK + MB_ICONEXCLAMATION);
    abort;
  end;

  if Trim(edtCPF.Text) = '' then
  begin
    edtCPF.SetFocus;
    Application.MessageBox('O campo CPF deve ser preenchido!', 'Atenção', MB_OK + MB_ICONEXCLAMATION);
    abort;
  end;

  if ((Trim(edtContatoCelular.Text) = '') and (Trim(edtContatoTelefone.Text) = '')) then
  begin
    edtContatoTelefone.SetFocus;
    Application.MessageBox('Deve ser preenchido ao menos um campo de contato!', 'Atenção', MB_OK + MB_ICONEXCLAMATION);
    abort;
  end;

  dmClientes.cdsClientes.Edit;

  dmClientes.cdsClientesNOME.AsString := Trim(edtNome.Text);
  dmClientes.cdsClientesENDERECO.AsString := Trim(edtEndereco.Text);
  dmClientes.cdsClientesBAIRRO.AsString := Trim(edtBairro.Text);
  dmClientes.cdsClientesNUMERO.AsString := Trim(edtNumero.Text);
  dmClientes.cdsClientesCIDADE.AsString := Trim(edtCidade.Text);
  dmClientes.cdsClientesCEP.AsString := Trim(edtCEP.Text);
  dmClientes.cdsClientesUF.AsString := Trim(cbUF.Text);
  dmClientes.cdsClientesTELEFONE.AsString := Trim(edtContatoTelefone.Text);
  dmClientes.cdsClientesCELULAR.AsString := Trim(edtContatoCelular.Text);
  dmClientes.cdsClientesCPF.AsString := Trim(edtCPF.Text);

  dmClientes.cdsClientes.Post;
  dmClientes.cdsClientes.ApplyUpdates(0);
  Application.MessageBox('Registro incluído com sucesso', 'Atenção', MB_OK + MB_ICONINFORMATION);

  inherited;

end;

procedure TunitCadastroClientes.btnNovoClick(Sender: TObject);
begin
  inherited;
  LimpaCampos;
  dmClientes.cdsClientes.Insert;
  edtNome.SetFocus;
end;

procedure TunitCadastroClientes.btnPesquisarClick(Sender: TObject);
begin
  inherited;
  TunitPesquisaClientes.Create(nil);
  try
    unitPesquisaClientes.ShowModal;
    if unitPesquisaClientes.ModalResult = mrOk then
    begin
      BuscaCamposBanco;
    end;
  finally
    unitPesquisaClientes.Free;
  end;

end;

procedure TunitCadastroClientes.BuscaCamposBanco;
begin
  edtNome.Text := dmClientes.cdsClientes.FieldByName('NOME').AsString;
  edtPesquisar.Text := dmClientes.cdsClientes.FieldByName('NOME').AsString;
  edtCPF.Text := dmClientes.cdsClientes.FieldByName('CPF').AsString;
  edtEndereco.Text := dmClientes.cdsClientes.FieldByName('ENDERECO').AsString;
  edtNumero.Text := dmClientes.cdsClientes.FieldByName('NUMERO').AsString;
  edtBairro.Text := dmClientes.cdsClientes.FieldByName('BAIRRO').AsString;
  edtCidade.Text := dmClientes.cdsClientes.FieldByName('CIDADE').AsString;
  cbUF.Text := dmClientes.cdsClientes.FieldByName('UF').AsString;
  edtCEP.Text := dmClientes.cdsClientes.FieldByName('CEP').AsString;
  edtContatoTelefone.Text := dmClientes.cdsClientes.FieldByName('TELEFONE').AsString;
  edtContatoCelular.Text := dmClientes.cdsClientes.FieldByName('CELULAR').AsString;
  edtPesquisaID.Text := dmClientes.cdsClientes.FieldByName('ID').AsString;
end;

procedure TunitCadastroClientes.edtPesquisaIDKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;

  if key = VK_F3 then
  begin
    TunitPesquisaClientes.Create(nil);
    try
      unitPesquisaClientes.ShowModal;
      if unitPesquisaClientes.ModalResult = mrOk then
      begin
        BuscaCamposBanco;
      end;
    finally
      unitPesquisaClientes.Free;
    end;
  end

  else
    abort

end;

procedure TunitCadastroClientes.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = VK_RETURN then
  begin
    Perform(WM_NEXTDLGCTL,0,0);
  end;
end;

procedure TunitCadastroClientes.FormShow(Sender: TObject);
begin
  inherited;
  LimpaCampos;
end;

procedure TunitCadastroClientes.LimpaCampos;
var
  Contador : Integer;
begin
  for Contador := 0 to Pred(ComponentCount) do
  begin
    if Components[Contador] is TCustomEdit then
      TCustomEdit(Components[Contador]).Clear;
  end;
end;

end.
