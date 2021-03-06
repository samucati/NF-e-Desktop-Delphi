unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, InvokeRegistry, Rio, SOAPHTTPClient;

type
  TForm1 = class(TForm)
    Memo1: TMemo;
    CEP: TButton;
    HTTPRIO1: THTTPRIO;
    Edit1: TEdit;
    procedure CEPClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses cep;


{$R *.dfm}

procedure TForm1.CEPClick(Sender: TObject);
var
	ObjSoap : CEPServicePort;
	CEP : string;
begin
	ObjSoap := HTTPRIO1 as CEPServicePort;
	CEP := Edit1.text;
	memo1.Lines.Add(ObjSoap.obterLogradouro(CEP));
end;

end.
 