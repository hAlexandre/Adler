object Formusuario_: TFormusuario_
  Left = 436
  Top = 141
  Width = 1044
  Height = 600
  Caption = 'Inserir Usuario'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 72
    Top = 88
    Width = 45
    Height = 21
    Caption = 'Senha'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label1: TLabel
    Left = 72
    Top = 56
    Width = 56
    Height = 21
    Caption = 'Usuario'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 72
    Top = 24
    Width = 43
    Height = 21
    Caption = 'Nome'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 72
    Top = 120
    Width = 37
    Height = 21
    Caption = 'Perfil'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 72
    Top = 152
    Width = 69
    Height = 21
    Caption = 'Endereco'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel
    Left = 72
    Top = 184
    Width = 28
    Height = 21
    Caption = 'CPF'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Edit1: TEdit
    Left = 176
    Top = 56
    Width = 137
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 176
    Top = 88
    Width = 137
    Height = 21
    TabOrder = 1
  end
  object Edit3: TEdit
    Left = 176
    Top = 24
    Width = 137
    Height = 21
    TabOrder = 4
  end
  object Edit4: TEdit
    Left = 176
    Top = 120
    Width = 137
    Height = 21
    TabOrder = 5
  end
  object Edit5: TEdit
    Left = 176
    Top = 152
    Width = 137
    Height = 21
    TabOrder = 6
  end
  object Edit6: TEdit
    Left = 176
    Top = 184
    Width = 137
    Height = 21
    TabOrder = 7
  end
  object Button1: TButton
    Left = 128
    Top = 240
    Width = 75
    Height = 25
    Caption = 'Inserir'
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 224
    Top = 240
    Width = 75
    Height = 25
    Caption = 'Descartar'
    TabOrder = 3
    OnClick = Button2Click
  end
  object MainMenu1: TMainMenu
    Top = 65528
    object Usuario1: TMenuItem
      Caption = 'Usuario'
      object Inserirusurio1: TMenuItem
        Caption = 'Inserir usu'#225'rio'
      end
      object AlterarUsurio1: TMenuItem
        Caption = 'Alterar Usu'#225'rio'
      end
      object Removerusuario1: TMenuItem
        Caption = 'Remover usuario'
      end
    end
    object Jogo1: TMenuItem
      Caption = 'Jogo'
      object Inserirjogo1: TMenuItem
        Caption = 'Inserir jogo'
      end
      object Alterarjogo1: TMenuItem
        Caption = 'Alterar jogo'
      end
      object Removerjogo1: TMenuItem
        Caption = 'Remover jogo'
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
      OnClick = eladelogin1Click
    end
  end
end
