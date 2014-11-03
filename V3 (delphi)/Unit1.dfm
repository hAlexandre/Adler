object Form1: TForm1
  Left = 268
  Top = 128
  AutoScroll = False
  Caption = 'Form1'
  ClientHeight = 665
  ClientWidth = 1130
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  DesignSize = (
    1130
    665)
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 424
    Top = 312
    Width = 48
    Height = 22
    Anchors = []
    AutoSize = False
    Caption = 'Senha'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 22
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label1: TLabel
    Left = 424
    Top = 272
    Width = 59
    Height = 22
    Anchors = []
    AutoSize = False
    Caption = 'Usu'#225'rio'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 22
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Button1: TButton
    Left = 496
    Top = 352
    Width = 161
    Height = 33
    Anchors = []
    Caption = 'Entrar'
    ModalResult = 1
    TabOrder = 0
    OnClick = Button1Click
  end
  object Edit1: TEdit
    Left = 496
    Top = 280
    Width = 161
    Height = 21
    Anchors = []
    AutoSelect = False
    AutoSize = False
    TabOrder = 1
  end
  object Edit2: TEdit
    Left = 496
    Top = 312
    Width = 161
    Height = 21
    Anchors = []
    AutoSize = False
    PasswordChar = 'x'
    TabOrder = 2
  end
end
