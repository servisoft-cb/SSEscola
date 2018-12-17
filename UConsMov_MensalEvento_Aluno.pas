unit UConsMov_MensalEvento_Aluno;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, Mask, ToolEdit, Grids, DBGrids,
  SMDBGrid, DB, CurrEdit, DBCtrls, RxLookup, DBFilter, DBClient, FMTBcd,
  Provider, SqlExpr, ComCtrls, RLReport;

type
  TfConsMov_MensalEvento_Aluno = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    BitBtn5: TBitBtn;
    Label2: TLabel;
    Label1: TLabel;
    DBText1: TDBText;
    DBText2: TDBText;
    Label3: TLabel;
    DBText3: TDBText;
    Label4: TLabel;
    DBText4: TDBText;
    SMDBGrid1: TSMDBGrid;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure SMDBGrid1GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
  private
    { Private declarations }
    vAno_Ini, vAno_Fin, vMes_Ini, vMes_Fin : Integer;
    procedure Configurar_Grid;

  public
    { Public declarations }

  end;

var
  fConsMov_MensalEvento_Aluno: TfConsMov_MensalEvento_Aluno;

implementation

uses DateUtils, DmdDatabase, StdConvs, UDMEvento,
  Math, URelMov_MensalEvento2, UConsMov_MensalEvento2,
  URelMov_MensalEvento_Aluno, URelMov_MensalEvento_Aluno2;

{$R *.dfm}
          
procedure TfConsMov_MensalEvento_Aluno.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfConsMov_MensalEvento_Aluno.FormShow(Sender: TObject);
var
  vData : TDateTime;
begin
  Top    := 0;
  Left   := 0;
  Width  := Screen.Width;
  Height := Screen.Height - 35;

  DMEvento.cdsEvento.Close;
  DMEvento.cdsEvento.Open;
  DMEvento.cdsEvento.IndexFieldNames := 'NOME';

  Configurar_Grid;
end;

procedure TfConsMov_MensalEvento_Aluno.BitBtn5Click(Sender: TObject);
begin
  Close;
end;

procedure TfConsMov_MensalEvento_Aluno.BitBtn1Click(Sender: TObject);
begin
  fRelMov_MensalEvento_Aluno2 := TfRelMov_MensalEvento_Aluno2.Create(Self);
  fRelMov_MensalEvento_Aluno2.RLReport1.Preview;
  fRelMov_MensalEvento_Aluno2.RLReport1.Free;
end;

procedure TfConsMov_MensalEvento_Aluno.Configurar_Grid;
var
  i : Integer;
  vContCol : Integer;
  x : Integer;
  vNomeCol : String;
  NumGrid : Integer;
  v : Integer;
begin
  vContCol := fConsMov_MensalEvento2.mData.RecordCount;
  for NumGrid := 1 to 1 do
  begin               
    i := 0;
    while i <= (TSMDBGrid(FindComponent('SMDBGrid'+IntToStr(NumGrid))).ColCount - 2) do
    begin
      x:= 0;
      vNomeCol := TSMDBGrid(FindComponent('SMDBGrid'+IntToStr(NumGrid))).Columns[i].FieldName;
      if copy(vNomeCol,1,6) = 'VlrMes' then
      begin
        vNomeCol := copy(vNomeCol,7,2);
        x := StrToInt(vNomeCol);
        TSMDBGrid(FindComponent('SMDBGrid'+IntToStr(NumGrid))).Columns[i].Visible := (x <= vContCol);
        if fConsMov_MensalEvento2.mData.Locate('Contador',x,[loCaseInsensitive]) then
          TSMDBGrid(FindComponent('SMDBGrid'+IntToStr(NumGrid))).Columns[i].Title.Caption := FormatFloat('00',fConsMov_MensalEvento2.mDataMes.AsInteger) + '/' + fConsMov_MensalEvento2.mDataAno.AsString;
          //TSMDBGrid(FindComponent('SMDBGrid'+IntToStr(NumGrid))).Columns[i].Title.Caption := FormatFloat('00',fConsMov_MensalEvento2.mDataMes.AsInteger) + '/'
          //                                                                                 + fConsMov_MensalEvento2.mDataAno.AsString + ' (' + fConsMov_MensalEvento2.mDataQtdAluno.AsString + ')';
      end;
      i := i + 1;
    end;
  end;
end;

procedure TfConsMov_MensalEvento_Aluno.SMDBGrid1GetCellParams(
  Sender: TObject; Field: TField; AFont: TFont; var Background: TColor;
  Highlight: Boolean);
begin
  if Field = fConsMov_MensalEvento2.mEventoAluVlrTotal then
  begin
    Background  := clMoneyGreen;
    AFont.Style := [fsBold];
    AFont.Color := clBlack;
  end
  else
  if Field = fConsMov_MensalEvento2.mEventoAluVlrMedia then
  begin
    Background  := clAqua;
    AFont.Style := [fsBold];
    AFont.Color := clBlack;
  end;
end;

end.
