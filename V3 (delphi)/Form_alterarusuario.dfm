object ERROUSUARIO: TERROUSUARIO
  Left = 501
  Top = 262
  Width = 1044
  Height = 540
  Caption = 'AlterarUsuario'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -14
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  PixelsPerInch = 120
  TextHeight = 17
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
end
