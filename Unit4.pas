unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, StdCtrls, Grids, DBGrids, ComCtrls, ExtCtrls, DBCtrls;

type
  TForm4 = class(TForm)
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    lbl1: TLabel;
    Label_employee: TLabel;
    DateTimePicker1: TDateTimePicker;
    Button_check_create: TButton;
    Panel2: TPanel;
    Label_CheckNum: TLabel;
    Label_CheckSum: TLabel;
    Panel3: TPanel;
    Button_apply: TButton;
    DBLookupComboBox1: TDBLookupComboBox;
    shp3: TShape;
    img2: TImage;
    img5: TImage;
    shp4: TShape;
    shp5: TShape;
    img7: TImage;
    lbl2: TLabel;
    Panel1: TPanel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    shp1: TShape;
    shp2: TShape;
    img8: TImage;
    img_zero: TImage;
    img_hryvna: TImage;
    GroupBox1: TGroupBox;
    img1: TImage;
    img3: TImage;
    img4: TImage;
    Button_add_sales: TButton;
    Button_check_print: TButton;
    Button_delete: TButton;
    DBGrid_sales: TDBGrid;
    DBLookupComboBox_abonement: TDBLookupComboBox;
    DBLookupComboBox_customer: TDBLookupComboBox;
    procedure N3Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure Button_check_createClick(Sender: TObject);
    procedure Button_add_salesClick(Sender: TObject);
    procedure Button_deleteClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBLookupComboBox_abonementClick(Sender: TObject);
    procedure Button_applyClick(Sender: TObject);
    procedure Button_check_printClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;
  WND: HWND;
  managerName, ChekSum, managerNom, ChekNom, CenaTov: string;
  checkNumber, managerNumber: Integer;

implementation

uses
  Unit1, Unit2, Unit5;

{$R *.dfm}

procedure TForm4.N3Click(Sender: TObject);
begin
  WND:=Form1.Handle;
  MessageBox(WND, '�������� ������� ������� ����� ��� 19 1/9 ������ ����', '��� ��������', 1);
end;

procedure TForm4.N2Click(Sender: TObject);
begin
    DBLookupComboBox1.Visible := True;
     Panel3.Visible := True;
     Button_apply.Visible := True;
end;

procedure TForm4.N1Click(Sender: TObject);
begin
        Form1.ShowModal();
end;


procedure TForm4.Button_check_createClick(Sender: TObject);
begin
DataModule1.ADOQWork.Close;
DataModule1.ADOQWork.SQL.Text:= 'INSERT INTO ��� ( [����], [���_�������] )  Values (:dt, 0) ';
DataModule1.ADOQWork.Parameters.ParamByName('dt').Value:=FormatDateTime('dd.mm.yyyy', DateTimePicker1.Date);
DataModule1.ADOQWork.ExecSQL;

FormShow(Sender);

DataModule1.ADOQWork.close;
DataModule1.ADOQWork.SQL.text:=' select * from ��� order by ���.���';
DataModule1.ADOQWork.Open;

DataModule1.ADOQWork.Last;
Cheknom:= DataModule1.DataSWork.DataSet.Fields[0].AsString;   // uznat chto eto
Label_CheckNum.Caption:='��� � '+ChekNom;

DataModule1.ADOQSalesMain.Close;
DataModule1.ADOQSalesMain.SQL.Text:='SELECT ������.���, ����������.�����, �볺���.ϲ�, ��������.ϲ�, ������.����, ���.���, ����������.������� '
 + ' FROM ��� INNER JOIN (���������� INNER JOIN (�볺��� INNER JOIN (�������� INNER JOIN ������ ON ��������.��� = ������.���_����������) ON �볺���.��� = ������.���_�볺���) ON ����������.��� = ������.���_����������) ON ���.��� = ������.���_���� '
 + ' WHERE (((������.���_����)= '+Cheknom+')) ' ;
DataModule1.ADOQSalesMain.open;
ChekSum:= '0';
Label_CheckSum.caption:= '���� �� ����: ' + ChekSum;

Panel1.Enabled:= true;
end;

procedure TForm4.Button_add_salesClick(Sender: TObject);
begin
WND:=Form1.Handle;
If managerName = '' then
  MessageBox(WND, '������� �������� ������������ �� ������� ���� "�����������"', '��������������', 1)
