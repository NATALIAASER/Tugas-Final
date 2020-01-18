program Project1;

uses
  Vcl.Forms,
  Tugas1 in 'Tugas1.pas' {Form1},
  Tugas2 in 'Tugas2.pas' {Form2},
  Tugas3 in 'Tugas3.pas' {Form3};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
