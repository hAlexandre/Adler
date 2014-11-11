object BDJogos: TBDJogos
  OldCreateOrder = False
  Left = 1401
  Top = 271
  Height = 146
  Width = 299
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\Adler\V3 (delphi' +
      ')\Jogos.mdb;Persist Security Info=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 37
    Top = 30
  end
  object ADOTable1: TADOTable
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'Jogo'
    Left = 117
    Top = 30
    object ADOTable1Nome: TWideStringField
      FieldName = 'Nome'
      Size = 255
    end
    object ADOTable1Descricao: TWideStringField
      FieldName = 'Descricao'
      Size = 255
    end
    object ADOTable1Codigo: TAutoIncField
      FieldName = 'Codigo'
      ReadOnly = True
    end
    object ADOTable1Censura: TWideStringField
      FieldName = 'Censura'
      Size = 255
    end
    object ADOTable1Genero: TWideStringField
      FieldName = 'Genero'
      Size = 255
    end
    object ADOTable1Requisitos: TWideStringField
      FieldName = 'Requisitos'
      Size = 255
    end
    object ADOTable1Preco: TIntegerField
      FieldName = 'Preco'
    end
    object ADOTable1Desenvolvedor: TWideStringField
      FieldName = 'Desenvolvedor'
      Size = 255
    end
  end
  object DataSource1: TDataSource
    DataSet = ADOTable1
    Left = 189
    Top = 30
  end
end
