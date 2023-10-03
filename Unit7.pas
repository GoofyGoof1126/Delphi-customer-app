unit Unit7;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TVerH = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    radBKar: TRadioButton;
    radBHuis: TRadioButton;
    radBAnder: TRadioButton;
    radNKar: TRadioButton;
    radNHuis: TRadioButton;
    radNAnder: TRadioButton;
    edtContact: TEdit;
    edtName: TEdit;
    Label5: TLabel;
    Label6: TLabel;
    Button1: TButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  VerH: TVerH;

implementation

{$R *.dfm}

uses Unit2;

procedure TVerH.Button1Click(Sender: TObject);
var
  Insure, FileName: String;
  FileStream : TFileStream;
  StreamWrite : TStreamWriter;
begin
  //Get user input
  if edtName.Text = '' then
  begin
    ShowMessage('Please enter username!');
    Exit;
  end;

  //RadioButton chose and their values
  if radBKar.Checked then
    Insure := 'Bestaande Versekering: Kar'
  else if radBHuis.Checked then
    Insure := 'Bestaande Versekering: Huis'
  else if radBAnder.Checked then
    Insure := 'Bestaande Versekering: Ander'
  //New Insurence RadioButtons
  else if radNKar.Checked then
    Insure := 'Nuwe Versekering: Kar'
  else if radNHuis.Checked then
    Insure := 'Nuwe Versekering: Huis'
  else if radNAnder.Checked then
    Insure := 'Nuwe Versekering: Ander'
  else
    Insure := '';

  //Open the file and write the information
  try

  FileName := 'C:\Dev\CoreAppNew\RobbieTestDel\VersekerHelp.txt';
  FileStream := TFileStream.Create(FileName, fmCreate);
  StreamWrite := TStreamWriter.Create(FileStream);

  StreamWrite.WriteLine('Customer Name:' + edtName.Text);
  StreamWrite.WriteLine('Inquering about: '+ Insure);
  StreamWrite.WriteLine('Contact details: '+ edtContact.Text);

  finally
  StreamWrite.Free;
  FileStream.Free;
  end;

  edtName.Clear;
  edtContact.Clear;
  ShowMessage('Someone will contact you shortly!');
end;

procedure TVerH.Button2Click(Sender: TObject);
begin
  Hide;
  Main.Show;
end;

end.
