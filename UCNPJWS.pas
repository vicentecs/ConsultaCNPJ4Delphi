unit UCNPJWS;

interface

uses
  Generics.Collections,
  Rest.Json;

type

  TEstadoClass = class
  private
    FIbge_id: Extended;
    FId: Extended;
    FNome: String;
    FSigla: String;
  public
    property ibge_id: Extended read FIbge_id write FIbge_id;
    property id: Extended read FId write FId;
    property nome: String read FNome write FNome;
    property sigla: String read FSigla write FSigla;
    function ToJsonString: string;
    class function FromJsonString(AJsonString: string): TEstadoClass;
  end;

  TInscricoes_estaduaisClass = class
  private
    FAtivo: Boolean;
    FAtualizado_em: String;
    FEstado: TEstadoClass;
    FInscricao_estadual: String;
  public
    property ativo: Boolean read FAtivo write FAtivo;
    property atualizado_em: String read FAtualizado_em write FAtualizado_em;
    property estado: TEstadoClass read FEstado write FEstado;
    property inscricao_estadual: String read FInscricao_estadual write FInscricao_estadual;
    constructor Create;
    destructor Destroy; override;
    function ToJsonString: string;
    class function FromJsonString(AJsonString: string): TInscricoes_estaduaisClass;
  end;

  TCidadeClass = class
  private
    FIbge_id: Extended;
    FId: Extended;
    FNome: String;
    FSiafi_id: String;
  public
    property ibge_id: Extended read FIbge_id write FIbge_id;
    property id: Extended read FId write FId;
    property nome: String read FNome write FNome;
    property siafi_id: String read FSiafi_id write FSiafi_id;
    function ToJsonString: string;
    class function FromJsonString(AJsonString: string): TCidadeClass;
  end;

  TPaisClass = class
  private
    FComex_id: String;
    FId: String;
    FIso2: String;
    FIso3: String;
    FNome: String;
  public
    property comex_id: String read FComex_id write FComex_id;
    property id: String read FId write FId;
    property iso2: String read FIso2 write FIso2;
    property iso3: String read FIso3 write FIso3;
    property nome: String read FNome write FNome;
    function ToJsonString: string;
    class function FromJsonString(AJsonString: string): TPaisClass;
  end;

  TAtividade_principalClass = class
  private
    FClasse: String;
    FDescricao: String;
    FDivisao: String;
    FGrupo: String;
    FId: String;
    FSecao: String;
    FSubclasse: String;
  public
    property classe: String read FClasse write FClasse;
    property descricao: String read FDescricao write FDescricao;
    property divisao: String read FDivisao write FDivisao;
    property grupo: String read FGrupo write FGrupo;
    property id: String read FId write FId;
    property secao: String read FSecao write FSecao;
    property subclasse: String read FSubclasse write FSubclasse;
    function ToJsonString: string;
    class function FromJsonString(AJsonString: string): TAtividade_principalClass;
  end;

  TAtividades_secundariasClass = class
  private
    FClasse: String;
    FDescricao: String;
    FDivisao: String;
    FGrupo: String;
    FId: String;
    FSecao: String;
    FSubclasse: String;
  public
    property classe: String read FClasse write FClasse;
    property descricao: String read FDescricao write FDescricao;
    property divisao: String read FDivisao write FDivisao;
    property grupo: String read FGrupo write FGrupo;
    property id: String read FId write FId;
    property secao: String read FSecao write FSecao;
    property subclasse: String read FSubclasse write FSubclasse;
    function ToJsonString: string;
    class function FromJsonString(AJsonString: string): TAtividades_secundariasClass;
  end;

  TEstabelecimentoClass = class
  private
    FAtividade_principal: TAtividade_principalClass;
    FAtividades_secundarias: TArray<TAtividades_secundariasClass>;
    FAtualizado_em: String;
    FBairro: String;
    FCep: TDate;
    FCidade: TCidadeClass;
    FCnpj: String;
    FCnpj_digito_verificador: String;
    FCnpj_ordem: String;
    FCnpj_raiz: String;
    FComplemento: String;
    FData_inicio_atividade: TDate;
    FData_situacao_cadastral: TDate;
    FData_situacao_especial: String;
    FDdd1: String;
    FDdd2: String;
    FDdd_fax: String;
    FEmail: String;
    FEstado: TEstadoClass;
    FFax: String;
    FInscricoes_estaduais: TArray<TInscricoes_estaduaisClass>;
    FLogradouro: String;
    FMotivo_situacao_cadastral: String;
    FNome_cidade_exterior: String;
    FNome_fantasia: String;
    FNumero: String;
    FPais: TPaisClass;
    FSituacao_cadastral: String;
    FSituacao_especial: String;
    FTelefone1: String;
    FTelefone2: String;
    FTipo: String;
    FTipo_logradouro: String;
  public
    property atividade_principal: TAtividade_principalClass read FAtividade_principal write FAtividade_principal;
    property atividades_secundarias: TArray<TAtividades_secundariasClass> read FAtividades_secundarias
      write FAtividades_secundarias;
    property atualizado_em: String read FAtualizado_em write FAtualizado_em;
    property bairro: String read FBairro write FBairro;
    property cep: TDate read FCep write FCep;
    property cidade: TCidadeClass read FCidade write FCidade;
    property cnpj: String read FCnpj write FCnpj;
    property cnpj_digito_verificador: String read FCnpj_digito_verificador write FCnpj_digito_verificador;
    property cnpj_ordem: String read FCnpj_ordem write FCnpj_ordem;
    property cnpj_raiz: String read FCnpj_raiz write FCnpj_raiz;
    property complemento: String read FComplemento write FComplemento;
    property data_inicio_atividade: TDate read FData_inicio_atividade write FData_inicio_atividade;
    property data_situacao_cadastral: TDate read FData_situacao_cadastral write FData_situacao_cadastral;
    property data_situacao_especial: String read FData_situacao_especial write FData_situacao_especial;
    property ddd1: String read FDdd1 write FDdd1;
    property ddd2: String read FDdd2 write FDdd2;
    property ddd_fax: String read FDdd_fax write FDdd_fax;
    property email: String read FEmail write FEmail;
    property estado: TEstadoClass read FEstado write FEstado;
    property fax: String read FFax write FFax;
    property inscricoes_estaduais: TArray<TInscricoes_estaduaisClass> read FInscricoes_estaduais
      write FInscricoes_estaduais;
    property logradouro: String read FLogradouro write FLogradouro;
    property motivo_situacao_cadastral: String read FMotivo_situacao_cadastral write FMotivo_situacao_cadastral;
    property nome_cidade_exterior: String read FNome_cidade_exterior write FNome_cidade_exterior;
    property nome_fantasia: String read FNome_fantasia write FNome_fantasia;
    property numero: String read FNumero write FNumero;
    property pais: TPaisClass read FPais write FPais;
    property situacao_cadastral: String read FSituacao_cadastral write FSituacao_cadastral;
    property situacao_especial: String read FSituacao_especial write FSituacao_especial;
    property telefone1: String read FTelefone1 write FTelefone1;
    property telefone2: String read FTelefone2 write FTelefone2;
    property tipo: String read FTipo write FTipo;
    property tipo_logradouro: String read FTipo_logradouro write FTipo_logradouro;
    constructor Create;
    destructor Destroy; override;
    function ToJsonString: string;
    class function FromJsonString(AJsonString: string): TEstabelecimentoClass;
  end;

  TQualificacao_socioClass = class
  private
    FDescricao: String;
    FId: Extended;
  public
    property descricao: String read FDescricao write FDescricao;
    property id: Extended read FId write FId;
    function ToJsonString: string;
    class function FromJsonString(AJsonString: string): TQualificacao_socioClass;
  end;

  TSociosClass = class
  private
    FAtualizado_em: String;
    FCpf_cnpj_socio: String;
    FCpf_representante_legal: String;
    FData_entrada: TDate;
    FFaixa_etaria: String;
    FNome: String;
    FNome_representante: String;
    FPais: TPaisClass;
    FPais_id: String;
    FQualificacao_representante: String;
    FQualificacao_socio: TQualificacao_socioClass;
    FTipo: String;
  public
    property atualizado_em: String read FAtualizado_em write FAtualizado_em;
    property cpf_cnpj_socio: String read FCpf_cnpj_socio write FCpf_cnpj_socio;
    property cpf_representante_legal: String read FCpf_representante_legal write FCpf_representante_legal;
    property data_entrada: TDate read FData_entrada write FData_entrada;
    property faixa_etaria: String read FFaixa_etaria write FFaixa_etaria;
    property nome: String read FNome write FNome;
    property nome_representante: String read FNome_representante write FNome_representante;
    property pais: TPaisClass read FPais write FPais;
    property pais_id: String read FPais_id write FPais_id;
    property qualificacao_representante: String read FQualificacao_representante write FQualificacao_representante;
    property qualificacao_socio: TQualificacao_socioClass read FQualificacao_socio write FQualificacao_socio;
    property tipo: String read FTipo write FTipo;
    constructor Create;
    destructor Destroy; override;
    function ToJsonString: string;
    class function FromJsonString(AJsonString: string): TSociosClass;
  end;

  TNatureza_juridicaClass = class
  private
    FDescricao: String;
    FId: String;
  public
    property descricao: String read FDescricao write FDescricao;
    property id: String read FId write FId;
    function ToJsonString: string;
    class function FromJsonString(AJsonString: string): TNatureza_juridicaClass;
  end;

  TPorteClass = class
  private
    FDescricao: String;
    FId: String;
  public
    property descricao: String read FDescricao write FDescricao;
    property id: String read FId write FId;
    function ToJsonString: string;
    class function FromJsonString(AJsonString: string): TPorteClass;
  end;

  TEmpresaClass = class
  private
    FAtualizado_em: String;
    FCapital_social: String;
    FCnpj_raiz: String;
    FEstabelecimento: TEstabelecimentoClass;
    FNatureza_juridica: TNatureza_juridicaClass;
    FPorte: TPorteClass;
    FQualificacao_do_responsavel: String;
    FRazao_social: String;
    FResponsavel_federativo: String;
    FSimples: String;
    FSocios: TArray<TSociosClass>;
  public
    property atualizado_em: String read FAtualizado_em write FAtualizado_em;
    property capital_social: String read FCapital_social write FCapital_social;
    property cnpj_raiz: String read FCnpj_raiz write FCnpj_raiz;
    property estabelecimento: TEstabelecimentoClass read FEstabelecimento write FEstabelecimento;
    property natureza_juridica: TNatureza_juridicaClass read FNatureza_juridica write FNatureza_juridica;
    property porte: TPorteClass read FPorte write FPorte;
    property qualificacao_do_responsavel: String read FQualificacao_do_responsavel write FQualificacao_do_responsavel;
    property razao_social: String read FRazao_social write FRazao_social;
    property responsavel_federativo: String read FResponsavel_federativo write FResponsavel_federativo;
    property simples: String read FSimples write FSimples;
    property socios: TArray<TSociosClass> read FSocios write FSocios;
    constructor Create;
    destructor Destroy; override;
    function ToJsonString: string;
    class function FromJsonString(AJsonString: string): TEmpresaClass;
  end;

  TCnpjWs = class
  public
    class function Consultar(ACNPJ: string): TEmpresaClass;
  end;

