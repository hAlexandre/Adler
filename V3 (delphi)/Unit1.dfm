object Form1: TForm1
  Left = 192
  Top = 128
  Width = 864
  Height = 632
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 256
    Top = 208
    Width = 59
    Height = 22
    Caption = 'Usuario'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 22
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 272
    Top = 240
    Width = 48
    Height = 22
    Caption = 'Senha'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 22
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Button1: TButton
    Left = 344
    Top = 280
    Width = 161
    Height = 33
    Caption = 'Entrar'
    ModalResult = 1
    TabOrder = 0
    OnClick = Button1Click
  end
  object Edit1: TEdit
    Left = 344
    Top = 208
    Width = 161
    Height = 21
    TabOrder = 1
  end
  object Edit2: TEdit
    Left = 344
    Top = 240
    Width = 161
    Height = 21
    TabOrder = 2
  end
end
