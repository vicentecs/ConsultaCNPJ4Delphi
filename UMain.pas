unit UMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    edtCNPJ: TLabeledEdit;
    btnConsultar: TButton;
    GroupBox1: TGroupBox;
    edtAtualizado_em: TLabeledEdit;
    edtCnpj_raiz: TLabeledEdit;
    edtRazao_social: TLabeledEdit;
    edtNome_fantasia: TLabeledEdit;
    edtIE: TLabeledEdit;
    procedure btnConsultarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses
  UCNPJWS;

{$R *.dfm}

procedure TForm1.btnConsultarClick(Sender: TObject);
var
  LEmpresa: TEmpresaClass;
  ie: TInscricoes_estaduaisClass;
begin
  LEmpresa := TCnpjWs.Consultar(edtCNPJ.Text);
  if LEmpresa <> nil then
  begin
    edtAtualizado_em.Text := LEmpresa.atualizado_em;
    edtCnpj_raiz.Text := LEmpresa.cnpj_raiz;
    edtRazao_social.Text := LEmpresa.razao_social;
    edtNome_fantasia.Text := LEmpresa.estabelecimento.nome_fantasia;
    for ie in LEmpresa.estabelecimento.inscricoes_estaduais do
      if (ie.ativo) and (ie.estado.sigla = LEmpresa.estabelecimento.estado.sigla) then
      begin
        edtIE.Text := ie.Inscricao_estadual;
        Break;
      end;
  end;
end;

end.
