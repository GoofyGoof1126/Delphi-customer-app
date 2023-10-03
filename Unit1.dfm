object Login: TLogin
  Left = 0
  Top = 0
  Caption = 'Login'
  ClientHeight = 445
  ClientWidth = 507
  Color = clMenuHighlight
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Label1: TLabel
    Left = 248
    Top = 83
    Width = 56
    Height = 20
    Caption = 'User ID:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -15
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 223
    Top = 174
    Width = 138
    Height = 20
    Caption = 'Name and Surname'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -15
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object btnRegister: TButton
    Left = 176
    Top = 256
    Width = 75
    Height = 25
    Caption = 'Register'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    OnClick = btnRegisterClick
  end
  object edtID: TEdit
    Left = 192
    Top = 109
    Width = 169
    Height = 28
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
  end
  object edtName: TEdit
    Left = 146
    Top = 200
    Width = 273
    Height = 28
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
  end
  object btnLogin: TButton
    Left = 328
    Top = 256
    Width = 75
    Height = 25
    Caption = 'Login'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    OnClick = btnLoginClick
  end
  object btnExit: TButton
    Left = 248
    Top = 320
    Width = 75
    Height = 25
    Caption = 'Exit'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    OnClick = btnExitClick
  end
  object adoConnection: TADOConnection
    ConnectionString = 
      'Provider=SQLOLEDB.1;Password=Pr3torium@1;Persist Security Info=T' +
      'rue;User ID=sa;Initial Catalog=Pretorium;Data Source=TESTDEV'
    Provider = 'SQLOLEDB.1'
    Left = 104
    Top = 392
  end
  object adoQuery: TADOQuery
    Connection = adoConnection
    Parameters = <>
    Left = 296
    Top = 384
  end
  object DataSource1: TDataSource
    DataSet = adoQuery
    Left = 416
    Top = 384
  end
end
