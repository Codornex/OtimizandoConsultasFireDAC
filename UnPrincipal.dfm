object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 233
  ClientWidth = 1012
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 522
    Top = 104
    Width = 460
    Height = 120
    DataSource = DataSource2
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object DBGrid2: TDBGrid
    Left = 34
    Top = 104
    Width = 460
    Height = 120
    DataSource = DataSource1
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object Button1: TButton
    Left = 488
    Top = 72
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 2
    OnClick = Button1Click
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'SERVER=DEIVID-PC\SERVERTESTE'
      'User_Name=sa'
      'Password=051292'
      'ApplicationName=Architect'
      'Workstation=DEIVID-PC'
      'MARS=yes'
      'Database=AdventureWorks2014'
      'DriverID=MSSQL')
    Connected = True
    LoginPrompt = False
    Left = 472
    Top = 16
  end
  object FDQuery1: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT TOP 100 * FROM AdventureWorks2014.Person.Address'
      'SELECT TOP 100 * FROM AdventureWorks2014.Person.ContactType')
    Left = 528
    Top = 16
  end
  object DataSource1: TDataSource
    DataSet = FDTable1
    Left = 152
    Top = 48
  end
  object DataSource2: TDataSource
    DataSet = FDTable2
    Left = 768
    Top = 48
  end
  object FDTable1: TFDTable
    Connection = FDConnection1
    UpdateOptions.UpdateTableName = 'AdventureWorks2014.Person.Address'
    TableName = 'AdventureWorks2014.Person.Address'
    Left = 216
    Top = 48
  end
  object FDTable2: TFDTable
    Connection = FDConnection1
    UpdateOptions.UpdateTableName = 'AdventureWorks2014.Person.ContactType'
    TableName = 'AdventureWorks2014.Person.ContactType'
    Left = 824
    Top = 48
  end
end
