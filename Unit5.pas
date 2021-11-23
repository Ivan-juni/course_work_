unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls;

type
  TForm5 = class(TForm)
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    qrshp1: TQRShape;
    QRLabel6: TQRLabel;
    DetailBand1: TQRBand;
    QRLabel3: TQRLabel;
    ColumnHeaderBand1: TQRBand;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    qrshp2: TQRShape;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    SummaryBand1: TQRBand;
    QRLabel7: TQRLabel;
    qrshp3: TQRShape;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation

uses
  Unit1, Unit2, Unit4, Unit6;

{$R *.dfm}

end.
