unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, StdCtrls, ExtCtrls, Grids, DBGrids, ComCtrls, DB;

type
  TForm1 = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    Label7: TLabel;
    btn_del_abonement: TButton;
    Edit5: TEdit;
    btn_price_list: TButton;
    btn_add_abonement: TButton;
    btn_upd_abonement: TButton;
    Panel2: TPanel;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Edit1: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    btn_update_information: TButton;
    btn_cancel2: TButton;
    TabSheet3: TTabSheet;
    DBGrid3: TDBGrid;
    Panel4: TPanel;
    Button_delete_employee: TButton;
    btn_add_employee: TButton;
    btn_upd_employee: TButton;
    btn_add_information: TButton;
    TabSheet2: TTabSheet;
    DBGrid2: TDBGrid;
    Label1: TLabel;
    Edit2: TEdit;
    btn_ok: TButton;
    btn_cancel: TButton;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    DBGrid4: TDBGrid;
    DBGrid5: TDBGrid;
    Panel3: TPanel;
    button_customer_add: TButton;
    button_customer_update: TButton;
    button_customer_delete: TButton;
    GroupBox_search: TGroupBox;
    lbl2: TLabel;
    Button_sort_price: TButton;
    Button_sort_id: TButton;
    btn_ok_check: TButton;
    btn_cancel_check: TButton;
    edt2: TEdit;
    procedure btn_add_abonementClick(Sender: TObject);
    procedure btn_upd_abonementClick(Sender: TObject);
    procedure btn_del_abonementClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btn_update_informationClick(Sender: TObject);
    procedure btn_cancel2Click(Sender: TObject);
    procedure btn_add_informationClick(Sender: TObject);
    procedure Edit5Change(Sender: TObject);
    procedure btn_ok_checkClick(Sender: TObject);
    procedure btn_cancel_checkClick(Sender: TObject);
    procedure btn_okClick(Sender: TObject);
    procedure btn_cancelClick(Sender: TObject);
    procedure Button_delete_employeeClick(Sender: TObject);
    procedure btn_add_employeeClick(Sender: TObject);
    procedure btn_upd_employeeClick(Sender: TObject);
    procedure button_customer_addClick(Sender: TObject);
    procedure button_customer_updateClick(Sender: TObject);
    procedure button_customer_deleteClick(Sender: TObject);
    procedure btn_price_listClick(Sender: TObject);
    procedure Button_sort_idClick(Sender: TObject);
    procedure Button_sort_priceClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses Unit2, Unit6;

{$R *.dfm}

procedure TForm1.btn_add_abonementClick(Sender: TObject);
begin
  Edit1.Text := '';
  Edit3.Text := '';
  Edit4.Text := '0';
  btn_add_information.Visible := true;
  btn_update_information.Visible := false;
  Panel2.Visible := true;

end;

procedure TForm1.btn_upd_abonementClick(Sender: TObject);
begin
  Edit1.Text := DBGrid1.Fields[1].AsString;
  Edit3.Text := DBGrid1.Fields[2].AsString;
  Edit4.Text := DBGrid1.Fields[3].AsString;
  btn_add_information.Visible := false;
  btn_update_information.Visible := True;

  Panel2.Visible := true;
end;

procedure TForm1.btn_del_abonementClick(Sender: TObject);
begin
  DataModule1.ADOQWork.Close;
  DataModule1.ADOQWork.SQL.Text :=
    'DELETE * FROM Абонементи Where (Абонементи.Код = ' +
    DBGrid1.Fields[0].AsString + ')';
  DataModule1.ADOQWork.ExecSQL;
  FormShow(Sender);
end;

procedure TForm1.FormShow(Sender: TObject);
begin
  DBGrid3.Columns[3].Width := 100;
  DBGrid3.Columns[4].Width := 130;
  DBGrid3.Columns[5].Width := 130;
  DataModule1.ADOQAbonements.Close;
  DataModule1.ADOQAbonements.SQL.Text := 'SELECT * '
    + ' FROM Абонементи ORDER BY Абонементи.Код';
  DataModule1.ADOQAbonements.Open;

end;

procedure TForm1.btn_update_informationClick(Sender: TObject);
begin

  DataModule1.ADOQWork.Close;
  DataModule1.ADOQWork.SQL.Text := 'UPDATE Абонементи SET Абонементи.Назва = "'
    + Edit1.Text + '", Абонементи.Термін_дії = "' + Edit3.Text +
    '", Абонементи.Вартість = ' + Edit4.Text + ' '
    + ' WHERE (((Абонементи.Код)=' + DBGrid1.Fields[0].AsString + '))';
  DataModule1.ADOQWork.ExecSQL;

  FormShow(Sender);

  panel2.Visible := False;

