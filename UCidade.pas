unit UCidade;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, Mask, DBCtrls, RxLookup, ToolEdit,
  RXDBCtrl, Grids, DBGrids, SMDBGrid, RxDBComb, RzEdit, RzDBEdit, RzTabs,
  FMTBcd, DB, SqlExpr, Provider, DBClient, DBVGrids, DBFilter, DBTables,
  ExtDlgs, CurrEdit;

type
  TfCidade = class(TForm)
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Panel2: TPanel;
    Label7: TLabel;
    DBEdit6: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label14: TLabel;
    DBEdit9: TDBEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
    procedure Grava_Cidade;

  public
    { Public declarations }

  end;

var
  fCidade: TfCidade;

implementation

uses DmdDatabase, UDMCidade;

{$R *.dfm}

procedure TfCidade.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if DMCidade.cdsCidade.State in [dsEdit,dsInsert] then
    DMCidade.cdsCidade.CancelUpdates;

  if DMCidade.Owner.ClassName  = Self.ClassName then
    FreeAndNil(DMCidade);

  Tag    := 0;

  Action := Cafree;
end;

procedure TfCidade.BitBtn2Click(Sender: TObject);
begin
  if MessageDlg('Deseja cancelar a inclusão/alteração?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  DMCidade.cdsCidade.CancelUpdates;
  Close;
end;

procedure TfCidade.BitBtn1Click(Sender: TObject);
begin
  if trim(DMCidade.cdsCidadeNOME.AsString) = '' then
  begin
    ShowMessage('Nome do Cidade não foi informado!');
    exit;
  end;

  if DMCidade.cdsCidade.State in [dsBrowse] then
    DMCidade.cdsCidade.Edit;

  Grava_Cidade;

  Close;
end;

procedure TfCidade.Grava_Cidade;
var
  vVlrAux : Real;
begin
  try
    DMCidade.cdsCidade.ApplyUpdates(0);

  except
    on E: Exception do
    begin
      ShowMessage('Não foi possível gravar, ' + E.Message + '!');
    end;
  end;
end;

end.
