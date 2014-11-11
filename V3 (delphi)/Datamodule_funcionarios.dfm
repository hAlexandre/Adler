object DataModule5: TDataModule5
  OldCreateOrder = False
  Left = 835
  Top = 286
  Height = 254
  Width = 525
  object DataSource1: TDataSource
    DataSet = ADOTable1
    Left = 24
    Top = 40
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\Adler\V3 (delphi' +
      ')\funcionarios.mdb;Persist Security Info=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 104
    Top = 40
  end
  object ADOTable1: TADOTable
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'TabelaFuncionarios'
    Left = 168
    Top = 40
    object ADOTable1codigo: TAutoIncField
      FieldName = 'codigo'
      ReadOnly = True
    end
    object ADOTable1Nome: TWideStringField
      FieldName = 'Nome'
      Size = 255
    end
    object ADOTable1Cargo: TWideStringField
      FieldName = 'Cargo'
      Size = 255
    end
    object ADOTable1Salario: TIntegerField
      FieldName = 'Salario'
    end
    object ADOTable1Endereco: TWideStringField
      FieldName = 'Endereco'
      Size = 255
    end
    object ADOTable1Historico: TWideStringField
      FieldName = 'Historico'
      Size = 255
    end
    object ADOTable1NecessidadeEspecial: TWideStringField
      FieldName = 'NecessidadeEspecial'
      Size = 255
    end
  end
end