end;

procedure TForm1.btn_cancel2Click(Sender: TObject);
begin
  Edit1.Text := '';
  Edit3.Text := '';
  Edit4.Text := '';
  FormShow(Sender);
  panel2.Visible := False;
end;

procedure TForm1.btn_add_informationClick(Sender: TObject);
begin
  DataModule1.ADOQWork.Close;
  DataModule1.ADOQWork.SQL.Text :=
    'INSERT INTO Абонементи ([Назва], [Термін_дії], [Вартість]) values ("' +
    Edit1.Text + '", "' + Edit3.Text + '", ' + Edit4.Text + ')';
  DataModule1.ADOQWork.ExecSQL;

  DataModule1.ADOQAbonements.Close;
  DataModule1.ADOQAbonements.SQL.Text := 'SELECT * '
    + ' FROM Абонементи ORDER BY Абонементи.Код';
  DataModule1.ADOQAbonements.Open;

  panel2.Visible := False;
end;

procedure TForm1.Edit5Change(Sender: TObject);
begin
  DataModule1.ADOQAbonements.Close;
  DataModule1.ADOQAbonements.SQL.Text := 'SELECT * '
    + ' FROM Абонементи WHERE Абонементи.Назва LIKE "%' + Edit5.Text +
    '%" ORDER BY Абонементи.Код';
  DataModule1.ADOQAbonements.Open;
end;

procedure TForm1.btn_ok_checkClick(Sender: TObject);
begin
DataModule1.ADOQChek.Close;
  DataModule1.ADOQChek.SQL.Text := 'SELECT * '
    + ' FROM Чек where Чек.Код = ' + edt2.Text +
    ' ORDER BY Чек.Код';
  DataModule1.ADOQChek.Open;
end;

procedure TForm1.btn_cancel_checkClick(Sender: TObject);
begin
  DataModule1.ADOQChek.Close;
  DataModule1.ADOQChek.SQL.Text := 'SELECT * '
    + ' FROM Чек ORDER BY Чек.Код';
  DataModule1.ADOQChek.Open;
end;

procedure TForm1.btn_okClick(Sender: TObject);
begin
  DataModule1.ADOQAbonements.Close;
  DataModule1.ADOQAbonements.SQL.Text := 'SELECT * '
    + ' FROM Абонементи where Абонементи.Код = ' + Edit2.Text +
    ' ORDER BY Абонементи.Код';
  DataModule1.ADOQAbonements.Open;
end;

procedure TForm1.btn_cancelClick(Sender: TObject);
begin
  DataModule1.ADOQAbonements.Close;
  DataModule1.ADOQAbonements.SQL.Text := 'SELECT * '
    + ' FROM Абонементи ORDER BY Абонементи.Код';
  DataModule1.ADOQAbonements.Open;
end;

procedure TForm1.Button_delete_employeeClick(Sender: TObject);
begin
  DataModule1.ADOTPersonal.Delete;
end;

procedure TForm1.btn_add_employeeClick(Sender: TObject);
begin
    DataModule1.ADOTPersonal.Insert;
end;

procedure TForm1.btn_upd_employeeClick(Sender: TObject);
begin
 If DataModule1.ADOTPersonal.Modified then
    DataModule1.ADOTPersonal.Post;
end;



procedure TForm1.button_customer_addClick(Sender: TObject);
begin
     DataModule1.ADOTCustomers.Insert;
end;

procedure TForm1.button_customer_updateClick(Sender: TObject);
begin
        If DataModule1.ADOTCustomers.Modified then
    DataModule1.ADOTCustomers.Post;
end;

procedure TForm1.button_customer_deleteClick(Sender: TObject);
begin
       DataModule1.ADOTCustomers.Delete;
end;

procedure TForm1.btn_price_listClick(Sender: TObject);
begin
  Form6.QuickRep1.PreviewModal;
end;

procedure TForm1.Button_sort_idClick(Sender: TObject);
begin
 DataModule1.ADOQChek.Close;
  DataModule1.ADOQChek.SQL.Text := 'SELECT * '
    + ' FROM Чек ORDER BY Чек.Код';
  DataModule1.ADOQChek.Open;
end;

procedure TForm1.Button_sort_priceClick(Sender: TObject);
begin
  DataModule1.ADOQChek.Close;
  DataModule1.ADOQChek.SQL.Text := 'SELECT * '
    + ' FROM Чек ORDER BY Чек.Заг_вартість';
  DataModule1.ADOQChek.Open;
end;

end.

