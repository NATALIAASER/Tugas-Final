unit Tugas1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var a,b,c:real;
begin
a:=strtofloat(edit2.Text);
b:=strtofloat(edit3.Text);
c:=a*b;
edit4.Text:=floattostr(c);

end;

procedure TForm1.Button2Click(Sender: TObject);
begin
edit1.Text:='';
edit2.Text:='';
edit3.Text:='';
edit4.Text:='';
end;

procedure TForm1.Button3Click(Sender: TObject);
var pesan:string;
begin
pesan:='Ingin menutupnya?';
case MessageDlg(pesan,mtConfirmation,[mbYes,mbNO],0) of
mrYes:
begin
  Close;
end;
mrNO:
begin
   Edit1.SetFocus;
end;
end;
end;

end.
