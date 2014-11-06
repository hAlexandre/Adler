object dtmusuario: Tdtmusuario
  OldCreateOrder = False
  Left = 1002
  Top = 112
  Height = 118
  Width = 287
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;User ID=Admin;Data Source=C:\Ad' +
      'ler\V3 (delphi)\Usuariodesistema.mdb;Mode=Share Deny None;Persis' +
      't Security Info=False;Jet OLEDB:System database="";Jet OLEDB:Reg' +
      'istry Path="";Jet OLEDB:Database Password="";Jet OLEDB:Engine Ty' +
      'pe=5;Jet OLEDB:Database Locking Mode=1;Jet OLEDB:Global Partial ' +
      'Bulk Ops=2;Jet OLEDB:Global Bulk Transactions=1;Jet OLEDB:New Da' +
      'tabase Password="";Jet OLEDB:Create System Database=False;Jet OL' +
      'EDB:Encrypt Database=False;Jet OLEDB:Don'#39't Copy Locale on Compac' +
      't=False;Jet OLEDB:Compact Without Replica Repair=False;Jet OLEDB' +
      ':SFP=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 40
    Top = 24
  end
  object ADOTable1: TADOTable
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'Usuariodesistema'
    Left = 120
    Top = 24
    object ADOTable1usuario: TWideStringField
      FieldName = 'usuario'
      Size = 255
    end
    object ADOTable1senha: TWideStringField
      FieldName = 'senha'
      Size = 255
    end
    object ADOTable1Codigo: TAutoIncField
      FieldName = 'Codigo'
      ReadOnly = True
    end
    object ADOTable1nome: TWideStringField
      FieldName = 'nome'
      Size = 255
    end
    object ADOTable1perfil: TWideStringField
      FieldName = 'perfil'
      Size = 255
    end
    object ADOTable1endereco: TWideStringField
      FieldName = 'endereco'
      Size = 255
    end
    object ADOTable1cpf: TWideStringField
      FieldName = 'cpf'
      Size = 255
    end
  end
  object DataSource1: TDataSource
    DataSet = ADOTable1
    Left = 192
    Top = 24
  end
end