implementation

uses
  Rest.Client,
  REST.Types,
  System.SysUtils;

  { TInscricoes_estaduaisClass }
constructor TInscricoes_estaduaisClass.Create;
begin
  inherited;
  FEstado := TEstadoClass.Create();
end;

destructor TInscricoes_estaduaisClass.Destroy;
begin
  FEstado.free;
  inherited;
end;

function TInscricoes_estaduaisClass.ToJsonString: string;
begin
  Result := TJson.ObjectToJsonString(self);
end;

class function TInscricoes_estaduaisClass.FromJsonString(AJsonString: string): TInscricoes_estaduaisClass;
begin
  Result := TJson.JsonToObject<TInscricoes_estaduaisClass>(AJsonString)
end;

  { TCidadeClass }
function TCidadeClass.ToJsonString: string;
begin
  Result := TJson.ObjectToJsonString(self);
end;

class function TCidadeClass.FromJsonString(AJsonString: string): TCidadeClass;
begin
  Result := TJson.JsonToObject<TCidadeClass>(AJsonString)
end;

  { TEstadoClass }
function TEstadoClass.ToJsonString: string;
begin
  Result := TJson.ObjectToJsonString(self);
end;

class function TEstadoClass.FromJsonString(AJsonString: string): TEstadoClass;
begin
  Result := TJson.JsonToObject<TEstadoClass>(AJsonString)
