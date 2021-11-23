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
  MessageBox(WND, 'Програму створив студент групи РПЗ 19 1/9 Іванюк Іван', 'Про програму', 1);
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
DataModule1.ADOQWork.SQL.Text:= 'INSERT INTO Чек ( [Дата], [Заг_вартість] )  Values (:dt, 0) ';
DataModule1.ADOQWork.Parameters.ParamByName('dt').Value:=FormatDateTime('dd.mm.yyyy', DateTimePicker1.Date);
DataModule1.ADOQWork.ExecSQL;

FormShow(Sender);

DataModule1.ADOQWork.close;
DataModule1.ADOQWork.SQL.text:=' select * from Чек order by Чек.Код';
DataModule1.ADOQWork.Open;

DataModule1.ADOQWork.Last;
Cheknom:= DataModule1.DataSWork.DataSet.Fields[0].AsString;   // uznat chto eto
Label_CheckNum.Caption:='Чек № '+ChekNom;

DataModule1.ADOQSalesMain.Close;
DataModule1.ADOQSalesMain.SQL.Text:='SELECT Продажі.Код, Абонементи.Назва, Клієнти.ПІБ, Персонал.ПІБ, Продажі.Дата, Чек.Код, Абонементи.Вартість '
 + ' FROM Чек INNER JOIN (Абонементи INNER JOIN (Клієнти INNER JOIN (Персонал INNER JOIN Продажі ON Персонал.Код = Продажі.Код_працівника) ON Клієнти.Код = Продажі.Код_клієнта) ON Абонементи.Код = Продажі.Код_абонементу) ON Чек.Код = Продажі.Код_чеку '
 + ' WHERE (((Продажі.Код_чеку)= '+Cheknom+')) ' ;
DataModule1.ADOQSalesMain.open;
ChekSum:= '0';
Label_CheckSum.caption:= 'Сума по чеку: ' + ChekSum;

Panel1.Enabled:= true;
end;

procedure TForm4.Button_add_salesClick(Sender: TObject);
begin
WND:=Form1.Handle;
If managerName = '' then
  MessageBox(WND, 'Сначала выберите пользователя во вкладке меню "Авторизация"', 'Предупреждение', 1)
Else
begin
  DataModule1.ADOQWork.Close;
  DataModule1.ADOQWork.SQL.Text:= 'INSERT INTO Продажі ( [Код_абонементу], [Код_клієнта], [Код_працівника], [Дата], [Код_чеку], [Вартість] ) '
   + ' Values ('+inttostr(DBLookupComboBox_abonement.KeyValue)+', '+inttostr(DBLookupComboBox_customer.KeyValue)+', '+inttostr(DBLookupComboBox1.KeyValue)+', :dt, '+ChekNom+', '+Cenatov+')';
  DataModule1.ADOQWork.Parameters.ParamByName('dt').Value:=FormatDateTime('dd.mm.yyyy', DateTimePicker1.Date);
  DataModule1.ADOQWork.ExecSQL;
      // DM.ADOQueryWork.SQL.Text:= 'INSERT INTO Продажи ( [Дата_продажу], [Кількість], [код_чеку], [код_товару], [Код_персоналу], [Сума] ) '
   // + ' Values (:dt, '+edit2.Text+', '+ChekNom+', '+inttostr(DBLookupComboBox1.KeyValue)+', '+inttostr(DBLookupComboBox2.KeyValue)+', '+Cenatov+')';
  DataModule1.ADOQSalesMain.Close;
  DataModule1.ADOQSalesMain.SQL.Text:='SELECT Продажі.Код, Абонементи.Назва, Клієнти.ПІБ, Персонал.ПІБ, Продажі.Дата, Чек.Код, Абонементи.Вартість '
   + ' FROM Чек INNER JOIN (Абонементи INNER JOIN (Клієнти INNER JOIN (Персонал INNER JOIN Продажі ON Персонал.Код = Продажі.Код_працівника) ON Клієнти.Код = Продажі.Код_клієнта) ON Абонементи.Код = Продажі.Код_абонементу) ON Чек.Код = Продажі.Код_чеку '
   + ' WHERE (((Продажі.Код_чеку)= '+Cheknom+')) ' ;
  DataModule1.ADOQSalesMain.open;

  DataModule1.ADOQWork.Close;
  DataModule1.ADOQWork.SQL.Text:=' Select Sum(Продажі.[Вартість]) AS [Sum-Вартість] FROM Продажі GROUP BY Продажі.[Код_чеку] HAVING (((Продажі.[Код_чеку])= '+ChekNom+'))';
  DataModule1.ADOQWork.Open;
  ChekSum:= DataModule1.DataSWork.DataSet.Fields[0].AsString;
  Label_CheckSum.caption:= 'Сума по чеку: ' + ChekSum;

  DataModule1.ADOQWork.Close;
  DataModule1.ADOQWork.SQL.Text:=' UPDATE Чек SET Чек.[Заг_вартість] = '+ChekSum+' WHERE (((Чек.[Код])='+ChekNom+'))';
  DataModule1.ADOQWork.ExecSQL;

  formshow(Sender);
