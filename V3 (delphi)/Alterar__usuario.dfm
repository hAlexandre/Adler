object AlterarUsuario: TAlterarUsuario
  Left = 455
  Top = 170
  Width = 820
  Height = 585
  Caption = 'alterar usuario'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -14
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  WindowState = wsMaximized
  OnClose = FormClose
  PixelsPerInch = 120
  TextHeight = 17
  object Label1: TLabel
    Left = 429
    Top = 31
    Width = 104
    Height = 24
    Caption = 'Novo senha'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Visible = False
  end
  object Label2: TLabel
    Left = 429
    Top = 94
    Width = 133
    Height = 24
    Caption = 'Novo endereco'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Visible = False
  end
  object Edit1: TEdit
    Left = 10
    Top = 115
    Width = 295
    Height = 25
    TabOrder = 0
  end
  object Button1: TButton
    Left = 10
    Top = 167
    Width = 138
    Height = 75
    Caption = 'Pesquisar por nome'
    TabOrder = 1
    OnClick = Button1Click
  end
  object DBGrid1: TDBGrid
    Left = 429
    Top = 345
    Width = 524
    Height = 157
    DataSource = DataSource1
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -14
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Codigo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nome'
        Width = 63
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'usario'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'perfil'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'endereco'
        Width = 56
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'cpf'
        Visible = True
      end>
  end
  object Button2: TButton
    Left = 429
    Top = 513
    Width = 127
    Height = 32
    Caption = 'Alterar registro'
    TabOrder = 3
    OnClick = Button2Click
  end
  object Edit2: TEdit
    Left = 429
    Top = 63
    Width = 158
    Height = 25
    TabOrder = 4
    Visible = False
  end
  object Button3: TButton
    Left = 418
    Top = 167
    Width = 117
    Height = 33
    Caption = 'Salvar altera'#231#245'es'
    TabOrder = 5
    Visible = False
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 554
    Top = 167
    Width = 159
    Height = 33
    Caption = 'Descartar altera'#231#245'es'
    TabOrder = 6
    Visible = False
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 586
    Top = 513
    Width = 137
    Height = 32
    Caption = 'Excluir registro'
    TabOrder = 7
    OnClick = Button5Click
  end
  object Edit3: TEdit
    Left = 429
    Top = 126
    Width = 158
    Height = 25
    TabOrder = 8
    Visible = False
  end
  object Button6: TButton
    Left = 48
    Top = 8
    Width = 113
    Height = 25
    Caption = '<< VOLTAR'
    TabOrder = 9
    OnClick = Button6Click
  end
  object MainMenu1: TMainMenu
    Top = 65528
    object Usuario1: TMenuItem
      Caption = 'Usuario'
      object Inserirusurio1: TMenuItem
        Caption = 'Inserir usu'#225'rio'
      end
      object AlterarUsurio1: TMenuItem
        Caption = 'Consultar Usu'#225'rio'
      end
    end
    object Jogo1: TMenuItem
      Caption = 'Jogo'
      object Inserirjogo1: TMenuItem
        Caption = 'Inserir jogo'
      end
      object Alterarjogo1: TMenuItem
        Caption = 'Consultar jogo'
      end
    end
    object Funcionrio1: TMenuItem
      Caption = 'Funcion'#225'rio'
      object InserirFuncionrio1: TMenuItem
        Caption = 'Inserir Funcion'#225'rio'
      end
      object AlterarFuncionrio1: TMenuItem
        Caption = 'Alterar Funcion'#225'rio'
      end
      object RemoverFuncionrio1: TMenuItem
        Caption = 'Remover Funcion'#225'rio'
      end
    end
    object eladelogin1: TMenuItem
      Caption = 'Tela de login'
    end
  end
  object ADOQuery1: TADOQuery
    Connection = BDUsuarios.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * from Usuariodesistema')
    Left = 136
    Top = 192
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 336
    Top = 312
  end
end
