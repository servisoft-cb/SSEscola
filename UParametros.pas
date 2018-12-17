unit UParametros;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, Mask, DBCtrls, RxLookup, ToolEdit,
  RXDBCtrl, Grids, DBGrids, SMDBGrid, RxDBComb, RzEdit, RzDBEdit, RzTabs,
  FMTBcd, DB, SqlExpr, Provider, DBClient, DBVGrids, DBFilter, DBTables,
  ExtDlgs, CurrEdit, VerificaCGC, VerificaCPF;

type
  TfParametros = class(TForm)
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Panel2: TPanel;
    Label7: TLabel;
    DBEdit6: TDBEdit;
    Label14: TLabel;
    DBEdit9: TDBEdit;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit7: TDBEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    procedure Grava_Parametros;

  public
    { Public declarations }

  end;

var
  fParametros: TfParametros;

implementation

uses DmdDatabase, UDMParametros;

{$R *.dfm}

procedure TfParametros.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if DMParametros.cdsParametros.State in [dsEdit,dsInsert] then
    DMParametros.cdsParametros.CancelUpdates;

  if DMParametros.Owner.ClassName  = Self.ClassName then
    FreeAndNil(DMParametros);

  Tag    := 0;

  Action := Cafree;
end;

procedure TfParametros.BitBtn2Click(Sender: TObject);
begin
  if MessageDlg('Deseja cancelar a inclusão/alteração?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  DMParametros.cdsParametros.CancelUpdates;
  Close;
end;

procedure TfParametros.BitBtn1Click(Sender: TObject);
begin
  if DMParametros.cdsParametros.State in [dsBrowse] then
    DMParametros.cdsParametros.Edit;

  Grava_Parametros;

  Close;
end;

procedure TfParametros.Grava_Parametros;
var
  vVlrAux : Real;
begin
  try
    DMParametros.cdsParametros.ApplyUpdates(0);

  except
    on E: Exception do
    begin
      ShowMessage('Não foi possível gravar, ' + E.Message + '!');
    end;
  end;
end;

procedure TfParametros.FormShow(Sender: TObject);
begin
  if not Assigned(DMParametros) then
    DMParametros := TDMParametros.Create(Self);

  DMParametros.cdsParametros.Close;
  DMParametros.sdsParametros.CommandText := ctParametros
                                          + ' WHERE ID = 1 ';
  DMParametros.cdsParametros.Open;

  if not DMParametros.cdsParametros.IsEmpty then
    DMParametros.cdsParametros.Edit
  else
  begin
    DMParametros.cdsParametros.Insert;
    DMParametros.cdsParametrosID.AsInteger := 1;
  end;
end;

end.
