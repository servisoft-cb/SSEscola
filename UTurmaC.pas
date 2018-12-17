unit UTurmaC;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, Mask, ToolEdit, Grids, DBGrids,
  SMDBGrid, DB, CurrEdit, DBCtrls, RxLookup, DBFilter, DBClient, FMTBcd,
  Provider, SqlExpr;

type
  TfTurmaC = class(TForm)
    Panel1: TPanel;
    SMDBGrid1: TSMDBGrid;
    StaticText1: TStaticText;
    Label3: TLabel;
    Label4: TLabel;
    CurrencyEdit1: TCurrencyEdit;
    Panel2: TPanel;
    Edit1: TEdit;
    BitBtn3: TBitBtn;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label7: TLabel;
    ComboBox3: TComboBox;
    BitBtn5: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SMDBGrid1DblClick(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }
    procedure Monta_sqlTurma(Tipo : String ; ID : Integer); //P=Com Parametros   N=Sem Parametros
    procedure Inserir_Turma;

  end;

var
  fTurmaC: TfTurmaC;

implementation

uses DateUtils, UDMTurma, UTurma, DmdDatabase;

{$R *.dfm}

procedure TfTurmaC.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if DMTurma.Owner.ClassName = Self.ClassName then
    FreeAndNil(DMTurma);

  Action := Cafree;
end;

procedure TfTurmaC.BitBtn3Click(Sender: TObject);
begin
  Monta_sqlTurma('P',CurrencyEdit1.AsInteger);
end;

procedure TfTurmaC.Monta_sqlTurma(Tipo : String ; ID : Integer); //P=Com Parametros   N=Sem Parametros
begin
  DMTurma.cdsTurma.Close;

  if ID > 0 then
  begin
    DMTurma.sdsTurma.CommandText := ctTurma
                                            + ' WHERE ID = ' + IntToStr(ID);
  end
  else
  if Tipo = 'P' then
  begin
    DMTurma.sdsTurma.CommandText := ctTurma
                                            + ' WHERE 0=0 ';

    if Edit1.Text <> '' then
      DMTurma.sdsTurma.CommandText := DMTurma.sdsTurma.CommandText
                                              + ' AND NOME LIKE ' + QuotedStr('%' + Edit1.Text + '%');
    case ComboBox3.ItemIndex of
      0 : DMTurma.sdsTurma.CommandText := DMTurma.sdsTurma.CommandText + ' ORDER BY ID';
      1 : DMTurma.sdsTurma.CommandText := DMTurma.sdsTurma.CommandText + ' ORDER BY NOME, ID ';
    end;

  end
  else
    DMTurma.sdsTurma.CommandText := ctTurma
                                            + ' WHERE ID = 0';

  DMTurma.cdsTurma.Open;
end;

procedure TfTurmaC.BitBtn2Click(Sender: TObject);
begin
  {if not DM1.tUsuarioExcTurma.AsBoolean then
  begin
    ShowMessage('Usuário ' + DM1.tUsuarioUsuario.AsString + ', não autorizado!');
    exit;
  end;}

  if DMTurma.cdsTurma.IsEmpty then
    exit;

  if MessageDlg('Deseja excluir este registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  DMTurma.cdsTurma.Delete;
  DMTurma.cdsTurma.ApplyUpdates(0);
end;

procedure TfTurmaC.BitBtn1Click(Sender: TObject);
begin
  {if not DM1.tUsuarioInsTurma.AsBoolean then
  begin
    ShowMessage('Usuário ' + DM1.tUsuarioUsuario.AsString + ', não autorizado!');
    exit;
  end;}

  if not DMTurma.cdsTurma.Active then
    Monta_sqlTurma('N',0);

  Inserir_Turma;

  fTurma := TfTurma.Create(Self);
  fTurma.Tag := 0;
  fTurma.ShowModal;
end;

procedure TfTurmaC.FormShow(Sender: TObject);
var
  vData : TDateTime;
begin
  if not Assigned(DMTurma) then
    DMTurma := TDMTurma.Create(Self);

  {BitBtn1.Enabled := DM1.tUsuarioInsTurma.AsBoolean;
  BitBtn2.Enabled := DM1.tUsuarioExcTurma.AsBoolean;}
end;

procedure TfTurmaC.SMDBGrid1DblClick(Sender: TObject);
begin
  if DMTurma.cdsTurma.IsEmpty then
    exit;
  {if not DM1.tUsuarioAltTurma.AsBoolean then
  begin
    ShowMessage('Usuário ' + DM1.tUsuarioUsuario.AsString + ' não autorizado a fazer a alteração!');
    exit;
  end;}

  fTurma := TfTurma.Create(Self);
  //if DM1.tUsuarioAltTurma.AsBoolean then
    DMTurma.cdsTurma.Edit;
  {else
  begin
    fTurma.Panel1.Enabled   := False;
    fTurma.Panel2.Enabled   := False;
    fTurma.DBMemo1.ReadOnly := True;
    fTurma.BitBtn1.Enabled  := False;
    fTurma.BitBtn2.Enabled  := False;
  //end;}
  fTurma.Tag := 0;
  fTurma.ShowModal;
end;

procedure TfTurmaC.BitBtn5Click(Sender: TObject);
begin
  Close;
end;

procedure TfTurmaC.Inserir_Turma;
var
  vNumAux : Integer;
begin
  vNumAux := dmDatabase.ProximaSequencia('TURMA',0);
                        
  DMTurma.cdsTurma.Insert;
  DMTurma.cdsTurmaID.AsInteger := vNumAux;
end;

end.
