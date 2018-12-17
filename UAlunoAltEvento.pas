unit UAlunoAltEvento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, ToolEdit, RxLookup, Mask, CurrEdit,
  DBCtrls, RXDBCtrl, DB, DateUtils;

type
  TfAlunoAltEvento = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label30: TLabel;
    Label31: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBDateEdit1: TDBDateEdit;
    DBDateEdit2: TDBDateEdit;
    Panel3: TPanel;
    Label32: TLabel;
    Label9: TLabel;
    RxDBLookupCombo2: TRxDBLookupCombo;
    DBEdit1: TDBEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBEdit1Exit(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Panel3Exit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fAlunoAltEvento: TfAlunoAltEvento;

implementation

uses UAlunoC, UDMEvento;

{$R *.dfm}

procedure TfAlunoAltEvento.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if fAlunoC.cdsAluno_EventoCons.State in [dsInsert,dsedit] then
    fAlunoC.cdsAluno_EventoCons.CancelUpdates;

  Action := Cafree;
end;

procedure TfAlunoAltEvento.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TfAlunoAltEvento.FormShow(Sender: TObject);
begin
  Panel3.Enabled := (fAlunoC.cdsAluno_EventoConsCODEVENTO.AsInteger <= 0) or (fAlunoC.cdsAluno_EventoCons.State in [dsInsert,dsBrowse]);
  if fAlunoC.cdsAluno_EventoCons.State in [dsBrowse] then
  begin
    if fAlunoC.cdsAluno_EventoConsCODEVENTO.AsInteger > 0 then
      fAlunoC.cdsAluno_EventoCons.Edit
    else
    begin
      fAlunoC.cdsAluno_EventoCons.Insert;
      fAlunoC.cdsAluno_EventoConsID.AsInteger := fAlunoC.cdsAlunoConsID.AsInteger;
    end;
  end;
  if Panel3.Enabled then
    DBEdit1.SetFocus
  else
    DBEdit2.SetFocus;
end;

procedure TfAlunoAltEvento.DBEdit1Exit(Sender: TObject);
begin
  if Trim(DBEdit1.Text) <> '' then
    if DMEvento.cdsEvento.Locate('ID',StrToInt(DBEdit1.Text),[loCaseInsensitive]) then
      RxDBLookupCombo2.KeyValue := DMEvento.cdsEventoID.AsInteger;
end;

procedure TfAlunoAltEvento.BitBtn1Click(Sender: TObject);
begin
  if RxDBLookupCombo2.Text = '' then
  begin
    ShowMessage('Evento não foi informado!');
    exit;
  end;

  if fAlunoC.cdsAluno_EventoConsDTINICIO.AsDateTime  < 10 then
    fAlunoC.cdsAluno_EventoConsDTINICIO.Clear;
  if fAlunoC.cdsAluno_EventoConsDTFINAL.AsDateTime  < 10 then
    fAlunoC.cdsAluno_EventoConsDTFINAL.Clear;

  if fAlunoC.cdsAluno_EventoConsDTINICIO.AsDateTime > 0 then
  begin
    fAlunoC.cdsAluno_EventoConsANO_INICIO.AsInteger := YearOf(fAlunoC.cdsAluno_EventoConsDTINICIO.AsDateTime);
    fAlunoC.cdsAluno_EventoConsMES_INICIO.AsInteger := MonthOf(fAlunoC.cdsAluno_EventoConsDTINICIO.AsDateTime);
  end;
  if fAlunoC.cdsAluno_EventoConsDTFINAL.AsDateTime > 0 then
  begin
    fAlunoC.cdsAluno_EventoConsANO_FINAL.AsInteger := YearOf(fAlunoC.cdsAluno_EventoConsDTFINAL.AsDateTime);
    fAlunoC.cdsAluno_EventoConsMES_FINAL.AsInteger := MonthOf(fAlunoC.cdsAluno_EventoConsDTFINAL.AsDateTime);
  end;
  fAlunoC.cdsAluno_EventoConsNOMEEVENTO.AsString := RxDBLookupCombo2.Text;
  fAlunoC.cdsAluno_EventoCons.Post;
  fAlunoC.cdsAluno_EventoCons.ApplyUpdates(0);

  Close;
end;

procedure TfAlunoAltEvento.Panel3Exit(Sender: TObject);
begin
  if DMEvento.cdsEvento.Locate('ID',fAlunoC.cdsAluno_EventoConsCODEVENTO.AsInteger,[loCaseInsensitive]) then
    fAlunoC.cdsAluno_EventoConsVALOR.AsFloat := DMEvento.cdsEventoVALOR.AsFloat;
end;

end.
