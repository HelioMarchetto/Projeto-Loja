object dmVeiculos: TdmVeiculos
  OldCreateOrder = False
  Height = 205
  Width = 271
  object cdsVeiculos: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'dspVeiculos'
    BeforePost = cdsVeiculosBeforePost
    Left = 176
    Top = 24
    object cdsVeiculosID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsVeiculosDESCRICAO_INTERNA: TStringField
      FieldName = 'DESCRICAO_INTERNA'
      Origin = 'DESCRICAO_INTERNA'
      Required = True
      Size = 50
    end
    object cdsVeiculosDESCRICAO_OFICIAL: TStringField
      FieldName = 'DESCRICAO_OFICIAL'
      Origin = 'DESCRICAO_OFICIAL'
      Required = True
      Size = 50
    end
    object cdsVeiculosGRUPO: TStringField
      FieldName = 'GRUPO'
      Origin = 'GRUPO'
    end
    object cdsVeiculosMARCA: TStringField
      FieldName = 'MARCA'
      Origin = 'MARCA'
    end
    object cdsVeiculosOBSERVACOES: TStringField
      FieldName = 'OBSERVACOES'
      Origin = 'OBSERVACOES'
      Size = 80
    end
    object cdsVeiculosFOTO_VEICULO: TBlobField
      FieldName = 'FOTO_VEICULO'
      Origin = 'FOTO_VEICULO'
    end
    object cdsVeiculosMODELO: TStringField
      FieldName = 'MODELO'
      Origin = 'MODELO'
      Size = 30
    end
    object cdsVeiculosCHASSI: TStringField
      FieldName = 'CHASSI'
      Origin = 'CHASSI'
      Size = 30
    end
    object cdsVeiculosPLACA: TStringField
      FieldName = 'PLACA'
      Origin = 'PLACA'
    end
    object cdsVeiculosRENAVAM: TStringField
      FieldName = 'RENAVAM'
      Origin = 'RENAVAM'
    end
    object cdsVeiculosUF: TStringField
      FieldName = 'UF'
      Origin = 'UF'
      FixedChar = True
      Size = 2
    end
    object cdsVeiculosCOR: TStringField
      FieldName = 'COR'
      Origin = 'COR'
      Size = 15
    end
    object cdsVeiculosANO_MODELO: TStringField
      FieldName = 'ANO_MODELO'
      Origin = 'ANO_MODELO'
      FixedChar = True
      Size = 4
    end
    object cdsVeiculosANO_FABRICACAO: TStringField
      FieldName = 'ANO_FABRICACAO'
      Origin = 'ANO_FABRICACAO'
      FixedChar = True
      Size = 4
    end
    object cdsVeiculosCONDICAO: TStringField
      FieldName = 'CONDICAO'
      Origin = 'CONDICAO'
      Size = 15
    end
    object cdsVeiculosCOMBUSTIVEL: TStringField
      FieldName = 'COMBUSTIVEL'
      Origin = 'COMBUSTIVEL'
      Size = 15
    end
    object cdsVeiculosNUM_PROP: TStringField
      FieldName = 'NUM_PROP'
      Origin = 'NUM_PROP'
      Size = 4
    end
  end
  object dspVeiculos: TDataSetProvider
    DataSet = sqlVeiculos
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 96
    Top = 24
  end
  object sqlVeiculos: TFDQuery
    Active = True
    Connection = dmConexao.dmConexao
    SQL.Strings = (
      'SELECT * FROM TABELA_VEICULO')
    Left = 32
    Top = 24
  end
  object sqlGen: TFDQuery
    Active = True
    Connection = dmConexao.dmConexao
    SQL.Strings = (
      'SELECT ID FROM TABELA_VEICULO')
    Left = 32
    Top = 88
  end
end
