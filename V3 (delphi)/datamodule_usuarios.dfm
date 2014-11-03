object dtmusuario: Tdtmusuario
  OldCreateOrder = False
  Left = 1002
  Top = 112
  Height = 118
  Width = 287
  object ADOConnection1: TADOConnection
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\Adler\V3 (delphi' +
      ')\Usuariodesistema.mdb;Persist Security Info=False'
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
  end
  object DataSource1: TDataSource
    DataSet = ADOTable1
    Left = 192
    Top = 24
  end
end
