object dmClientes: TdmClientes
  OldCreateOrder = False
  Height = 252
  Width = 320
  object dspClientes: TDataSetProvider
    DataSet = sqlClientes
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 216
    Top = 136
  end
  object cdsClientes: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspClientes'
    BeforePost = cdsClientesBeforePost
    Left = 80
    Top = 144
    object cdsClientesID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsClientesNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 60
    end
    object cdsClientesCPF: TStringField
      FieldName = 'CPF'
      Origin = 'CPF'
      Size = 10
    end
    object cdsClientesENDERECO: TStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Size = 30
    end
    object cdsClientesBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Size = 30
    end
    object cdsClientesNUMERO: TStringField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      FixedChar = True
      Size = 4
    end
    object cdsClientesCIDADE: TStringField
      FieldName = 'CIDADE'
      Origin = 'CIDADE'
      Size = 30
    end
    object cdsClientesCEP: TStringField
      FieldName = 'CEP'
      Origin = 'CEP'
      EditMask = '99999-999;0;_'
      FixedChar = True
      Size = 8
    end
    object cdsClientesUF: TStringField
      FieldName = 'UF'
      Origin = 'UF'
      FixedChar = True
      Size = 2
    end
    object cdsClientesTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Origin = 'TELEFONE'
      Size = 11
    end
    object cdsClientesCELULAR: TStringField
      FieldName = 'CELULAR'
      Origin = 'CELULAR'
      Size = 11
    end
    object cdsClientesDATA_CADASTRO: TDateField
      FieldName = 'DATA_CADASTRO'
      Origin = 'DATA_CADASTRO'
    end
  end
  object sqlClientes: TFDQuery
    ConstraintsEnabled = True
    Connection = dmConexao.dmConexao
    SQL.Strings = (
      'SELECT * FROM TABELA_CLIENTE ORDER BY ID')
    Left = 104
    Top = 72
  end
  object sqlGen: TFDQuery
    Connection = dmConexao.dmConexao
    SQL.Strings = (
      'SELECT GEN_ID (id_cliente,1)  AS ID_ATUAL FROM RDB$DATABASE')
    Left = 216
    Top = 64
  end
end
