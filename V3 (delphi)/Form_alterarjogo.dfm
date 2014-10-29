object Form_alterajogo: TForm_alterajogo
  Left = 394
  Top = 211
  Width = 1044
  Height = 540
  Caption = 'Form_alterajogo'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 8
    Top = 152
    Width = 105
    Height = 57
    Caption = 'Pesquisar por nome'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Edit1: TEdit
    Left = 8
    Top = 88
    Width = 225
    Height = 21
    TabOrder = 2
  end
  object Button2: TButton
    Left = 8
    Top = 216
    Width = 105
    Height = 65
    Caption = 'Pesquisar por x'
    TabOrder = 3
  end
  object DBGrid1: TDBGrid
    Left = 480
    Top = 200
    Width = 329
    Height = 153
    DataSource = DataSource1
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
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
  end
  object ADOQuery1: TADOQuery
    Active = True
    Connection = datamodulejogos.ADOConnection1
    CursorType = ctStatic
    DataSource = datamodulejogos.DataSource1
    Parameters = <>
    SQL.Strings = (
      'Select * from Jogo')
    Left = 136
    Top = 160
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 312
    Top = 16
  end
end
