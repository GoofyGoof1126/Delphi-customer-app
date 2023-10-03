object BKaarte: TBKaarte
  Left = 0
  Top = 0
  Caption = 'BKaarte'
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
    Left = 202
    Top = 22
    Width = 211
    Height = 37
    Caption = 'Bestande Kaarte'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 104
    Top = 128
    Width = 110
    Height = 20
    Caption = 'Kaart Nommer:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 104
    Top = 200
    Width = 90
    Height = 20
    Caption = 'Kaart Status:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblKaartNum: TLabel
    Left = 104
    Top = 154
    Width = 121
    Height = 23
  end
  object lblKaartStatus: TLabel
    Left = 104
    Top = 226
    Width = 105
    Height = 31
  end
  object Label6: TLabel
    Left = 392
    Top = 128
    Width = 94
    Height = 20
    Caption = 'Kaart Lemiet:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblKaartLimiet: TLabel
    Left = 392
    Top = 154
    Width = 112
    Height = 31
  end
  object Label8: TLabel
    Left = 392
    Top = 204
    Width = 69
    Height = 20
    Caption = 'Kaart Rol:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblKaartRol: TLabel
    Left = 392
    Top = 230
    Width = 96
    Height = 27
  end
  object Label4: TLabel
    Left = 208
    Top = 65
    Width = 180
    Height = 20
    Caption = 'Tik asseblief U ID kode in:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object edtID: TEdit
    Left = 189
    Top = 91
    Width = 121
    Height = 23
    TabOrder = 0
  end
  object btnCheck: TButton
    Left = 316
    Top = 88
    Width = 97
    Height = 25
    Caption = 'Sien Kaarte:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnClick = btnCheckClick
  end
  object Back: TButton
    Left = 256
    Top = 336
    Width = 75
    Height = 25
    Caption = 'Back'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnClick = BackClick
  end
  object Button1: TButton
    Left = 440
    Top = 336
    Width = 97
    Height = 25
    Caption = 'Nuwe Kaart'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    OnClick = Button1Click
  end
end
