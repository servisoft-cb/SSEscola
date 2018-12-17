unit UConsMov_Mensal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, Mask, ToolEdit, Grids, DBGrids,
  SMDBGrid, DB, CurrEdit, DBCtrls, RxLookup, DBFilter, DBClient, FMTBcd,
  Provider, SqlExpr, ComCtrls;

type
  TfConsMov_Mensal = class(TForm)
    Panel1: TPanel;
    SMDBGrid1: TSMDBGrid;
    StaticText1: TStaticText;
    Label4: TLabel;
    CurrencyEdit1: TCurrencyEdit;
    Panel2: TPanel;
    BitBtn3: TBitBtn;
    BitBtn5: TBitBtn;
    ComboBox1: TComboBox;
    GroupBox1: TGroupBox;
    SMDBGrid2: TSMDBGrid;
    Label1: TLabel;
    ComboBox2: TComboBox;
    Label2: TLabel;
    ComboBox3: TComboBox;
    Label3: TLabel;
    DateEdit1: TDateEdit;
    Label5: TLabel;
    DateEdit2: TDateEdit;
    Label6: TLabel;
    Edit1: TEdit;
    Label7: TLabel;
    CurrencyEdit2: TCurrencyEdit;
    Label8: TLabel;
    ComboBox4: TComboBox;
    Shape1: TShape;
    Label9: TLabel;
    Label10: TLabel;
    Shape2: TShape;
    Shape3: TShape;
    Label11: TLabel;
    Label12: TLabel;
    BitBtn1: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure SMDBGrid1GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure BitBtn1Click(Sender: TObject);
    procedure SMDBGrid1DblClick(Sender: TObject);
    procedure ComboBox1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    procedure Monta_sqlMov_Mensal(Tipo : String ; ID : Integer); //P=Com Parametros   N=Sem Parametros
  public
    { Public declarations }

  end;

var
  fConsMov_Mensal: TfConsMov_Mensal;

implementation

uses DateUtils, UDMMov_Mensal, DmdDatabase, UDMParametros,
  StdConvs, URelMov_Mensal, UMov_MensalPag;

{$R *.dfm}

procedure TfConsMov_Mensal.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if DMMov_Mensal.Owner.ClassName = Self.ClassName then
    FreeAndNil(DMMov_Mensal);
  if DMParametros.Owner.ClassName = Self.ClassName then
    FreeAndNil(DMParametros);

  Action := Cafree;
end;

procedure TfConsMov_Mensal.BitBtn3Click(Sender: TObject);
begin
  Monta_sqlMov_Mensal('P',0);
end;

