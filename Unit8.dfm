object VersekeringPlan: TVersekeringPlan
  Left = 0
  Top = 0
  Caption = 'VersekeringPlan'
  ClientHeight = 442
  ClientWidth = 628
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Label1: TLabel
    Left = 105
    Top = 26
    Width = 431
    Height = 32
    Caption = 'Please enter your Name and Surname'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 105
    Top = 352
    Width = 4
    Height = 17
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 88
    Top = 309
    Width = 269
    Height = 20
    Caption = 'Moontlike bedrag op versekering P/M:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 360
    Top = 376
    Width = 34
    Height = 15
    Caption = 'Label4'
  end
  object edtID: TEdit
    Left = 184
    Top = 64
    Width = 249
    Height = 25
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
  end
  object radCar: TRadioButton
    Left = 56
    Top = 152
    Width = 113
    Height = 17
    Caption = 'Car'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object RadioButton2: TRadioButton
    Left = 56
    Top = 192
    Width = 113
    Height = 17
    Caption = 'RadioButton2'
    TabOrder = 2
  end
  object RadioButton3: TRadioButton
    Left = 56
    Top = 232
    Width = 113
    Height = 17
    Caption = 'RadioButton3'
    TabOrder = 3
  end
  object RadioButton4: TRadioButton
    Left = 264
    Top = 152
    Width = 113
    Height = 17
    Caption = 'RadioButton4'
    TabOrder = 4
  end
  object RadioButton5: TRadioButton
    Left = 264
    Top = 192
    Width = 113
    Height = 17
    Caption = 'RadioButton5'
    TabOrder = 5
  end
  object RadioButton6: TRadioButton
    Left = 264
    Top = 232
    Width = 113
    Height = 17
    Caption = 'RadioButton6'
    TabOrder = 6
  end
  object RadioButton7: TRadioButton
    Left = 472
    Top = 152
    Width = 113
    Height = 17
    Caption = 'RadioButton7'
    TabOrder = 7
  end
  object RadioButton8: TRadioButton
    Left = 472
    Top = 192
    Width = 113
    Height = 17
    Caption = 'RadioButton8'
    TabOrder = 8
  end
  object RadioButton9: TRadioButton
    Left = 472
    Top = 232
    Width = 113
    Height = 17
    Caption = 'RadioButton9'
    TabOrder = 9
  end
  object Button1: TButton
    Left = 496
    Top = 304
    Width = 75
    Height = 25
    Caption = 'Help!'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 10
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 496
    Top = 350
    Width = 75
    Height = 25
    Caption = 'Home'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 11
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 88
    Top = 380
    Width = 241
    Height = 25
    Caption = 'Calculate repayment amount:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 12
  end
end