end;

  { TAtividade_principalClass }
function TAtividade_principalClass.ToJsonString: string;
begin
  Result := TJson.ObjectToJsonString(self);
end;

class function TAtividade_principalClass.FromJsonString(AJsonString: string): TAtividade_principalClass;
begin
  Result := TJson.JsonToObject<TAtividade_principalClass>(AJsonString)
end;

  { TAtividades_secundariasClass }
function TAtividades_secundariasClass.ToJsonString: string;
begin
  Result := TJson.ObjectToJsonString(self);
end;

class function TAtividades_secundariasClass.FromJsonString(AJsonString: string): TAtividades_secundariasClass;
begin
  Result := TJson.JsonToObject<TAtividades_secundariasClass>(AJsonString)
end;

  { TEstabelecimentoClass }
constructor TEstabelecimentoClass.Create;
begin
  inherited;
  FAtividade_principal := TAtividade_principalClass.Create();
  FPais := TPaisClass.Create();
  FEstado := TEstadoClass.Create();
  FCidade := TCidadeClass.Create();
end;

destructor TEstabelecimentoClass.Destroy;
var
  Latividades_secundariasItem: TAtividades_secundariasClass;
  Linscricoes_estaduaisItem: TInscricoes_estaduaisClass;
begin
  for Latividades_secundariasItem in FAtividades_secundarias do
    Latividades_secundariasItem.free;
  for Linscricoes_estaduaisItem in FInscricoes_estaduais do
    Linscricoes_estaduaisItem.free;

  FAtividade_principal.free;
  FPais.free;
  FEstado.free;
  FCidade.free;
  inherited;