procedure TfConsMov_Mensal.Monta_sqlMov_Mensal(Tipo : String ; ID : Integer); //P=Com Parametros   N=Sem Parametros
begin
  DMMov_Mensal.cdsMov_Mensal.Close;

  if CurrencyEdit2.AsInteger > 0 then
  begin
    DMMov_Mensal.sdsMov_Mensal.CommandText := ctMov_Mensal
                                            + ' WHERE M.ID = ' + CurrencyEdit2.Text;
  end
  else
  begin
    DMMov_Mensal.sdsMov_Mensal.CommandText := ctMov_Mensal
                                            + ' WHERE 0=0 ';
    if CurrencyEdit1.AsInteger > 0 then
      DMMov_Mensal.sdsMov_Mensal.CommandText := DMMov_Mensal.sdsMov_Mensal.CommandText
                                              + ' AND M.ANO_MOV = ' + CurrencyEdit1.Text;
    if ComboBox1.ItemIndex >= 0 then
      DMMov_Mensal.sdsMov_Mensal.CommandText := DMMov_Mensal.sdsMov_Mensal.CommandText
                                              + ' AND M.MES_MOV = ' + IntToStr(ComboBox1.ItemIndex + 1);

    case ComboBox3.ItemIndex of
      0 : DMMov_Mensal.sdsMov_Mensal.CommandText := DMMov_Mensal.sdsMov_Mensal.CommandText + ' AND M.VLRRESTANTE > 0 ';
      1 : DMMov_Mensal.sdsMov_Mensal.CommandText := DMMov_Mensal.sdsMov_Mensal.CommandText + ' AND M.VLRPAGO > 0 ';
    end;

    case ComboBox4.ItemIndex of
      0 : DMMov_Mensal.sdsMov_Mensal.CommandText := DMMov_Mensal.sdsMov_Mensal.CommandText + ' AND M.RECIBO_BOLETO = ' + QuotedStr('R');
      1 : DMMov_Mensal.sdsMov_Mensal.CommandText := DMMov_Mensal.sdsMov_Mensal.CommandText + ' AND M.RECIBO_BOLETO = ' + QuotedStr('B');
    end;

    if DateEdit1.Date > 10 then
      DMMov_Mensal.sdsMov_Mensal.CommandText := DMMov_Mensal.sdsMov_Mensal.CommandText
                                              + ' AND M.DTVENCIMENTO >= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit1.date));
    if DateEdit2.Date > 10 then
      DMMov_Mensal.sdsMov_Mensal.CommandText := DMMov_Mensal.sdsMov_Mensal.CommandText
                                              + ' AND M.DTVENCIMENTO <= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit2.date));

    if Edit1.Text <> '' then
      DMMov_Mensal.sdsMov_Mensal.CommandText := DMMov_Mensal.sdsMov_Mensal.CommandText + ' AND A.NOME LIKE ' + QuotedStr('%' + Edit1.Text + '%');

    case ComboBox2.ItemIndex of
      0 : DMMov_Mensal.sdsMov_Mensal.CommandText := DMMov_Mensal.sdsMov_Mensal.CommandText + ' ORDER BY NOME_ALUNO, M.ANO_MOV, M.MES_MOV';
      1 : DMMov_Mensal.sdsMov_Mensal.CommandText := DMMov_Mensal.sdsMov_Mensal.CommandText + ' ORDER BY M.DTVENCIMENTO, A.NOME';
      2 : DMMov_Mensal.sdsMov_Mensal.CommandText := DMMov_Mensal.sdsMov_Mensal.CommandText + ' ORDER BY M.ANO_MOV, M.MES_MOV, A.NOME';
    end;

  end;

  DMMov_Mensal.cdsMov_Mensal.Open;
end;

procedure TfConsMov_Mensal.FormShow(Sender: TObject);
begin
  Top    := 0;
  Left   := 0;
  Width  := Screen.Width;
  Height := Screen.Height - 35;

  ComboBox1.ItemIndex     := -1;
  CurrencyEdit1.AsInteger := 0;

  if not Assigned(DMMov_Mensal) then
    DMMov_Mensal := TDMMov_Mensal.Create(Self);
  if not Assigned(DMParametros) then
    DMParametros := TDMParametros.Create(Self);


  DMParametros.cdsParametros.Close;
  DMParametros.cdsParametros.Open;
  DMParametros.cdsParametros.First;
  if not DMParametros.cdsParametros.IsEmpty then
  begin
    ComboBox1.ItemIndex     := DMParametros.cdsParametrosMES_MOV.AsInteger - 1;
    CurrencyEdit1.AsInteger := DMParametros.cdsParametrosANO_MOV.AsInteger;
  end;
end;

procedure TfConsMov_Mensal.BitBtn5Click(Sender: TObject);
begin
  Close;
end;

procedure TfConsMov_Mensal.SMDBGrid1GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if StrToFloat(FormatFloat('0.00',DMMov_Mensal.cdsMov_MensalVLRRESTANTE.AsFloat)) <= 0 then
  begin
    Background  := clTeal;
    AFont.Color := clWindow;
  end
  else
  if (StrToFloat(FormatFloat('0.00',DMMov_Mensal.cdsMov_MensalVLRRESTANTE.AsFloat)) > 0) and (DMMov_Mensal.cdsMov_MensalDTVENCIMENTO.AsDateTime < Date) then
  begin
    Background  := clRed;
    AFont.Color := clWindow;
  end
  else
  if StrToFloat(FormatFloat('0.00',DMMov_Mensal.cdsMov_MensalVLRPAGO.AsFloat)) > 0 then
    Background  := clAqua;
end;

procedure TfConsMov_Mensal.BitBtn1Click(Sender: TObject);
begin
  fRelMov_Mensal := TfRelMov_Mensal.Create(Self);
  fRelMov_Mensal.RLReport1.Preview;
  fRelMov_Mensal.RLReport1.Free;
end;

procedure TfConsMov_Mensal.SMDBGrid1DblClick(Sender: TObject);
begin
  fMov_MensalPag := TfMov_MensalPag.Create(Self);
  fMov_MensalPag.ShowModal;
end;

procedure TfConsMov_Mensal.ComboBox1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = 27) then
    ComboBox1.ItemIndex := -1;
end;

end.
