object Datamoduleempresas: TDatamoduleempresas
  OldCreateOrder = False
  Left = 306
  Top = 289
  Height = 196
  Width = 488
  object DataSource1: TDataSource
    DataSet = ADOTable1
    Left = 64
    Top = 24
  end
  object ADOTable1: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'empresas'
    Left = 144
    Top = 48
    object ADOTable1Codigo: TAutoIncField
      FieldName = 'Codigo'
      ReadOnly = True
    end
    object ADOTable1Nome: TWideStringField
      FieldName = 'Nome'
      Size = 255
    end
    object ADOTable1Razao_social: TWideStringField
      FieldName = 'Razao_social'
      Size = 255
    end
    object ADOTable1CNPJ: TIntegerField
      FieldName = 'CNPJ'
    end
    object ADOTable1Endereco: TWideStringField
      FieldName = 'Endereco'
      Size = 255
    end
    object ADOTable1Telefone: TIntegerField
      FieldName = 'Telefone'
    end
    object ADOTable1Email: TWideStringField
      FieldName = 'Email'
      Size = 255
    end
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\Adler\V3 (delphi' +
      ')\empresas.mdb;Persist Security Info=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 256
    Top = 88
  end
end