Else
begin
  DataModule1.ADOQWork.Close;
  DataModule1.ADOQWork.SQL.Text:= 'INSERT INTO ������ ( [���_����������], [���_�볺���], [���_����������], [����], [���_����], [�������] ) '
   + ' Values ('+inttostr(DBLookupComboBox_abonement.KeyValue)+', '+inttostr(DBLookupComboBox_customer.KeyValue)+', '+inttostr(DBLookupComboBox1.KeyValue)+', :dt, '+ChekNom+', '+Cenatov+')';
  DataModule1.ADOQWork.Parameters.ParamByName('dt').Value:=FormatDateTime('dd.mm.yyyy', DateTimePicker1.Date);
  DataModule1.ADOQWork.ExecSQL;
      // DM.ADOQueryWork.SQL.Text:= 'INSERT INTO ������� ( [����_�������], [ʳ������], [���_����], [���_������], [���_���������], [����] ) '
   // + ' Values (:dt, '+edit2.Text+', '+ChekNom+', '+inttostr(DBLookupComboBox1.KeyValue)+', '+inttostr(DBLookupComboBox2.KeyValue)+', '+Cenatov+')';
  DataModule1.ADOQSalesMain.Close;
  DataModule1.ADOQSalesMain.SQL.Text:='SELECT ������.���, ����������.�����, �볺���.ϲ�, ��������.ϲ�, ������.����, ���.���, ����������.������� '
   + ' FROM ��� INNER JOIN (���������� INNER JOIN (�볺��� INNER JOIN (�������� INNER JOIN ������ ON ��������.��� = ������.���_����������) ON �볺���.��� = ������.���_�볺���) ON ����������.��� = ������.���_����������) ON ���.��� = ������.���_���� '
   + ' WHERE (((������.���_����)= '+Cheknom+')) ' ;
  DataModule1.ADOQSalesMain.open;

  DataModule1.ADOQWork.Close;
  DataModule1.ADOQWork.SQL.Text:=' Select Sum(������.[�������]) AS [Sum-�������] FROM ������ GROUP BY ������.[���_����] HAVING (((������.[���_����])= '+ChekNom+'))';
  DataModule1.ADOQWork.Open;
  ChekSum:= DataModule1.DataSWork.DataSet.Fields[0].AsString;
  Label_CheckSum.caption:= '���� �� ����: ' + ChekSum;

  DataModule1.ADOQWork.Close;
  DataModule1.ADOQWork.SQL.Text:=' UPDATE ��� SET ���.[���_�������] = '+ChekSum+' WHERE (((���.[���])='+ChekNom+'))';
  DataModule1.ADOQWork.ExecSQL;

  formshow(Sender);
end;
end;

procedure TForm4.Button_deleteClick(Sender: TObject);
begin
DataModule1.ADOQWork.Close;
DataModule1.ADOQWork.SQL.Text:= 'Delete * from ������ Where ������.��� = '+DBGrid_sales.Fields[0].AsString+'';
DataModule1.ADOQWork.ExecSQL;
DataModule1.ADOQSalesMain.Close;
DataModule1.ADOQSalesMain.SQL.Text:='SELECT ������.���, ����������.�����, �볺���.ϲ�, ��������.ϲ�, ������.����, ���.���, ����������.������� '
 + ' FROM ��� INNER JOIN (���������� INNER JOIN (�볺��� INNER JOIN (�������� INNER JOIN ������ ON ��������.��� = ������.���_����������) ON �볺���.��� = ������.���_�볺���) ON ����������.��� = ������.���_����������) ON ���.��� = ������.���_���� '
 + ' WHERE (((������.���_����)= '+Cheknom+')) ' ;
DataModule1.ADOQSalesMain.open;

DataModule1.ADOQWork.Close;
DataModule1.ADOQWork.SQL.Text:=' Select Sum(������.[�������]) AS [Sum-�������] FROM ������ GROUP BY ������.[���_����] HAVING (((������.[���_����])= '+ChekNom+'))';
DataModule1.ADOQWork.Open;
ChekSum:= DataModule1.DataSWork.DataSet.Fields[0].AsString;
Label_CheckSum.caption:= '����� �� ���� (���): ' + ChekSum;

DataModule1.ADOQWork.Close;
DataModule1.ADOQWork.SQL.Text:=' UPDATE ��� SET ���.[���_�������] = '+ChekSum+' WHERE (((���.[���])='+ChekNom+'))';
DataModule1.ADOQWork.ExecSQL;
end;

procedure TForm4.FormShow(Sender: TObject);
begin
DateTimePicker1.Date:=Now;

DataModule1.ADOQChek.close;
DataModule1.ADOQChek.SQL.text:=' select * from ��� order by ���.���';
DataModule1.ADOQChek.Open;

DBLookupComboBox_abonement.KeyValue:= 1;
DBLookupComboBox_customer.KeyValue:= 1;
end;

procedure TForm4.DBLookupComboBox_abonementClick(Sender: TObject);
begin
CenaTov:= IntToStr(DataModule1.DataSAbonements.DataSet.Fields[3].AsInteger);
img_zero.Visible := False;
lbl4.Caption:= '���� ����������(���): ' +DataModule1.DataSAbonements.DataSet.Fields[3].AsString;
end;

procedure TForm4.Button_applyClick(Sender: TObject);
begin
     managerNom := inttostr(DBLookupComboBox1.KeyValue);
     managerName := DBLookupComboBox1.Text;
     lbl1.Caption := '' + managerName;
     DBLookupComboBox1.Visible := False;
     Button_apply.Visible := False;
end;

procedure TForm4.Button_check_printClick(Sender: TObject);
begin
  Form5.QRLabel1.Caption:='��� � '+ChekNom;
  Form5.QRLabel6.Caption:='����: '+DateToStr(DateTimePicker1.Date);
  Form5.QRLabel2.Caption:='������: '+DBLookupComboBox_customer.Text;
  Form5.QRLabel7.Caption:='����� �� ����(���.) : '+ ChekSum;
  Form5.QRLabel3.Caption:='��������: ' + managerName;
  Form5.QuickRep1.PreviewModal;
end;

end.
