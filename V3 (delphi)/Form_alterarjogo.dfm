object Form_alterajogo: TForm_alterajogo
  Left = 773
  Top = 145
  Width = 872
  Height = 574
  Caption = 'Altera Jogo'
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
    Left = 464
    Top = 192
    Width = 329
    Height = 153
    DataSource = DataSource1
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete]
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Nome'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Preco'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Descricao'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Desenvolvedor'
        Visible = True
      end>
  end
  object Button3: TButton
    Left = 480
    Top = 360
    Width = 113
    Height = 33
    Caption = 'Alterar registro'
    TabOrder = 4
    OnClick = Button3Click
  end
  object Edit2: TEdit
    Left = 376
    Top = 88
    Width = 121
    Height = 21
    TabOrder = 5
    Visible = False
  end
  object Button4: TButton
    Left = 552
    Top = 376
    Width = 121
    Height = 41
    Caption = 'Descartar altera'#231#245'es'
    TabOrder = 6
    Visible = False
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 400
    Top = 376
    Width = 121
    Height = 41
    Caption = 'Salvar altera'#231#245'es'
    TabOrder = 7
    Visible = False
    OnClick = Button5Click
  end
  object Button6: TButton
    Left = 616
    Top = 360
    Width = 97
    Height = 33
    Caption = 'Excluir registro'
    TabOrder = 8
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
  object ADOQuery1: TADOQuery
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
    Left = 544
    Top = 288
  end
end
