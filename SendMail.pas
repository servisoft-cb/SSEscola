{
Exemplo de uso:
  with TSendMail.Create(Self) do
    try
      Subject:='Hello World!';
      Body   :='E aí?';
      Recipients.Add('fulano1@dominio1.com.br');
      Recipients.Add('CC:fulano2@dominio2.com.br');
      Attachments.Add(ExpandFileName('LivroCaixa.pdf'));
      EditDialog:=true;
      Send;
    finally
      Free;
    end;
}
unit SendMail;

interface

uses
  Classes, Dialogs;

type
  TSendMail=class(TComponent)
  private
    { Private declarations }
    fLastError    :integer;
    fSubject      :string;
    fBody         :string;
    fSenderName   :string;
    fSenderAddress:string;
    fRecipients   :TStrings;
    fAttachments  :TStrings;
    fEditDialog   :boolean;
    //
    procedure   SetRecipients(Value:TStrings);
    procedure   SetAttachments(Value:TStrings);
  protected
    { Protected declarations }
  public
    { Public declarations }
    constructor Create(aOwner:TComponent); override;
    destructor  Destroy; override;
    //
    function    Send:boolean;
//    function    MAPIErrorDescription(aErrorCode:integer):string;
    //
    property    LastError:integer read fLastError;
  published
    { Published declarations }
    property    Subject      :string   read fSubject       write fSubject;
    property    Body         :string   read fBody          write fBody;
    //
    property    Recipients   :TStrings read fRecipients    write SetRecipients;
    property    Attachments  :TStrings read fAttachments   write SetAttachments;

    property    EditDialog   :boolean  read fEditDialog    write fEditDialog;

    property    SenderName   :string   read fSenderName    write fSenderName;
    property    SenderAddress:string   read fSenderAddress write fSenderAddress;
  end;

function SendEMailByMAPI(const SenderName,SenderAddress,Subject,Body:string; Recipients,Attachments:TStrings; WithOpenMessage:boolean):integer;

implementation

uses
  MAPI, SysUtils, Forms, RzSndMsg;

function SendEMailByMAPI(const SenderName,SenderAddress,Subject,Body:string; Recipients,Attachments:TStrings; WithOpenMessage:boolean):integer;
var
  Msg: TRzSendMessage;

begin
  Msg := TRzSendMessage.Create(nil);
  try
    Msg.Attachments.Assign( Attachments );
    Msg.ToRecipients.Assign( Recipients );
    Msg.Subject := Subject;
    Msg.MessageText.Text := Body;
    Msg.Review := WithOpenMessage;
    Msg.Send;
  finally
    FreeAndNil(Msg);
  end;
end;

{ TSendMail }

constructor TSendMail.Create(aOwner:TComponent);
begin
  inherited;
  //
  EditDialog  :=true;
  fRecipients :=TStringList.Create;
  fAttachments:=TStringList.Create;
end;

destructor TSendMail.Destroy;
begin
  fRecipients.free;
  Attachments.free;
  //
  inherited;
end;

procedure TSendMail.SetRecipients(Value:TStrings);
begin
  fRecipients.Assign(Value);
end;

procedure TSendMail.SetAttachments(Value:TStrings);
begin
  Attachments.Assign(Value);
end;

function TSendMail.Send:boolean;
begin
  fLastError:=SendEMailByMAPI(SenderName,SenderAddress,Subject,Body,Recipients,Attachments,EditDialog);
  result    :=(LastError=SUCCESS_SUCCESS);
end;

//function TSendMail.MAPIErrorDescription(aErrorCode:integer):string;
//begin
//  case aErrorCode of
//    MAPI_E_USER_ABORT              : result:='User cancelled request';
//    MAPI_E_FAILURE                 : result:='General MAPI failure';
//    MAPI_E_LOGON_FAILURE           : result:='Logon failure';
//    MAPI_E_DISK_FULL               : result:='Disk full';
//    MAPI_E_INSUFFICIENT_MEMORY     : result:='Insufficient memory';
//    MAPI_E_ACCESS_DENIED           : result:='Access denied';
//    MAPI_E_TOO_MANY_SESSIONS       : result:='Too many sessions';
//    MAPI_E_TOO_MANY_FILES          : result:='Too many files open';
//    MAPI_E_TOO_MANY_RECIPIENTS     : result:='Too many recipients';
//    MAPI_E_ATTACHMENT_NOT_FOUND    : result:='Attachment not found';
//    MAPI_E_ATTACHMENT_OPEN_FAILURE : result:='Failed to open attachment';
//    MAPI_E_ATTACHMENT_WRITE_FAILURE: result:='Failed to write attachment';
//    MAPI_E_UNKNOWN_RECIPIENT       : result:='Unknown recipient';
//    MAPI_E_BAD_RECIPTYPE           : result:='Invalid recipient type';
//    MAPI_E_NO_MESSAGES             : result:='No messages';
//    MAPI_E_INVALID_MESSAGE         : result:='Invalid message';
//    MAPI_E_TEXT_TOO_LARGE          : result:='Text too large.';
//    MAPI_E_INVALID_SESSION         : result:='Invalid session';
//    MAPI_E_TYPE_NOT_SUPPORTED      : result:='Type not supported';
//    MAPI_E_AMBIGUOUS_RECIPIENT     : result:='Ambiguous recipient';
//    MAPI_E_MESSAGE_IN_USE          : result:='Message in use';
//    MAPI_E_NETWORK_FAILURE         : result:='Network failure';
//    MAPI_E_INVALID_EDITFIELDS      : result:='Invalid edit fields';
//    MAPI_E_INVALID_RECIPS          : result:='Invalid recipients';
//    MAPI_E_NOT_SUPPORTED           : result:='Not supported';
//  else
//    result:='Unknown Error Code: '+IntToStr(aErrorCode);
//  end;
//end;

end.

