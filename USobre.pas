unit USobre;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, DBCtrls, RXCtrls, Db, DBTables, DBIProcs,
  DBFilter, Grids, DBGrids, MemTable, jpeg, Mask,
  ToolEdit, RXDBCtrl, Variants, ComCtrls, DBClient, CurrEdit, FMTBcd,
  SqlExpr;

type
  TfSobre = class(TForm)
    Panel1: TPanel;
    Label3: TLabel;
    Label6: TLabel;
    RxLabel1: TRxLabel;
    Label9: TLabel;
    Label10: TLabel;
    Bevel1: TBevel;
    Bevel2: TBevel;
    Image1: TImage;
    BitBtn1: TBitBtn;
    Label1: TLabel;
    Label5: TLabel;
    Label2: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private

  public
    { Public declarations }
  end;

var
  fSobre: TfSobre;

implementation

uses ComObj, UDMEmpresa;

{$R *.DFM}


procedure TfSobre.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfSobre.BitBtn1Click(Sender: TObject);
begin
  Close;
end;

procedure TfSobre.FormShow(Sender: TObject);
begin
  Label2.Caption := DMEmpresa.cdsEmpresaNOME.AsString;
end;

end.
