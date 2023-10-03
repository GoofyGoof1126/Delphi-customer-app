object Kaarte: TKaarte
  Left = 0
  Top = 0
  Caption = 'Kaarte'
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
    Left = 208
    Top = 16
    Width = 194
    Height = 45
    Caption = 'Nuwe Kaarte'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -32
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 94
    Top = 105
    Width = 99
    Height = 17
    Caption = 'Kies tiepe kaart:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 96
    Top = 216
    Width = 44
    Height = 17
    Caption = 'Lid rol:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 400
    Top = 126
    Width = 198
    Height = 17
    Caption = 'Datum wanneer kaart geskep is:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 400
    Top = 265
    Width = 216
    Height = 17
    Caption = 'Datum wanneer kaart reg sal wees:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label6: TLabel
    Left = 96
    Top = 328
    Width = 79
    Height = 17
    Caption = 'Kaart Limiet:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object edtID: TEdit
    Left = 208
    Top = 64
    Width = 194
    Height = 23
    TabOrder = 0
  end
  object btnSave: TButton
    Left = 249
    Top = 400
    Width = 112
    Height = 25
    Caption = 'Skep Kaart'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnClick = btnSaveClick
  end
  object radGoud: TRadioButton
    Left = 96
    Top = 128
    Width = 113
    Height = 17
    Caption = 'Goud'
    TabOrder = 2
  end
  object radBlou: TRadioButton
    Left = 96
    Top = 160
    Width = 113
    Height = 17
    Caption = 'Blou'
    TabOrder = 3
  end
  object radHoof: TRadioButton
    Left = 94
    Top = 248
    Width = 113
    Height = 17
    Caption = 'Hoof'
    TabOrder = 4
  end
  object radGade: TRadioButton
    Left = 94
    Top = 288
    Width = 113
    Height = 17
    Caption = 'Gade'
    TabOrder = 5
  end
  object edtDateB: TEdit
    Left = 400
    Top = 157
    Width = 198
    Height = 23
    TabOrder = 6
  end
  object edtEnd: TEdit
    Left = 400
    Top = 288
    Width = 198
    Height = 23
    TabOrder = 7
  end
  object edtLimiet: TEdit
    Left = 96
    Top = 351
    Width = 137
    Height = 23
    TabOrder = 8
  end
  object Button1: TButton
    Left = 408
    Top = 336
    Width = 89
    Height = 25
    Caption = 'Sien Kaarte'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 9
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 408
    Top = 392
    Width = 89
    Height = 25
    Caption = 'Keer Terug'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 10
    OnClick = Button2Click
  end
  object adoConnection: TADOConnection
    ConnectionString = 
      'Provider=SQLOLEDB.1;Password=Pr3torium@1;Persist Security Info=T' +
      'rue;User ID=sa;Initial Catalog=Pretorium;Data Source=TESTDEV'
    Provider = 'SQLOLEDB.1'
    Left = 32
    Top = 16
  end
  object adoQuery: TADOQuery
    Connection = adoConnection
    Parameters = <>
    Left = 584
    Top = 320
  end
  object DataSource1: TDataSource
    DataSet = adoQuery
    Left = 584
    Top = 384
  end
end
