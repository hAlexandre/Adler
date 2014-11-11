object datamodulefuncionarios: Tdatamodulefuncionarios
  OldCreateOrder = False
  Left = 367
  Top = 287
  Height = 201
  Width = 448
  object ADOTable1: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'TabelaFuncionarios'
    Left = 152
    Top = 32
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
    object ADOTable1CPF: TIntegerField
      FieldName = 'CPF'
    end
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\Adler\V3 (delphi' +
      ')\funcionarios.mdb;Persist Security Info=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 48
    Top = 40
  end
  object DataSource1: TDataSource
    DataSet = ADOTable1
    Left = 248
    Top = 24
  end
end
