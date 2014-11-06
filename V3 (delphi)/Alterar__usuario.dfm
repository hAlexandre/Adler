object formAlter_Usuario: TformAlter_Usuario
  Left = 536
  Top = 156
  Width = 820
  Height = 585
  Caption = 'alterar usuario'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  WindowState = wsMaximized
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 328
    Top = 24
    Width = 78
    Height = 18
    Caption = 'Novo senha'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Visible = False
  end
  object Label2: TLabel
    Left = 328
    Top = 72
    Width = 99
    Height = 18
    Caption = 'Novo endereco'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Visible = False
  end
  object Edit1: TEdit
    Left = 8
    Top = 88
    Width = 225
    Height = 21
    TabOrder = 0
  end
  object Button1: TButton
    Left = 8
    Top = 128
    Width = 105
    Height = 57
    Caption = 'Pesquisar por nome'
    TabOrder = 1
    OnClick = Button1Click
  end
  object DBGrid1: TDBGrid
    Left = 328
    Top = 264
    Width = 401
    Height = 120
    DataSource = DataSource1
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
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
    Left = 328
    Top = 392
    Width = 97
    Height = 25
    Caption = 'Alterar registro'
    TabOrder = 3
    OnClick = Button2Click
  end
  object Edit2: TEdit
    Left = 328
    Top = 48
    Width = 121
    Height = 21
    TabOrder = 4
    Visible = False
  end
  object Button3: TButton
    Left = 320
    Top = 128
    Width = 89
    Height = 25
    Caption = 'Salvar altera'#231#245'es'
    TabOrder = 5
    Visible = False
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 424
    Top = 128
    Width = 121
    Height = 25
    Caption = 'Descartar altera'#231#245'es'
    TabOrder = 6
    Visible = False
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 448
    Top = 392
    Width = 105
    Height = 25
    Caption = 'Excluir registro'
    TabOrder = 7
    OnClick = Button5Click
  end
  object Edit3: TEdit
    Left = 328
    Top = 96
    Width = 121
    Height = 21
    TabOrder = 8
    Visible = False
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
    Connection = dtmusuario.ADOConnection1
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
