unit UTurma;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, Mask, DBCtrls, RxLookup, ToolEdit,
  RXDBCtrl, Grids, DBGrids, SMDBGrid, RxDBComb, RzEdit, RzDBEdit, RzTabs,
  FMTBcd, DB, SqlExpr, Provider, DBClient, DBVGrids, DBFilter, DBTables,
  ExtDlgs, CurrEdit;

type
  TfTurma = class(TForm)
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Panel2: TPanel;
    RzPageControl1: TRzPageControl;
    TabSheet3: TRzTabSheet;
    DBMemo1: TDBMemo;
    Label7: TLabel;
    DBEdit6: TDBEdit;
    TabSheet2: TRzTabSheet;
    DBMemo2: TDBMemo;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label14: TLabel;
    DBEdit9: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    DBEdit4: TDBEdit;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DBEdit5: TDBEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
    procedure Grava_Turma;

  public
    { Public declarations }
    vTalaoMC : Integer;

  end;

var
  fTurma: TfTurma;

implementation

uses DmdDatabase, UDMTurma;

{$R *.dfm}

procedure TfTurma.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if DMTurma.cdsTurma.State in [dsEdit,dsInsert] then
    DMTurma.cdsTurma.CancelUpdates;

  if DMTurma.Owner.ClassName  = Self.ClassName then
    FreeAndNil(DMTurma);

  Tag    := 0;

  Action := Cafree;
end;

procedure TfTurma.BitBtn2Click(Sender: TObject);
begin
  if MessageDlg('Deseja cancelar a inclusão/alteração?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  DMTurma.cdsTurma.CancelUpdates;
  Close;
end;

procedure TfTurma.BitBtn1Click(Sender: TObject);
begin
  if trim(DMTurma.cdsTurmaNOME.AsString) = '' then
  begin
    ShowMessage('Nome do Turma não foi informado!');
    exit;
  end;

  if DMTurma.cdsTurma.State in [dsBrowse] then
    DMTurma.cdsTurma.Edit;

  Grava_Turma;

  Close;
end;

procedure TfTurma.Grava_Turma;
var
  vVlrAux : Real;
begin
  try
    DMTurma.cdsTurma.ApplyUpdates(0);

  except
    on E: Exception do
    begin
      ShowMessage('Não foi possível gravar, ' + E.Message + '!');
    end;
  end;
end;

end.
