unit Loja.Model.Veiculos;

interface

uses
  System.SysUtils, System.Classes, Datasnap.Provider, Data.DB, Datasnap.DBClient,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TdmVeiculos = class(TDataModule)
    cdsVeiculos: TClientDataSet;
    dspVeiculos: TDataSetProvider;
    sqlVeiculos: TFDQuery;
    cdsVeiculosID: TIntegerField;
    cdsVeiculosDESCRICAO_INTERNA: TStringField;
    cdsVeiculosDESCRICAO_OFICIAL: TStringField;
    cdsVeiculosGRUPO: TStringField;
    cdsVeiculosMARCA: TStringField;
    cdsVeiculosOBSERVACOES: TStringField;
    cdsVeiculosFOTO_VEICULO: TBlobField;
    cdsVeiculosMODELO: TStringField;
    cdsVeiculosCHASSI: TStringField;
    cdsVeiculosPLACA: TStringField;
    cdsVeiculosRENAVAM: TStringField;
    cdsVeiculosUF: TStringField;
    cdsVeiculosCOR: TStringField;
    cdsVeiculosANO_MODELO: TStringField;
    cdsVeiculosANO_FABRICACAO: TStringField;
    cdsVeiculosCONDICAO: TStringField;
    cdsVeiculosCOMBUSTIVEL: TStringField;
    cdsVeiculosNUM_PROP: TStringField;
    sqlGen: TFDQuery;
    function ProximoID(GENERATOR: string): Integer;
    procedure cdsVeiculosBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmVeiculos: TdmVeiculos;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses Loja.Model.Conexao;

{$R *.dfm}

{ TdmVeiculos }

procedure TdmVeiculos.cdsVeiculosBeforePost(DataSet: TDataSet);
begin
  if dmVeiculos.cdsVeiculos.State in [dsinsert] then
     dmVeiculos.cdsVeiculosID.AsInteger := ProximoID('ID_CLIENTE');
end;

function TdmVeiculos.ProximoID(GENERATOR: string): Integer;
begin
  sqlGen.Close;
  sqlGen.SQL.Clear;
  sqlGen.SQL.Add('SELECT GEN_ID(' + GENERATOR + ',1) AS ID_ATUAL FROM RDB$DATABASE');
  sqlGen.Open;
  Result := sqlGen.FieldByName('ID_ATUAL').AsInteger;
end;

end.
