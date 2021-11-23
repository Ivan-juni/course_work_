object Form1: TForm1
  Left = 923
  Top = 167
  Width = 997
  Height = 491
  Caption = #1057#1087#1088#1072#1074#1086#1095#1085#1080#1082#1080
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 981
    Height = 452
    ActivePage = TabSheet1
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = #1040#1073#1086#1085#1077#1084#1077#1085#1090#1080
      object DBGrid1: TDBGrid
        Left = 0
        Top = 0
        Width = 973
        Height = 278
        Align = alClient
        DataSource = DataModule1.DataSAbonements
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = [fsBold]
      end
      object Panel1: TPanel
        Left = 0
        Top = 278
        Width = 973
        Height = 71
        Align = alBottom
        TabOrder = 1
        object Label7: TLabel
          Left = 408
          Top = 12
          Width = 201
          Height = 13
          Caption = #1055#1086#1080#1089#1082' '#1072#1073#1086#1085#1077#1084#1077#1085#1090#1072' '#1087#1086' '#1085#1072#1079#1074#1072#1085#1080#1102': '
        end
        object Label1: TLabel
          Left = 408
          Top = 36
          Width = 170
          Height = 13
          Caption = #1055#1086#1080#1089#1082' '#1087#1086' '#1082#1086#1076#1091' '#1072#1073#1086#1085#1077#1084#1077#1085#1090#1072': '
        end
        object btn_del_abonement: TButton
          Left = 167
          Top = 8
          Width = 75
          Height = 25
          Caption = #1042#1080#1076#1072#1083#1080#1090#1080
          TabOrder = 0
          OnClick = btn_del_abonementClick
        end
        object Edit5: TEdit
          Left = 610
          Top = 8
          Width = 223
          Height = 21
          TabOrder = 1
          OnChange = Edit5Change
        end
        object btn_price_list: TButton
          Left = 246
          Top = 8
          Width = 75
          Height = 25
          Caption = #1055#1088#1072#1081#1089'-'#1083#1080#1089#1090
          TabOrder = 2
          OnClick = btn_price_listClick
        end
        object btn_add_abonement: TButton
          Left = 8
          Top = 8
          Width = 75
          Height = 25
          Caption = #1044#1086#1076#1072#1090#1080
          TabOrder = 3
          OnClick = btn_add_abonementClick
        end
        object btn_upd_abonement: TButton
          Left = 88
          Top = 8
          Width = 75
          Height = 25
          Caption = #1047#1084#1110#1085#1080#1090#1080
          TabOrder = 4
          OnClick = btn_upd_abonementClick
        end
        object Edit2: TEdit
          Left = 610
          Top = 32
          Width = 63
          Height = 21
          TabOrder = 5
        end
        object btn_ok: TButton
          Left = 680
          Top = 32
          Width = 75
          Height = 25
          Caption = #1054#1082
          TabOrder = 6
          OnClick = btn_okClick
        end
        object btn_cancel: TButton
          Left = 760
          Top = 32
          Width = 75
          Height = 25
          Caption = #1042#1110#1076#1084#1110#1085#1072
          TabOrder = 7
          OnClick = btn_cancelClick
        end
      end
      object Panel2: TPanel
        Left = 0
        Top = 349
        Width = 973
        Height = 75
        Align = alBottom
        TabOrder = 2
        Visible = False
        object Label2: TLabel
          Left = 8
          Top = 12
          Width = 38
          Height = 13
          Caption = #1053#1072#1079#1074#1072
        end
        object Label4: TLabel
          Left = 286
          Top = 11
          Width = 64
          Height = 13
          Caption = #1058#1077#1088#1084#1110#1085' '#1076#1110#1111' '
        end
        object Label5: TLabel
          Left = 224
          Top = 35
          Width = 127
          Height = 13
          Caption = #1042#1072#1088#1090#1110#1089#1090#1100' '#1072#1073#1086#1085#1077#1084#1077#1085#1090#1072
        end
        object Edit1: TEdit
          Left = 88
          Top = 8
          Width = 145
          Height = 21
          TabOrder = 0
        end
        object Edit3: TEdit
          Left = 360
          Top = 8
          Width = 145
          Height = 21
          TabOrder = 1
        end
        object Edit4: TEdit
          Left = 360
          Top = 32
          Width = 145
          Height = 21
          TabOrder = 2
          Text = '0'
        end
        object btn_update_information: TButton
          Left = 528
          Top = 36
          Width = 113
          Height = 25
          Caption = #1047#1084#1110#1085#1080#1090#1080' '#1079#1072#1087#1080#1089
          TabOrder = 3
          OnClick = btn_update_informationClick
        end
        object btn_cancel2: TButton
          Left = 664
          Top = 24
          Width = 105
          Height = 26
          Caption = #1042#1110#1076#1084#1110#1085#1072
          TabOrder = 4
          OnClick = btn_cancel2Click
        end
        object btn_add_information: TButton
          Left = 528
          Top = 8
          Width = 113
          Height = 25
          Caption = #1044#1086#1076#1072#1090#1080' '#1079#1072#1087#1080#1089
          TabOrder = 5
          OnClick = btn_add_informationClick
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = #1055#1077#1088#1089#1086#1085#1072#1083
      ImageIndex = 2
      object DBGrid3: TDBGrid
        Left = 0
        Top = 0
        Width = 973
        Height = 367
        Align = alClient
        DataSource = DataModule1.DataSPers
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = [fsBold]
      end
      object Panel4: TPanel
        Left = 0
        Top = 367
        Width = 973
        Height = 43
        Align = alBottom
        TabOrder = 1
        object Button_delete_employee: TButton
          Left = 168
          Top = 8
          Width = 75
          Height = 25
          Caption = #1042#1080#1076#1072#1083#1080#1090#1080
          TabOrder = 0
          OnClick = Button_delete_employeeClick
        end
        object btn_add_employee: TButton
          Left = 8
          Top = 8
          Width = 75
          Height = 25
          Caption = #1044#1086#1076#1072#1090#1080' '
          TabOrder = 1
          OnClick = btn_add_employeeClick
        end
        object btn_upd_employee: TButton
          Left = 88
          Top = 8
          Width = 75
          Height = 25
          Caption = #1047#1084#1110#1085#1080#1090#1080
          TabOrder = 2
          OnClick = btn_upd_employeeClick
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = #1050#1083#1110#1108#1085#1090#1080
      ImageIndex = 2
      object DBGrid2: TDBGrid
        Left = 8
        Top = 8
        Width = 889
        Height = 265
        DataSource = DataModule1.DataSTCustomers
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = [fsBold]
      end
      object btn1: TButton
        Left = 16
        Top = 376
        Width = 75
        Height = 25
        Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '
        TabOrder = 1
      end
      object btn2: TButton
        Left = 104
        Top = 376
        Width = 75
        Height = 25
        Caption = #1048#1079#1084#1077#1085#1080#1090#1100
        TabOrder = 2
      end
      object btn3: TButton
        Left = 192
        Top = 376
        Width = 75
        Height = 25
        Caption = #1059#1076#1072#1083#1080#1090#1100' '
        TabOrder = 3
      end
      object Panel3: TPanel
        Left = 0
        Top = 367
        Width = 973
        Height = 43
        Align = alBottom
        TabOrder = 4
        object button_customer_add: TButton
          Left = 24
          Top = 8
          Width = 105
          Height = 25
          Caption = #1044#1086#1076#1072#1090#1080
          TabOrder = 0
          OnClick = button_customer_addClick
        end
        object button_customer_update: TButton
          Left = 152
          Top = 8
          Width = 105
          Height = 25
          Caption = #1047#1084#1110#1085#1080#1090#1080
          TabOrder = 1
          OnClick = button_customer_updateClick
        end
        object button_customer_delete: TButton
          Left = 288
          Top = 8
          Width = 97
          Height = 25
          Caption = #1042#1080#1076#1072#1083#1080#1090#1080
          TabOrder = 2
          OnClick = button_customer_deleteClick
        end
      end
    end
    object TabSheet4: TTabSheet
      Caption = #1055#1088#1086#1076#1072#1078#1110
      ImageIndex = 3
      object DBGrid4: TDBGrid
        Left = 0
        Top = 0
        Width = 973
        Height = 410
        Align = alClient
        DataSource = DataModule1.DataSSales
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = [fsBold]
      end
    end
    object TabSheet5: TTabSheet
      Caption = #1063#1077#1082
      ImageIndex = 4
      object DBGrid5: TDBGrid
        Left = 8
        Top = 8
        Width = 889
        Height = 265
        DataSource = DataModule1.DataSChek
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = [fsBold]
      end
      object GroupBox_search: TGroupBox
        Left = 8
        Top = 280
        Width = 361
        Height = 113
        Caption = #1055#1086#1096#1091#1082' '#1090#1072' '#1089#1086#1088#1090#1091#1074#1072#1085#1085#1103
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        object lbl2: TLabel
          Left = 8
          Top = 24
          Width = 153
          Height = 19
          Caption = #1055#1086#1096#1091#1082' '#1079#1072' '#1082#1086#1076#1086#1084' '#1095#1077#1082#1072
        end
        object Button_sort_price: TButton
          Left = 144
          Top = 80
          Width = 209
          Height = 25
          Caption = #1057#1086#1088#1090#1091#1074#1072#1090#1080' '#1079#1072' '#1074#1072#1088#1090#1110#1089#1090#1102
          TabOrder = 0
          OnClick = Button_sort_priceClick
        end
        object Button_sort_id: TButton
          Left = 144
          Top = 48
          Width = 209
          Height = 25
          Caption = #1057#1086#1088#1090#1091#1074#1072#1090#1080' '#1079#1072' '#1082#1086#1076#1086#1084
          TabOrder = 1
          OnClick = Button_sort_idClick
        end
        object btn_ok_check: TButton
          Left = 8
          Top = 80
          Width = 49
          Height = 25
          Caption = #1054#1082
          TabOrder = 2
          OnClick = btn_ok_checkClick
        end
        object btn_cancel_check: TButton
          Left = 64
          Top = 80
          Width = 65
          Height = 25
          Caption = #1042#1110#1076#1084#1110#1085#1072
          TabOrder = 3
          OnClick = btn_cancel_checkClick
        end
        object edt2: TEdit
          Left = 10
          Top = 52
          Width = 71
          Height = 27
          TabOrder = 4
        end
      end
    end
  end
end
