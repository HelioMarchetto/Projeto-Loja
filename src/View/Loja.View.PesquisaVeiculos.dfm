inherited unitPesquisaVeiculos: TunitPesquisaVeiculos
  BorderStyle = bsSingle
  Caption = 'Pesquisa de Veiculos'
  ClientHeight = 484
  ClientWidth = 734
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlPesquisar: TPanel
    Width = 734
    inherited btnPesquisar: TButton
      Left = 634
      OnClick = btnPesquisarClick
    end
  end
  inherited pnlGrid: TPanel
    Width = 734
    Height = 337
    inherited DBGrid1: TDBGrid
      Width = 732
      Height = 335
      DataSource = unitCadastroVeiculos.DataSource1
      ReadOnly = True
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
    Top = 410
    Width = 734
    inherited btnOk: TButton
      Left = 634
      OnClick = btnOkClick
    end
  end
  object DataSource1: TDataSource
    DataSet = dmVeiculos.sqlVeiculos
    Left = 584
    Top = 337
  end
end
