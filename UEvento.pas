unit UEvento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, Mask, DBCtrls, RxLookup, ToolEdit,
  RXDBCtrl, Grids, DBGrids, SMDBGrid, RxDBComb, RzEdit, RzDBEdit, RzTabs,
  FMTBcd, DB, SqlExpr, Provider, DBClient, DBVGrids, DBFilter, DBTables,
  ExtDlgs, CurrEdit;

type
  TfEvento = class(TForm)
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Panel2: TPanel;
    RzPageControl1: TRzPageControl;
    TabSheet3: TRzTabSheet;
    Label7: TLabel;
    DBEdit6: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label14: TLabel;
    DBEdit9: TDBEdit;
    DBMemo1: TDBMemo;
    Label1: TLabel;
    RxDBComboBox1: TRxDBComboBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
    procedure Grava_Evento;

  public
    { Public declarations }
    vTalaoMC : Integer;

  end;

var
  fEvento: TfEvento;

implementation

uses DmdDatabase, UDMEvento;

{$R *.dfm}

procedure TfEvento.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if DMEvento.cdsEvento.State in [dsEdit,dsInsert] then
    DMEvento.cdsEvento.CancelUpdates;

  if DMEvento.Owner.ClassName  = Self.ClassName then
    FreeAndNil(DMEvento);

  Tag    := 0;

  Action := Cafree;
end;

procedure TfEvento.BitBtn2Click(Sender: TObject);
begin
  if MessageDlg('Deseja cancelar a inclusão/alteração?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  DMEvento.cdsEvento.CancelUpdates;
  Close;
end;

procedure TfEvento.BitBtn1Click(Sender: TObject);
begin
  if trim(DMEvento.cdsEventoNOME.AsString) = '' then
  begin
    ShowMessage('Nome do Evento não foi informado!');
    exit;
  end;

  if DMEvento.cdsEvento.State in [dsBrowse] then
    DMEvento.cdsEvento.Edit;

  Grava_Evento;

  Close;
end;

procedure TfEvento.Grava_Evento;
var
  vVlrAux : Real;
begin
  try
    DMEvento.cdsEvento.ApplyUpdates(0);

  except
    on E: Exception do
    begin
      ShowMessage('Não foi possível gravar, ' + E.Message + '!');
    end;
  end;
end;

end.
