unit Unit2;

interface

uses
  SysUtils, Classes, ADODB, DB;

type
  TDataModule1 = class(TDataModule)
    ADOConnection1: TADOConnection;
    ADOQWork: TADOQuery;
    DataSWork: TDataSource;
    ADOQAbonements: TADOQuery;
    DataSAbonements: TDataSource;
    DataSPers: TDataSource;
    DataSTCustomers: TDataSource;
    DataSCheck: TDataSource;
    ADOQWork2: TADOQuery;
    DataSWork2: TDataSource;
    ADOTPersonal: TADOTable;
    ADOTCustomers: TADOTable;
    DataSSales: TDataSource;
    ADOTCheck: TADOTable;
    ADOQSales: TADOQuery;
    DataSource1: TDataSource;
    ADOQSalesMain: TADOQuery;
    DataSSalesMain: TDataSource;
    ADOQChek: TADOQuery;
    DataSChek: TDataSource;
    ADOTAbonementPriceList: TADOTable;
    DataSourceAbonementsPriceList: TDataSource;
    ADOQPers_login: TADOQuery;
    DataSPers_login: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule1: TDataModule1;

implementation

{$R *.dfm}

end.
