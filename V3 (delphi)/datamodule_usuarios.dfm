object dtmusuario: Tdtmusuario
  OldCreateOrder = False
  Left = 1098
  Top = 145
  Height = 196
  Width = 228
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\Users\Alexandre ' +
      'Azevedo\Desktop\Adler\Projeto\Projeto Adler\Adler\V3 (delphi)\Us' +
      'uariodesistema.mdb;Persist Security Info=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
  end
  object ADOTable1: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'Usuariodesistema'
    Left = 32
  end
  object DataSource1: TDataSource
    DataSet = ADOTable1
    Left = 64
  end
end
