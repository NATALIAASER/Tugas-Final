unit Tugas3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm3 = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
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
  Form3: TForm3;

implementation

{$R *.dfm}

procedure TForm3.Button1Click(Sender: TObject);
var a,b,c,d:real;
begin
a:=strtofloat(edit1.Text);
edit2.Text:=floattostr(a);
edit3.Text:=floattostr(a);
edit4.Text:=floattostr(a);
b:=4/5*a;
c:=9/5*a+32;
d:=a+273;
edit5.Text:=floattostr(b);
edit6.Text:=floattostr(c);
edit7.Text:=floattostr(d);
end;

procedure TForm3.Button2Click(Sender: TObject);
var pesan:string;
begin
pesan:='Ingin Menutupnya?';
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

procedure TForm3.Button3Click(Sender: TObject);
begin
edit1.Text:='';
edit2.Text:='';
edit3.Text:='';
edit4.Text:='';
edit5.Text:='';
edit6.Text:='';
edit7.Text:='';
end;

end.