end;
end;

procedure TForm4.Button_deleteClick(Sender: TObject);
begin
DataModule1.ADOQWork.Close;
DataModule1.ADOQWork.SQL.Text:= 'Delete * from Продажі Where Продажі.Код = '+DBGrid_sales.Fields[0].AsString+'';
DataModule1.ADOQWork.ExecSQL;
DataModule1.ADOQSalesMain.Close;
DataModule1.ADOQSalesMain.SQL.Text:='SELECT Продажі.Код, Абонементи.Назва, Клієнти.ПІБ, Персонал.ПІБ, Продажі.Дата, Чек.Код, Абонементи.Вартість '
 + ' FROM Чек INNER JOIN (Абонементи INNER JOIN (Клієнти INNER JOIN (Персонал INNER JOIN Продажі ON Персонал.Код = Продажі.Код_працівника) ON Клієнти.Код = Продажі.Код_клієнта) ON Абонементи.Код = Продажі.Код_абонементу) ON Чек.Код = Продажі.Код_чеку '
 + ' WHERE (((Продажі.Код_чеку)= '+Cheknom+')) ' ;
DataModule1.ADOQSalesMain.open;

DataModule1.ADOQWork.Close;
DataModule1.ADOQWork.SQL.Text:=' Select Sum(Продажі.[Вартість]) AS [Sum-Вартість] FROM Продажі GROUP BY Продажі.[Код_чеку] HAVING (((Продажі.[Код_чеку])= '+ChekNom+'))';
DataModule1.ADOQWork.Open;
ChekSum:= DataModule1.DataSWork.DataSet.Fields[0].AsString;
Label_CheckSum.caption:= 'Сумма по чеку (грн): ' + ChekSum;

DataModule1.ADOQWork.Close;
DataModule1.ADOQWork.SQL.Text:=' UPDATE Чек SET Чек.[Заг_вартість] = '+ChekSum+' WHERE (((Чек.[Код])='+ChekNom+'))';
DataModule1.ADOQWork.ExecSQL;
end;

procedure TForm4.FormShow(Sender: TObject);
begin
DateTimePicker1.Date:=Now;

DataModule1.ADOQChek.close;
DataModule1.ADOQChek.SQL.text:=' select * from Чек order by Чек.Код';
DataModule1.ADOQChek.Open;

DBLookupComboBox_abonement.KeyValue:= 1;
DBLookupComboBox_customer.KeyValue:= 1;
end;

procedure TForm4.DBLookupComboBox_abonementClick(Sender: TObject);
begin
CenaTov:= IntToStr(DataModule1.DataSAbonements.DataSet.Fields[3].AsInteger);
img_zero.Visible := False;
lbl4.Caption:= 'Цена абонемента(грн): ' +DataModule1.DataSAbonements.DataSet.Fields[3].AsString;
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
  Form5.QRLabel1.Caption:='Чек № '+ChekNom;
  Form5.QRLabel6.Caption:='Дата: '+DateToStr(DateTimePicker1.Date);
  Form5.QRLabel2.Caption:='Клиент: '+DBLookupComboBox_customer.Text;
  Form5.QRLabel7.Caption:='Сумма по чеку(грн.) : '+ ChekSum;
  Form5.QRLabel3.Caption:='Менеджер: ' + managerName;
  Form5.QuickRep1.PreviewModal;
end;

end.
