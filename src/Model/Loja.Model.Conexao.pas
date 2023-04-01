unit Loja.Model.Conexao;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, Data.DB, FireDAC.Comp.Client, IniFiles;

type
  TdmConexao = class(TDataModule)
    dmConexao: TFDConnection;
//    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
//    procedure CarregaConfiguracoes;
//    procedure Conectar;
//    procedure Desconectar;
  end;

var
  dmConexao: TdmConexao;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

{ TdmConexao }

//procedure TdmConexao.CarregaConfiguracoes;
//var
//  iniconf: TInitFile;
//  vipservidor, vcaminho: String;
//begin
//  try
//    iniconf := TinitFile.Create(ExtractFilexPath(application.exename) + 'ProjetoLoja.ini');
//    vipservidor := iniconfig.readstring('informa_banco', 'ip_servidor', '');
//    vcaminho    := iniconfig.readstring('informa_banco', 'caminho', '');
//    dmConexao.params.add(vipservidor+ ' : ' +vcaminho);
//  except
//
//  end;
//end;
//
//procedure TdmConexao.Conectar;
//begin
//  dmConexao.Connected;
//end;
//
//procedure TdmConexao.DataModuleCreate(Sender: TObject);
//begin
//  CarregaConfiguracoes;
//  Conectar;
//end;
//
//procedure TdmConexao.Desconectar;
//begin
//  dmConexao.Connected := False;
//end;

end.
