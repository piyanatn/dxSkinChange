object Form5: TForm5
  Left = 0
  Top = 0
  Caption = 'Form5'
  ClientHeight = 242
  ClientWidth = 527
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object cxPageControl1: TcxPageControl
    Left = 8
    Top = 41
    Width = 289
    Height = 193
    TabOrder = 0
    Properties.ActivePage = cxTabSheet1
    Properties.CustomButtons.Buttons = <>
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'UserSkin'
    ClientRectBottom = 187
    ClientRectLeft = 3
    ClientRectRight = 283
    ClientRectTop = 26
    object cxTabSheet1: TcxTabSheet
      Caption = 'cxTabSheet1'
      ImageIndex = 0
      ExplicitLeft = -13
      ExplicitTop = 82
    end
    object cxTabSheet2: TcxTabSheet
      Caption = 'cxTabSheet2'
      ImageIndex = 1
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 281
      ExplicitHeight = 165
    end
  end
  object cxComboBox1: TcxComboBox
    Left = 11
    Top = 8
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -16
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = []
    Style.LookAndFeel.NativeStyle = False
    Style.IsFontAssigned = True
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.NativeStyle = False
    TabOrder = 1
    Width = 286
  end
  object cxButton1: TcxButton
    Left = 303
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Check'
    TabOrder = 2
    OnClick = cxButton1Click
  end
  object dxSkinController1: TdxSkinController
    NativeStyle = False
    SkinName = 'Foggy'
    Left = 352
    Top = 64
  end
  object cxLookAndFeelController1: TcxLookAndFeelController
    NativeStyle = False
    SkinName = 'Foggy'
    Left = 344
    Top = 120
  end
end
