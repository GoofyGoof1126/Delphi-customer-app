program Project1;

uses
  Vcl.Forms,
  Unit1 in 'Unit1.pas' {Login},
  Unit2 in 'C:\Dev\CoreAppNew\RobbieTestDel\Unit2.pas' {Main},
  Unit3 in 'C:\Dev\CoreAppNew\RobbieTestDel\Unit3.pas' {OpInfo},
  Unit4 in 'C:\Dev\CoreAppNew\RobbieTestDel\Unit4.pas' {Form4},
  Unit5 in 'C:\Dev\CoreAppNew\RobbieTestDel\Unit5.pas' {Kaarte},
  Unit6 in 'C:\Dev\CoreAppNew\RobbieTestDel\Unit6.pas' {BKaarte},
  Unit7 in 'C:\Dev\CoreAppNew\RobbieTestDel\Unit7.pas' {VerH},
  Unit8 in 'C:\Dev\CoreAppNew\RobbieTestDel\Unit8.pas' {VersekeringPlan},
  Unit9 in 'C:\Dev\CoreAppNew\RobbieTestDel\Unit9.pas' {LostK};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TLogin, Login);
  Application.CreateForm(TMain, Main);
  Application.CreateForm(TOpInfo, OpInfo);
  Application.CreateForm(TForm4, Form4);
  Application.CreateForm(TKaarte, Kaarte);
  Application.CreateForm(TBKaarte, BKaarte);
  Application.CreateForm(TVerH, VerH);
  Application.CreateForm(TVersekeringPlan, VersekeringPlan);
  Application.CreateForm(TLostK, LostK);
  Application.Run;
end.
