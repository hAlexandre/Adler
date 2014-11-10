object ConsultarJogo: TConsultarJogo
  Left = 773
  Top = 145
  Width = 872
  Height = 574
  Caption = 'Altera Jogo'
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
  object Button1: TButton
    Left = 10
    Top = 199
    Width = 138
    Height = 74
    Caption = 'Pesquisar por nome'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Edit1: TEdit
    Left = 10
    Top = 115
    Width = 295
    Height = 25
    TabOrder = 2
  end
  object Button2: TButton
    Left = 10
    Top = 282
    Width = 138
    Height = 85
    Caption = 'Pesquisar por x'
    TabOrder = 3
  end
  object DBGrid1: TDBGrid
    Left = 607
    Top = 251
    Width = 430
    Height = 200
    DataSource = DataSource1
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete]
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -14
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
    Left = 628
    Top = 471
    Width = 147
    Height = 43
    Caption = 'Alterar registro'
    TabOrder = 4
    OnClick = Button3Click
  end
  object Edit2: TEdit
    Left = 492
    Top = 115
    Width = 158
    Height = 25
    TabOrder = 5
    Visible = False
  end
  object Button4: TButton
    Left = 722
    Top = 492
    Width = 158
    Height = 53
    Caption = 'Descartar altera'#231#245'es'
    TabOrder = 6
    Visible = False
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 523
    Top = 492
    Width = 158
    Height = 53
    Caption = 'Salvar altera'#231#245'es'
    TabOrder = 7
    Visible = False
    OnClick = Button5Click
  end
  object Button6: TButton
    Left = 806
    Top = 471
    Width = 126
    Height = 43
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
    Connection = BDJogos.ADOConnection1
    CursorType = ctStatic
    DataSource = BDJogos.DataSource1
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
