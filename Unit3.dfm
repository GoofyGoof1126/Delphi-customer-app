object OpInfo: TOpInfo
  Left = 0
  Top = 0
  Caption = 'OpInfo'
  ClientHeight = 442
  ClientWidth = 628
  Color = clBtnHighlight
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Label1: TLabel
    Left = 216
    Top = 26
    Width = 204
    Height = 32
    Caption = 'Tik asb ID code in'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 64
    Top = 168
    Width = 40
    Height = 17
    Caption = 'Geslag'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 64
    Top = 200
    Width = 48
    Height = 17
    Caption = 'Address'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 64
    Top = 256
    Width = 121
    Height = 17
    Caption = 'Bank Besonderhede'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label6: TLabel
    Left = 64
    Top = 327
    Width = 30
    Height = 17
    Caption = 'Bank:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Label7: TLabel
    Left = 64
    Top = 226
    Width = 38
    Height = 17
    Caption = 'Status:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Label8: TLabel
    Left = 64
    Top = 292
    Width = 109
    Height = 17
    Caption = 'Rekening Nommer'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object edtAddress: TEdit
    Left = 216
    Top = 199
    Width = 337
    Height = 23
    TabOrder = 0
  end
  object edtStatus: TEdit
    Left = 216
    Top = 225
    Width = 337
    Height = 23
    TabOrder = 1
  end
  object edtReknmr: TEdit
    Left = 216
    Top = 291
    Width = 337
    Height = 23
    TabOrder = 2
  end
  object radMale: TRadioButton
    Left = 216
    Top = 170
    Width = 57
    Height = 17
    Caption = 'Male'
    TabOrder = 3
  end
  object radFemale: TRadioButton
    Left = 296
    Top = 170
    Width = 65
    Height = 17
    Caption = 'Female'
    TabOrder = 4
  end
  object btnSave: TButton
    Left = 216
    Top = 384
    Width = 113
    Height = 25
    Caption = 'Stoor Inligting'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
    OnClick = btnSaveClick
  end
  object btnBack: TButton
    Left = 520
    Top = 384
    Width = 83
    Height = 25
    Caption = 'Keer Terug'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
    OnClick = btnBackClick
  end
  object edtID: TEdit
    Left = 216
    Top = 64
    Width = 204
    Height = 25
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 7
  end
  object edtBank: TEdit
    Left = 216
    Top = 326
    Width = 169
    Height = 23
    TabOrder = 8
  end
  object adoConnection: TADOConnection
    ConnectionString = 
      'Provider=SQLOLEDB.1;Password=Pr3torium@1;Persist Security Info=T' +
      'rue;User ID=sa;Initial Catalog=Pretorium;Data Source=TESTDEV'
    Provider = 'SQLOLEDB.1'
    Left = 24
    Top = 384
  end
  object adoQuery: TADOQuery
    Connection = adoConnection
    Parameters = <>
    Left = 128
    Top = 384
  end
  object DataSource1: TDataSource
    DataSet = adoQuery
    Left = 392
    Top = 392
  end
end
