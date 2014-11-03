object datamodulejogos: Tdatamodulejogos
  OldCreateOrder = False
  Left = 1224
  Top = 169
  Height = 146
  Width = 299
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\Users\Alexandre ' +
      'Azevedo\Desktop\Adler\Projeto\Projeto Adler\Adler\V3 (delphi)\Jo' +
      'gos.mdb;Persist Security Info=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 37
    Top = 30
  end
  object ADOTable1: TADOTable
    Active = True
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
    object ADOTable1Preco: TIntegerField
      FieldName = 'Preco'
    end
    object ADOTable1Desenvolvedor: TWideStringField
      FieldName = 'Desenvolvedor'
      Size = 255
    end
    object ADOTable1Codigo: TAutoIncField
      FieldName = 'Codigo'
      ReadOnly = True
    end
  end
  object DataSource1: TDataSource
    DataSet = ADOTable1
    Left = 189
    Top = 30
  end
end