end;

function TEstabelecimentoClass.ToJsonString: string;
begin
  Result := TJson.ObjectToJsonString(self);
end;

class function TEstabelecimentoClass.FromJsonString(AJsonString: string): TEstabelecimentoClass;
begin
  Result := TJson.JsonToObject<TEstabelecimentoClass>(AJsonString)
end;

  { TPaisClass }
function TPaisClass.ToJsonString: string;
begin
  Result := TJson.ObjectToJsonString(self);
end;

class function TPaisClass.FromJsonString(AJsonString: string): TPaisClass;
begin
  Result := TJson.JsonToObject<TPaisClass>(AJsonString)
end;

  { TQualificacao_socioClass }
function TQualificacao_socioClass.ToJsonString: string;
begin
  Result := TJson.ObjectToJsonString(self);
end;

class function TQualificacao_socioClass.FromJsonString(AJsonString: string): TQualificacao_socioClass;
begin
  Result := TJson.JsonToObject<TQualificacao_socioClass>(AJsonString)
end;

  { TSociosClass }
constructor TSociosClass.Create;
begin
  inherited;
  FQualificacao_socio := TQualificacao_socioClass.Create();
  FPais := TPaisClass.Create();
end;

destructor TSociosClass.Destroy;
begin
  FQualificacao_socio.free;
  FPais.free;
  inherited;
end;

function TSociosClass.ToJsonString: string;
begin
  Result := TJson.ObjectToJsonString(self);
end;

class function TSociosClass.FromJsonString(AJsonString: string): TSociosClass;
begin
  Result := TJson.JsonToObject<TSociosClass>(AJsonString)
end;

  { TNatureza_juridicaClass }
function TNatureza_juridicaClass.ToJsonString: string;
begin
  Result := TJson.ObjectToJsonString(self);
end;

class function TNatureza_juridicaClass.FromJsonString(AJsonString: string): TNatureza_juridicaClass;
begin
  Result := TJson.JsonToObject<TNatureza_juridicaClass>(AJsonString)
end;

  { TPorteClass }
function TPorteClass.ToJsonString: string;
begin
  Result := TJson.ObjectToJsonString(self);
end;

class function TPorteClass.FromJsonString(AJsonString: string): TPorteClass;
begin
  Result := TJson.JsonToObject<TPorteClass>(AJsonString)
end;

  { TEmpresaClass }
constructor TEmpresaClass.Create;
begin
  inherited;
  FPorte := TPorteClass.Create();
  FNatureza_juridica := TNatureza_juridicaClass.Create();
  FEstabelecimento := TEstabelecimentoClass.Create();
end;

destructor TEmpresaClass.Destroy;
var
  LsociosItem: TSociosClass;
begin
  for LsociosItem in FSocios do
    LsociosItem.free;

  FPorte.free;
  FNatureza_juridica.free;
  FEstabelecimento.free;
  inherited;
end;

function TEmpresaClass.ToJsonString: string;
begin
  Result := TJson.ObjectToJsonString(self);
end;

class function TEmpresaClass.FromJsonString(AJsonString: string): TEmpresaClass;
begin
  Result := TJson.JsonToObject<TEmpresaClass>(AJsonString)
end;

  { TCnpjWs }
class function TCnpjWs.Consultar(ACNPJ: string): TEmpresaClass;
var
  LRestClient: TRESTClient;
  LRestResponse: TRESTResponse;
  LRestRequest: TRESTRequest;
begin
  Result := Nil;

  if Trim(ACNPJ).IsEmpty then
    Exit;

  LRestClient := TRESTClient.Create(nil);
  try
    LRestClient.BaseURL := 'https://publica.cnpj.ws/cnpj/' + ACNPJ;
    LRestResponse := TRESTResponse.Create(nil);
    try
      LRestRequest := TRESTRequest.Create(nil);
      try
        LRestRequest.Method := rmGET;
        LRestRequest.Client := LRestClient;
        LRestRequest.Response := LRestResponse;
        LRestRequest.AcceptEncoding := 'gzip, deflate';
        LRestRequest.Execute;
        if LRestResponse.StatusCode = 200 then
          Result := TEmpresaClass.FromJsonString(LRestResponse.Content);
      finally
        LRestRequest.free;
      end;
    finally
      LRestResponse.free;
    end;
  finally
    LRestClient.free;
  end;
end;

end.

