inherited unitPesquisaVeiculos: TunitPesquisaVeiculos
  Caption = 'Pesquisa de Veiculos'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlPesquisar: TPanel
    inherited btnPesquisar: TButton
      OnClick = btnPesquisarClick
    end
  end
  inherited pnlGrid: TPanel
    inherited DBGrid1: TDBGrid
      DataSource = unitCadastroVeiculos.DataSource1
      OnTitleClick = DBGrid1TitleClick
      Columns = <
        item
          Expanded = False
          FieldName = 'ID'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DESCRICAO_INTERNA'
          Title.Caption = 'DESCRICAO INTERNA'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DESCRICAO_OFICIAL'
          Title.Caption = 'DESCRICAO OFICIAL'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'GRUPO'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MARCA'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'OBSERVACOES'
          Title.Caption = 'OBSERVA'#199#213'ES'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MODELO'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PLACA'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'RENAVAM'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'UF'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'COR'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ANO_MODELO'
          Title.Caption = 'ANO MODELO'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ANO_FABRICACAO'
          Title.Caption = 'ANO FABRICACAO'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CONDICAO'
          Title.Caption = 'CONDI'#199#195'O'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'COMBUSTIVEL'
          Visible = True
        end>
    end
  end
  inherited pnlButaoOk: TPanel
    inherited btnOk: TButton
      OnClick = btnOkClick
    end
  end
  object DataSource1: TDataSource
    DataSet = dmVeiculos.sqlVeiculos
    Left = 584
    Top = 337
  end
end
