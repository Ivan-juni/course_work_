object DataModule1: TDataModule1
  OldCreateOrder = False
  Left = 581
  Top = 248
  Height = 653
  Width = 598
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;User ID=Admin;Data Source=gym.m' +
      'db;Mode=Share Deny None;Persist Security Info=False;Jet OLEDB:Sy' +
      'stem database="";Jet OLEDB:Registry Path="";Jet OLEDB:Database P' +
      'assword="";Jet OLEDB:Engine Type=5;Jet OLEDB:Database Locking Mo' +
      'de=1;Jet OLEDB:Global Partial Bulk Ops=2;Jet OLEDB:Global Bulk T' +
      'ransactions=1;Jet OLEDB:New Database Password="";Jet OLEDB:Creat' +
      'e System Database=False;Jet OLEDB:Encrypt Database=False;Jet OLE' +
      'DB:Don'#39't Copy Locale on Compact=False;Jet OLEDB:Compact Without ' +
      'Replica Repair=False;Jet OLEDB:SFP=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 24
    Top = 16
  end
  object ADOQWork: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 104
    Top = 16
  end
  object DataSWork: TDataSource
    DataSet = ADOQWork
    Left = 168
    Top = 16
  end
  object ADOQAbonements: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * '
      '  FROM '#1040#1073#1086#1085#1077#1084#1077#1085#1090#1080' ORDER BY '#1040#1073#1086#1085#1077#1084#1077#1085#1090#1080'.'#1050#1086#1076)
    Left = 72
    Top = 96
  end
  object DataSAbonements: TDataSource
    DataSet = ADOQAbonements
    Left = 168
    Top = 96
  end
  object DataSPers: TDataSource
    DataSet = ADOTPersonal
    Left = 152
    Top = 240
  end
  object DataSTCustomers: TDataSource
    DataSet = ADOTCustomers
    Left = 136
    Top = 176
  end
  object DataSCheck: TDataSource
    DataSet = ADOTCheck
    Left = 128
    Top = 440
  end
  object ADOQWork2: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 72
    Top = 376
  end
  object DataSWork2: TDataSource
    DataSet = ADOQWork2
    Left = 136
    Top = 376
  end
  object ADOTPersonal: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = #1055#1077#1088#1089#1086#1085#1072#1083
    Left = 80
    Top = 232
  end
  object ADOTCustomers: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = #1050#1083#1110#1108#1085#1090#1080
    Left = 80
    Top = 176
  end
  object DataSSales: TDataSource
    DataSet = ADOQSales
    Left = 136
    Top = 304
  end
  object ADOTCheck: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = #1063#1077#1082
    Left = 72
    Top = 440
  end
  object ADOQSales: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT '#1055#1088#1086#1076#1072#1078#1110'.'#1050#1086#1076', '#1040#1073#1086#1085#1077#1084#1077#1085#1090#1080'.'#1053#1072#1079#1074#1072', '#1050#1083#1110#1108#1085#1090#1080'.'#1055#1030#1041', '#1055#1077#1088#1089#1086#1085#1072#1083'.'#1055#1030#1041',' +
        ' '#1055#1088#1086#1076#1072#1078#1110'.'#1044#1072#1090#1072', '#1063#1077#1082'.'#1050#1086#1076', '#1040#1073#1086#1085#1077#1084#1077#1085#1090#1080'.'#1042#1072#1088#1090#1110#1089#1090#1100
      
        'FROM '#1063#1077#1082' INNER JOIN ('#1040#1073#1086#1085#1077#1084#1077#1085#1090#1080' INNER JOIN ('#1050#1083#1110#1108#1085#1090#1080' INNER JOIN (' +
        #1055#1077#1088#1089#1086#1085#1072#1083' INNER JOIN '#1055#1088#1086#1076#1072#1078#1110' ON '#1055#1077#1088#1089#1086#1085#1072#1083'.'#1050#1086#1076' = '#1055#1088#1086#1076#1072#1078#1110'.'#1050#1086#1076'_'#1087#1088#1072#1094#1110#1074 +
        #1085#1080#1082#1072') ON '#1050#1083#1110#1108#1085#1090#1080'.'#1050#1086#1076' = '#1055#1088#1086#1076#1072#1078#1110'.'#1050#1086#1076'_'#1082#1083#1110#1108#1085#1090#1072') ON '#1040#1073#1086#1085#1077#1084#1077#1085#1090#1080'.'#1050#1086#1076' = ' +
        #1055#1088#1086#1076#1072#1078#1110'.'#1050#1086#1076'_'#1072#1073#1086#1085#1077#1084#1077#1085#1090#1091') ON '#1063#1077#1082'.'#1050#1086#1076' = '#1055#1088#1086#1076#1072#1078#1110'.'#1050#1086#1076'_'#1095#1077#1082#1091';')
    Left = 72
    Top = 304
  end
  object DataSource1: TDataSource
    DataSet = ADOQWork2
    Left = 136
    Top = 376
  end
  object ADOQSalesMain: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT '#1055#1088#1086#1076#1072#1078#1110'.'#1050#1086#1076', '#1040#1073#1086#1085#1077#1084#1077#1085#1090#1080'.'#1053#1072#1079#1074#1072', '#1050#1083#1110#1108#1085#1090#1080'.'#1055#1030#1041', '#1055#1077#1088#1089#1086#1085#1072#1083'.'#1055#1030#1041',' +
        ' '#1055#1088#1086#1076#1072#1078#1110'.'#1044#1072#1090#1072', '#1063#1077#1082'.'#1050#1086#1076', '#1040#1073#1086#1085#1077#1084#1077#1085#1090#1080'.'#1042#1072#1088#1090#1110#1089#1090#1100
      
        '   FROM '#1063#1077#1082' INNER JOIN ('#1040#1073#1086#1085#1077#1084#1077#1085#1090#1080' INNER JOIN ('#1050#1083#1110#1108#1085#1090#1080' INNER JOI' +
        'N ('#1055#1077#1088#1089#1086#1085#1072#1083' INNER JOIN '#1055#1088#1086#1076#1072#1078#1110' ON '#1055#1077#1088#1089#1086#1085#1072#1083'.'#1050#1086#1076' = '#1055#1088#1086#1076#1072#1078#1110'.'#1050#1086#1076'_'#1087#1088#1072 +
        #1094#1110#1074#1085#1080#1082#1072') ON '#1050#1083#1110#1108#1085#1090#1080'.'#1050#1086#1076' = '#1055#1088#1086#1076#1072#1078#1110'.'#1050#1086#1076'_'#1082#1083#1110#1108#1085#1090#1072') ON '#1040#1073#1086#1085#1077#1084#1077#1085#1090#1080'.'#1050#1086#1076 +
        ' = '#1055#1088#1086#1076#1072#1078#1110'.'#1050#1086#1076'_'#1072#1073#1086#1085#1077#1084#1077#1085#1090#1091') ON '#1063#1077#1082'.'#1050#1086#1076' = '#1055#1088#1086#1076#1072#1078#1110'.'#1050#1086#1076'_'#1095#1077#1082#1091)
    Left = 72
    Top = 504
  end
  object DataSSalesMain: TDataSource
    DataSet = ADOQSalesMain
    Left = 144
    Top = 504
  end
  object ADOQChek: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from '#1063#1077#1082' order by '#1063#1077#1082'.'#1050#1086#1076)
    Left = 72
    Top = 560
  end
  object DataSChek: TDataSource
    DataSet = ADOQChek
    Left = 136
    Top = 560
  end
  object ADOTAbonementPriceList: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = #1040#1073#1086#1085#1077#1084#1077#1085#1090#1080
    Left = 424
    Top = 208
  end
  object DataSourceAbonementsPriceList: TDataSource
    DataSet = ADOTAbonementPriceList
    Left = 424
    Top = 256
  end
  object ADOQPers_login: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM '#1055#1077#1088#1089#1086#1085#1072#1083' WHERE '#1055#1086#1089#1072#1076#1072' = "'#1052#1077#1085#1077#1076#1078#1077#1088' '#1079' '#1087#1088#1086#1076#1072#1078#1091'"')
    Left = 328
    Top = 112
  end
  object DataSPers_login: TDataSource
    DataSet = ADOQPers_login
    Left = 384
    Top = 112
  end
end
