/*==============================================================*/
/* Database name:  RTDM                                         */
/* DBMS name:      Microsoft SQL Server 2012                    */
/* Created on:     28/12/2021 14:24:23                          */
/* Updated on:     08/02/2022 16:38:33                          */
/*==============================================================*/


use RTDM
go

if exists (select 1
            from  sysobjects
           where  id = object_id('CRM.CRMTB018_DECISAO_CLIENTE')
            and   type = 'U')
   drop table CRM.CRMTB018_DECISAO_CLIENTE
go

if exists (select 1
            from  sysobjects
           where  id = object_id('CRM.CRMTB019_DECISAO_RESTRICAO')
            and   type = 'U')
   drop table CRM.CRMTB019_DECISAO_RESTRICAO
go

if exists (select 1
            from  sysobjects
           where  id = object_id('CRM.CRMTB020_DECISAO_CONTA')
            and   type = 'U')
   drop table CRM.CRMTB020_DECISAO_CONTA
go

if exists (select 1
            from  sysobjects
           where  id = object_id('CRM.CRMTB021_DECISAO_CONTA_SALARIO')
            and   type = 'U')
   drop table CRM.CRMTB021_DECISAO_CONTA_SALARIO
go

if exists (select 1
            from  sysobjects
           where  id = object_id('CRM.CRMTB022_DECISAO_PRE_APROVADO')
            and   type = 'U')
   drop table CRM.CRMTB022_DECISAO_PRE_APROVADO
go

if exists (select 1
            from  sysobjects
           where  id = object_id('CRM.CRMTB023_DECISAO_CARTAO')
            and   type = 'U')
   drop table CRM.CRMTB023_DECISAO_CARTAO
go


if exists (select 1
            from  sysobjects
           where  id = object_id('CRM.CRMTB024_DECISAO_FATURA_CARTAO')
            and   type = 'U')
   drop table CRM.CRMTB024_DECISAO_FATURA_CARTAO
go

if exists (select 1
            from  sysobjects
           where  id = object_id('CRM.CRMTB057_DECISAO_TOMADOR')
            and   type = 'U')
   drop table CRM.CRMTB057_DECISAO_TOMADOR
go

if exists (select 1
            from  sysobjects
           where  id = object_id('CRM.CRMTB058_DECISAO_OPERACAO')
            and   type = 'U')
   drop table CRM.CRMTB058_DECISAO_OPERACAO
go

if exists (select 1
            from  sysobjects
           where  id = object_id('CRM.CRMTB059_DECISAO_CNTRO_EMPRO')
            and   type = 'U')
   drop table CRM.CRMTB059_DECISAO_CNTRO_EMPRO
go

if exists (select 1
            from  sysobjects
           where  id = object_id('CRM.CRMTB063_DECISAO_CLIENTE_NICHO')
            and   type = 'U')
   drop table CRM.CRMTB063_DECISAO_CLIENTE_NICHO
go

if exists (select 1
            from  sysobjects
           where  id = object_id('CRM.CRMTB903_PARAMETRO_RTDM')
            and   type = 'U')
   drop table CRM.CRMTB903_PARAMETRO_RTDM
go


/*==============================================================*/
/* Table: CRMTB018_DECISAO_CLIENTE                              */
/*==============================================================*/
create table CRM.CRMTB018_DECISAO_CLIENTE (
   NU_CLIENTE           NUMERIC(13)          not null,
   NU_CPF_CNPJ          NUMERIC(14)          null,
   CO_CPF_CNPJ_REGULARIDADE CHAR(5)              null,
   NU_TIPO_PESSOA       SMALLINT             null,
   SG_SEGMENTO          CHAR(10)             null,
   NO_SEGMENTO          VARCHAR(100)         null,
   NU_AGENCIA_REFERENCIA NUMERIC(5)           null,
   NU_MATRICULA_GERENTE_RSPNL INT                  null,
   CO_CARTEIRA_PRINCIPAL CHAR(4)              null,
   NU_CELULAR_01        NUMERIC(10)          null,
   NU_DDD_CELULAR_01    INT                  null,
   NU_CELULAR_02        NUMERIC(10)          null,
   NU_DDD_CELULAR_02    INT                  null,
   CO_EMAIL             VARCHAR(50)          null,
   NO_MUNICIPIO_ENDERECO CHAR(35)             null,
   CO_CEP_ENDERECO      CHAR(8)              null,
   SG_UF_ENDERECO       CHAR(2)              null,
   DE_MARCA             VARCHAR(60)          null,
   DT_CONSTITUICAO      DATE                 null,
   DT_NASCIMENTO        DATE                 null,
   NU_CNAE_COMPLETO     INT                  null,
   VR_FATURAMENTO_ANUAL DECIMAL(16, 2)       null,
   VR_FATURAMENTO_MEDIO_12_MESES DECIMAL(16, 2)       null,
   VR_RENDA_FORMAL_BRUTA DECIMAL(16, 2)       null,
   VR_RENDA_FORMAL_LIQUIDA DECIMAL(16, 2)       null,
   VR_RENDA_INFORMAL    DECIMAL(16, 2)       null,
   VR_TROCO_POTENCIAL   DECIMAL(16, 2)       null,
   IC_SEXO              CHAR(1)              null,
   IC_PRODUTO_CONSIGNADO CHAR(1)              null,
   IC_PRODUTO_CDC       CHAR(1)              null,
   IC_INADIMPLENCIA     CHAR(1)              null,
   IC_CREDITO_SALARIO   CHAR(1)              null,
   IC_SMS_VALIDO        CHAR(1)              null,
   IC_CONTA_PJ_ATIVA    CHAR(1)              null,
   IC_CAPITAL_GIRO      CHAR(1)              null,
   IC_PUSH_VALIDO       CHAR(1)              null,
   IC_IBC               CHAR(1)              null,
   IC_MARCA_DOI         CHAR(1)              null,
   IC_OPRCO_ATIVA       CHAR(1)              null,
   IC_AUTORIZA_PROPAGANDA_CEL_01 CHAR(1)              null,
   IC_AUTORIZA_PROPAGANDA_CEL_02 CHAR(1)              null,
   IC_AUTORIZA_PROPAGANDA_EMAIL CHAR(1)              null,
   IC_AUTORIZA_PRPGA_TLFNE_RSDNL CHAR(1)              null,
   IC_AUTORIZA_PRPGA_TLFNE_CMRCL CHAR(1)              null,
   CO_CHPRAS_MELHOR_CARTAO CHAR(16)
              null,
   CO_SISTEMA_ORIGEM    VARCHAR(100)         null,
   DH_POSICAO_LEGADO    DATETIME             null,
   DH_INGESTAO_SILDC    DATETIME             null,
   DH_INGESTAO_BASE_INTEGRADORA DATETIME             null
)
go

/*==============================================================*/
/* Table: CRMTB019_DECISAO_RESTRICAO                            */
/*==============================================================*/
create table CRM.CRMTB019_DECISAO_RESTRICAO (
   NU_CLIENTE           NUMERIC(13)          not null,
   NU_TIPO_PESQUISA     SMALLINT             not null,
   DT_PESQUISA          DATE                 not null,
   NU_CPF_CNPJ          NUMERIC(14)          null,
   NU_TIPO_PESSOA       SMALLINT             null,
   IC_SITUACAO_DEVEDOR  CHAR(1)              null,
   CO_TIPO_RESTRICAO    CHAR(20)             null,
   DT_INICIO_RESTRICAO  DATE                 null,
   IC_TIPO_DEVEDOR      CHAR(1)              null,
   IC_SITUACAO_RESTRICAO CHAR(1)             null,
   CO_SISTEMA_ORIGEM    VARCHAR(100)         null,
   DH_POSICAO_LEGADO    DATETIME             null,
   DH_INGESTAO_SILDC    DATETIME             null,
   DH_INGESTAO_BASE_INTEGRADORA DATETIME     null,
   IC_OBITO             CHAR(1)              null,
   IC_POLITICAMENTE_EXPOSTO CHAR(1)          null,
   NU_CONTRATO_RELACIONADO CHAR(20)          null,
   NU_PRODUTO           SMALLINT             null,
   NU_UNIDADE           SMALLINT             null,
   QT_OCORRENCIA        SMALLINT             null,
   VR_TOTAL_RESTRICAO   DECIMAL(9,2)         null,
   VR_RESTRICAO         DECIMAL(9,2)         null,
   IC_INADIMPLENCIA_CONSIGNADO CHAR(1)       null,
 CONSTRAINT [PK_CRMTB019] PRIMARY KEY CLUSTERED 
(
	[NU_CLIENTE] ASC,
	[NU_TIPO_PESQUISA] ASC,
	[DT_PESQUISA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
go
/*==============================================================*/
/* Table: CRMTB020_DECISAO_CONTA                                */
/*==============================================================*/
create table CRM.CRMTB020_DECISAO_CONTA (
   NU_CLIENTE           NUMERIC(13)          not null,
   NU_CPF_CNPJ          NUMERIC(14)          null,
   NU_TIPO_PESSOA       SMALLINT             null,
   NU_AGENCIA           NUMERIC(5)           not null,
   NU_OPERACAO          NUMERIC(5)           not null,
   NU_CONTA             NUMERIC(17)          not null,
   NU_CONTRATO          CHAR(20)             null,
   DT_ENCERRAMENTO_CONTA DATE                null,
   IC_CONTA_SALARIO     CHAR(2)              null,
   CO_SISTEMA_ORIGEM    VARCHAR(100)         null,
   DH_POSICAO_LEGADO    DATETIME             null,
   DH_INGESTAO_SILDC    DATETIME             null,
   DH_INGESTAO_BASE_INTEGRADORA DATETIME     null,
   CO_LIMITE_SIICO      CHAR(2)              null,
   DT_INCLUSAO_CESTA    DATE                 null,
   IC_SITUACAO_LIMITE   CHAR(2)              null,
   NU_CESTA_CONTA       NUMERIC(4)           null,
   NU_TITULARIDADE      NUMERIC(2)           null,
   VR_LIMITE_CONTRATADO DECIMAL(15,2)        null,
   VR_MEDIO_LIMITE      DECIMAL(15,2)        null,
   VR_SALDO_MEDIO_MENSAL DECIMAL(15,2)       null,
   VR_CESTA             DECIMAL(15,2)        null,
   VR_DEBITO_CESTA      DECIMAL(15,2)        null,
   DT_CANCELAMENTO      DATE                 null,
 CONSTRAINT [PK_CRMTB020] PRIMARY KEY CLUSTERED 
(
	[NU_CLIENTE] ASC,
	[NU_AGENCIA] ASC,
	[NU_OPERACAO] ASC,
	[NU_CONTA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
go
/*==============================================================*/
/* Table: CRMTB021_DECISAO_CONTA_SALARIO                        */
/*==============================================================*/
create table CRM.CRMTB021_DECISAO_CONTA_SALARIO (
   NU_CLIENTE           NUMERIC(13)          not null,
   NU_AGENCIA           NUMERIC(5)           not null,
   NU_OPERACAO          NUMERIC(5)           not null,
   NU_CONTA_DV          NUMERIC(17)          not null,
   NU_SQNCL_MVMTO       SMALLINT             not null,
   NU_CPF_CNPJ          NUMERIC(14)          null,
   NU_TIPO_PESSOA       SMALLINT             null,
   NU_CONTA_DESTINO     NUMERIC(13)          null,
   NU_BANCO_DESTINO     NUMERIC(5)           null,
   CO_SISTEMA_ORIGEM    VARCHAR(100)         null,
   DH_POSICAO_LEGADO    DATETIME             null,
   DH_INGESTAO_SILDC    DATETIME             null,
   DH_INGESTAO_BASE_INTEGRADORA DATETIME     null,
 CONSTRAINT [PK_CRMTB021] PRIMARY KEY CLUSTERED 
(
	[NU_CLIENTE] ASC,
	[NU_AGENCIA] ASC,
	[NU_OPERACAO] ASC,
	[NU_CONTA_DV] ASC,
	[NU_SQNCL_MVMTO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
go
/*==============================================================*/
/* Table: CRMTB022_DECISAO_PRE_APROVADO                         */
/*==============================================================*/
create table CRM.CRMTB022_DECISAO_PRE_APROVADO (
   NU_CLIENTE           NUMERIC(13)          not null,
   NU_CPF_CNPJ          NUMERIC(14)          null,
   NU_TIPO_PESSOA       SMALLINT             null,
   NO_TIPO_PESSOA       VARCHAR(250)         null,
   DT_DESBLOQUEIO       DATE                 null,
   VR_LIMITE_ATUALIZADO DECIMAL(15,2)        null,
   IC_SITUACAO          CHAR(1)              null,
   DE_SITUACAO_CLIENTE  CHAR(15)             null,
   DT_MOVIMENTO_AVALIACAO DATE               null,
   NU_AGENCIA           NUMERIC(5)           not null,
   NU_OPERACAO_CONTA    SMALLINT             not null,
   NU_CONTA             NUMERIC(17)          not null,
   NU_AVALIACAO         DECIMAL(10)          null,
   DT_VALIDADE_AVALIACAO DATE                null,
   IC_REGISTRO_LIMITE   CHAR(5)              null,
   CO_MODALIDADE        VARCHAR(20)          null,
   VR_LIMITE_PRE_APROVADO DECIMAL(15,2)      null,
   VR_LIMITE_ATIVADO    DECIMAL(15,2)        null,
   VR_LIMITE_HABILITADO DECIMAL(15,2)        null,
   VR_LIMITE_UTILIZADO  DECIMAL(15,2)        null,
   VR_CAPACIDADE_DISPONIVEL DECIMAL(15,2)    null,
   VR_CAPACIDADE_MENSAL DECIMAL(15,2)        null,
   NU_PRODUTO           SMALLINT             null,
   NO_PRODUTO           VARCHAR(20)          null,
   CO_SISTEMA_ORIGEM    VARCHAR(100)         null,
   DH_POSICAO_LEGADO    DATETIME             null,
   DH_INGESTAO_SILDC    DATETIME             null,
   DH_INGESTAO_BASE_INTEGRADORA DATETIME     null,
 CONSTRAINT [PK_CRMTB022] PRIMARY KEY CLUSTERED 
(
	[NU_CLIENTE] ASC,
	[NU_AGENCIA] ASC,
	[NU_OPERACAO_CONTA] ASC,
	[NU_CONTA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
go
/*==============================================================*/
/* Table: CRMTB023_DECISAO_CARTAO                               */
/*==============================================================*/
create table CRM.CRMTB023_DECISAO_CARTAO (
   NU_CLIENTE           NUMERIC(13)          not null,
   CO_CHPRAS            VARCHAR(11)          not null,
   NU_CARTAO_CLIENTE    NUMERIC(12)          not null,
   NU_CPF_CNPJ          NUMERIC(14)          null,
   NU_TIPO_PESSOA       SMALLINT             null,
   NU_SITUACAO_CONTA_CREDITO NUMERIC(2)      null,
   NO_CARTAO            VARCHAR(35) null,
   NU_BANDEIRA_CARTAO   NUMERIC(2) null,
   IC_VARIANTE_CARTAO   CHAR(2) null,
   NU_VALIDADE_CARTAO   NUMERIC(6) null,
   VR_LIMITE_CREDITO_CONTRATADO DECIMAL(19,2)        null,
   VR_LIMITE_SAQUE_CONTRATADO DECIMAL(19,2)        null,
   VR_LIMITE_CREDITO_UTILIZADO DECIMAL(19,2)        null,
   VR_LIMITE_SAQUE_UTILIZADO DECIMAL(19,2)        null,
   VR_LIMITE_CREDITO_DISPONIVEL DECIMAL(19,2)        null,
   VR_LIMITE_SAQUE_DISPONIVEL DECIMAL(19,2)        null,
   IC_SITUACAO_CARTAO   CHAR(2)              null,
   VR_ANUIDADE          DECIMAL(19,2)        null,
   CO_ANUIDADE          VARCHAR(20)          null,
   PC_DESCONTO_ANUIDADE_TITULAR DECIMAL(19,2)        null,
   QT_PARCELA_ANUIDADE  SMALLINT             null,
   DT_INICIO_VIGENCIA_ANUIDADE DATE                 null,
   DT_FIM_VIGENCIA_ANUIDADE DATE                 null,
   IC_AUTORIZACAO_SMS   CHAR(1)              null,
   CO_SISTEMA_ORIGEM    VARCHAR(100)         null,
   DH_POSICAO_LEGADO    DATETIME             null,
   DH_INGESTAO_SILDC    DATETIME             null,
   DH_INGESTAO_BASE_INTEGRADORA DATETIME             null,
   DT_ATIVACAO_CARTAO   DATE  null,
   DT_EMISSAO_CARTAO    DATE  null,
   IC_TITULARIDADE      CHAR(2) null,
   NU_VALIDADE_CARTAO2  NUMERIC(6) null,
 CONSTRAINT [PK_CRMTB023] PRIMARY KEY CLUSTERED 
(
	[NU_CLIENTE] ASC,
	[CO_CHPRAS] ASC,
	[NU_CARTAO_CLIENTE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
go
/*==============================================================*/
/* Table: CRMTB024_DECISAO_FATURA_CARTAO                        */
/*==============================================================*/
create table CRM.CRMTB024_DECISAO_FATURA_CARTAO (
   NU_CLIENTE           NUMERIC(13)          not null,
   CO_CHPRAS            CHAR(16)             not null,
   NU_FATURA            INT                  not null,
   NU_CARTAO_CLIENTE    NUMERIC(12)          not null,
   NU_CPF_CNPJ          NUMERIC(14)          null,
   NU_TIPO_PESSOA       SMALLINT             null,
   DT_VENCIMENTO_FATURA DATE                 null,
   VR_FATURA            DECIMAL(19,2)        null,
   CO_SISTEMA_ORIGEM    VARCHAR(100)         null,
   DH_POSICAO_LEGADO    DATETIME             null,
   DH_INGESTAO_SILDC    DATETIME             null,
   DH_INGESTAO_BASE_INTEGRADORA DATETIME     null,
   NO_CARTAO            VARCHAR(35)          null,
   NU_DIA_ATRASO        NUMERIC(2)           null,
   VR_PAGO_FATURA       DECIMAL(19,2)        null,
   VR_MEDIO_FATURA_3MESES DECIMAL(19,2)      null
 CONSTRAINT [PK_CRMTB024] PRIMARY KEY CLUSTERED 
(
	[NU_CLIENTE] ASC,
	[CO_CHPRAS] ASC,
	[NU_FATURA] ASC,
	[NU_CARTAO_CLIENTE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
go

/*==============================================================*/
/* Table: CRMTB057_DECISAO_TOMADOR                              */
/*==============================================================*/
create table CRM.CRMTB057_DECISAO_TOMADOR (
   NU_CLIENTE           NUMERIC(13)          not null,
   NU_CPF_CNPJ          NUMERIC(14)          null,
   NU_TIPO_PESSOA       SMALLINT             null,
   DE_TIPO_PESSOA       VARCHAR(50)          null,
   NU_CPF_PARTICIPANTE  NUMERIC(14)          not null,
   CO_RATING_TOMADOR    VARCHAR(3)           null,
   NU_AVALIACAO_TOMADOR NUMERIC(10)          not null,
   DE_AVALIACAO_RISCO   VARCHAR(250)         null,
   DT_INICIO_VALIDADE_AVLCO_TMDR DATE                 null,
   DT_FIM_VALIDADE_AVLCO_TOMADOR DATE                 null,
   DT_CANCELAMENTO_AVLCO_TOMADOR DATE                 null,
   CO_MOTIVO_REPROVACAO VARCHAR(4)           null,
   DE_MOTIVO_REPROVACAO VARCHAR(250)         null,
   NU_PRODUTO_OPERACAO  NUMERIC(4)           not null,
   NO_PRODUTO           VARCHAR(256)         null,
   CO_MODALIDADE_OPERACAO VARCHAR(4)           null,
   CO_ORIGEM_RECURSO_OPERACAO CHAR(2)              null,
   NO_ORIGEM_RECURSO    VARCHAR(250)         null,
   VR_MAXIMO_CALCULADO_OPERACAO DECIMAL(15,2)        null,
   VR_CAPACIDADE_PAGAMENTO_OPRCO DECIMAL(15,2)        null,
   VR_MAXIMO_DISPONIVEL_OPERACAO DECIMAL(15,2)        null,
   CO_RESULTADO_OPRCO_AVLCO_TMDR VARCHAR(2)           null,
   DE_RESULTADO_AVALIACAO VARCHAR(250)         null,
   CO_SISTEMA_ORIGEM    VARCHAR(100)         null,
   DH_POSICAO_LEGADO    DATETIME             null,
   DH_INGESTAO_SILDC    DATETIME             null,
   DH_INGESTAO_BASE_INTEGRADORA DATETIME             null,
 CONSTRAINT [PK_CRMTB057] PRIMARY KEY CLUSTERED 
(
	[NU_CLIENTE] ASC,
	[NU_AVALIACAO_TOMADOR] ASC,
	[NU_PRODUTO_OPERACAO] ASC,
	[NU_CPF_PARTICIPANTE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
go
/*==============================================================*/
/* Table: CRMTB058_DECISAO_OPERACAO                             */
/*==============================================================*/
create table CRM.CRMTB058_DECISAO_OPERACAO (
   NU_CLIENTE           NUMERIC(13)          not null,
   NU_PRODUTO_OPERACAO  NUMERIC(4)           not null,
   NU_AVALIACAO_OPERACAO NUMERIC(10)          not null,
   NU_AVALIACAO_TOMADOR NUMERIC(10)          not null,
   NU_CPF_CNPJ          NUMERIC(14)          null,
   NU_TIPO_PESSOA       SMALLINT             null,
   DE_TIPO_PESSOA       VARCHAR(50)          null,
   DE_AVALIACAO_OPERACAO VARCHAR(250)         null,
   DE_AVALIACAO_TOMADOR VARCHAR(250)         null,
   NU_UNIDADE_SLCTO_AVLCO_OPRCO SMALLINT             null,
   DT_INICIO_VALIDADE_AVLCO_OPRCO DATE                 null,
   DT_FIM_VALIDADE_AVLCO_OPERACAO DATE                 null,
   NO_PRODUTO           VARCHAR(256)         null,
   CO_MODALIDADE_OPERACAO VARCHAR(12)          null,
   CO_ORIGEM_RECURSO_OPERACAO CHAR(10)             null,
   DE_ORIGEM_RECURSO    VARCHAR(250)         null,
   CO_CONCEITO_OPERACAO VARCHAR(3)           null,
   DE_CONCEITO_OPERACAO VARCHAR(250)         null,
   VR_LIMITE_GLOBAL     DECIMAL(15,2)        null,
   VR_APROVADO_OPERACAO DECIMAL(15,2)        null,
   PZ_MAXIMO_OPERACAO   NUMERIC(4)           null,
   VR_MAXIMO_PRESTACAO  DECIMAL(15,2)        null,
   IC_ORIGEM_CONTA_VINCULADA CHAR(1)              null,
   DE_ORIGEM_CONTA_VINCULADA VARCHAR(5)           null,
   NU_AGENCIA_CONTA_VINCULADA NUMERIC(4)           null,
   NU_OPERACAO_CONTA_VINCULADA NUMERIC(4)           null,
   NU_CONTA_VINCULADA   NUMERIC(13)          null,
   NU_CONVENENTE        NUMERIC(10)          null,
   DT_CANCELAMENTO_AVLCO_OPERACAO DATE                 null,
   CO_TIPO_GARANTIA     CHAR(4)              null,
   NO_TIPO_GARANTIA     VARCHAR(250)         null,
   NU_ORDEM_GARANTIA    NUMERIC(3)           not null,
   NU_SEQUENCIAL_GARANTIA NUMERIC(3)           null,
   IC_TIPO_PESSOA_FIDEJUSSORIA CHAR(1)              null,
   NO_TIPO_PESSOA_FIDEJUSSORIA VARCHAR(250)         null,
   NU_CPF_CNPJ_PSA_FIDEJUSSORIA NUMERIC(14)          null,
   VR_GARANTIA_OPERACAO DECIMAL(15,2)        null,
   CO_SISTEMA_ORIGEM    VARCHAR(100)         null,
   DH_POSICAO_LEGADO    DATETIME             null,
   DH_INGESTAO_SILDC    DATETIME             null,
   DH_INGESTAO_BASE_INTEGRADORA DATETIME             null,
 CONSTRAINT [PK_CRMTB058] PRIMARY KEY CLUSTERED 
(
	[NU_CLIENTE] ASC,
	[NU_AVALIACAO_OPERACAO] ASC,
	[NU_AVALIACAO_TOMADOR] ASC,
	[NU_PRODUTO_OPERACAO] ASC,
	[NU_ORDEM_GARANTIA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
go
/*==============================================================*/
/* Table: CRMTB059_DECISAO_CNTRO_EMPRO                          */
/*==============================================================*/
create table CRM.CRMTB059_DECISAO_CNTRO_EMPRO (
   NU_CLIENTE           NUMERIC(13)          not null,
   NU_CONTRATO          CHAR(20)             not null,
   NU_CPF_CNPJ          NUMERIC(14)          null,
   NU_TIPO_PESSOA       SMALLINT             null,
   NU_PRODUTO           DECIMAL(6)           null,
   CO_MODALIDADE_OPERACAO VARCHAR(3) null,
   DT_CONTRATACAO_EMPRESTIMO DATE                 null,
   VR_CONTRATO_BRUTO    DECIMAL(17,2) null,
   VR_CONTRATO_LIQUIDO  DECIMAL(17,2) null,
   PZ_CONTRATO          SMALLINT null,
   CO_SITUACAO_CONTRATO CHAR(1)              null,
   NU_CNPJ_CONVENENTE   NUMERIC(14)          null,
   CO_SITUACAO_CONVENENTE CHAR(5)              null,
   PZ_MAXIMO_CONTRATACAO SMALLINT             null,
   NU_CANAL_CONCESSAO   SMALLINT             null,
   NU_CONTA_DEBITO      DECIMAL(9)           null,
   PZ_REMANESCENTE      DECIMAL(3) null,
   VR_PARCELA_CONTRATADA DECIMAL(17,2) null,
   QT_PRESTACAO_PAGA    SMALLINT             null,
   VR_SALDO_DEVEDOR     DECIMAL(17,2) null,
   NU_CONTA_CREDITO_SIDEC DECIMAL(16)          null,
   QT_DIAS_ATRASO       SMALLINT             null,
   QT_RENOVACAO         SMALLINT             null,
   PC_TAXA_CONVENENTE   DECIMAL(5,2)         null,
   NO_INSTITUICAO_CONTRATO VARCHAR(100)         null,
   CO_GARANTIA          CHAR(6)              null,
   CO_GRUPO_CONVENENTE  NUMERIC(6)           null,
   CO_TIPO_SEGURO       CHAR(14) null,
   DT_ADMISSAO_CARENCIA DATE                 null,
   DT_INICIO_CARENCIA   DATE                 null,
   DT_VENCIMENTO_CONTRATO DATE null,
   IC_CARENCIA          CHAR(1)              null,
   IC_SEGURO_CONTRATO   CHAR(1)              null,
   IC_SITUACAO_AVERBACAO CHAR(1)              null,
   IC_PORTABILIDADE     CHAR(1)              null,
   NO_CONVENENTE        VARCHAR(128)         null,
   NU_CONVENENTE        NUMERIC(10)          null,
   PC_TAXA_JURO_CONTRATO DECIMAL(9,5) null,
   PZ_CARENCIA_CONTRATO SMALLINT             null,
   PZ_MAXIMO_CARENCIA   SMALLINT             null,
   VR_INICIAL_GARANTIA  DECIMAL(17,2) null,
   VR_SEGURO_GARANTIA   DECIMAL(17,2) null,
   VR_TROCO_ESTIMADO    DECIMAL(17,2) null,
   DT_LIQUIDACAO_CONTRATO DATE                 null,
   PC_TAXA_FAIXA_A      DECIMAL(9,5)         null,
   PC_TAXA_FAIXA_B      DECIMAL(9,5)         null,
   PC_TAXA_FAIXA_C      DECIMAL(9,5)         null,
   CO_SISTEMA_ORIGEM    VARCHAR(100)         null,
   DH_POSICAO_LEGADO    DATETIME             null,
   DH_INGESTAO_SILDC    DATETIME             null,
   DH_INGESTAO_BASE_INTEGRADORA DATETIME             null
 CONSTRAINT [PK_CRMTB059] PRIMARY KEY CLUSTERED 
(
	[NU_CLIENTE] ASC,
	[NU_CONTRATO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
go
/*==============================================================*/
/* Table: CRMTB063_DECISAO_CLIENTE_NICHO                        */
/*==============================================================*/
create table CRM.CRMTB063_DECISAO_CLIENTE_NICHO (
   NU_CLIENTE           NUMERIC(13)          not null,
   NU_NICHO             NUMERIC(5)           not null,
   NO_NICHO             CHAR(70)             null,
   NU_CPF_CNPJ          NUMERIC(14)          null,
   NU_TIPO_PESSOA       SMALLINT             null,
   SG_TIPO_PUBLICO_ALVO CHAR(2)              null,
   DT_INICIO_NICHO      DATE                 null,
   CO_SISTEMA_ORIGEM    VARCHAR(100)         null,
   DH_INGESTAO_BASE_INTEGRADORA DATETIME     null
 CONSTRAINT [PK_CRMTB063] PRIMARY KEY CLUSTERED 
(
	[NU_CLIENTE] ASC,
	[NU_NICHO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
go
/*==============================================================*/
/* Table: CRMTB903_PARAMETRO_RTDM                               */
/*==============================================================*/
create table CRM.CRMTB903_PARAMETRO_RTDM (
   NU_CPF_CNPJ          numeric(14,0)        null,
   NU_TIPO_PESSOA       numeric(2,0)         null,
   NU_CLIENTE           numeric(13,0)        null,
   CO_LISTA             varchar(50)          null,
   DE_PARAMETRO_STR_01  varchar(50)          null,
   DE_PARAMETRO_STR_02  varchar(50)          null,
   DE_PARAMETRO_STR_03  varchar(50)          null,
   DE_PARAMETRO_STR_04  varchar(50)          null,
   DE_PARAMETRO_STR_05  varchar(50)          null,
   DE_PARAMETRO_STR_06  varchar(50)          null,
   DE_PARAMETRO_STR_07  varchar(50)          null,
   DE_PARAMETRO_STR_08  varchar(50)          null,
   DE_PARAMETRO_STR_09  varchar(50)          null,
   DE_PARAMETRO_STR_10  varchar(50)          null,
   DE_PARAMETRO_INT_01  int                  null,
   DE_PARAMETRO_INT_02  int                  null,
   DE_PARAMETRO_INT_03  int                  null,
   DE_PARAMETRO_INT_04  int                  null,
   DE_PARAMETRO_INT_05  int                  null,
   DE_PARAMETRO_INT_06  int                  null,
   DE_PARAMETRO_INT_07  int                  null,
   DE_PARAMETRO_INT_08  int                  null,
   DE_PARAMETRO_INT_09  int                  null,
   DE_PARAMETRO_INT_10  int                  null,
   DE_PARAMETRO_DECIMAL_01 decimal(16,2)        null,
   DE_PARAMETRO_DECIMAL_02 decimal(16,2)        null,
   DE_PARAMETRO_DECIMAL_03 decimal(16,2)        null,
   DE_PARAMETRO_DECIMAL_04 decimal(16,2)        null,
   DE_PARAMETRO_DECIMAL_05 decimal(16,2)        null,
   DE_PARAMETRO_DECIMAL_06 decimal(16,2)        null,
   DE_PARAMETRO_DECIMAL_07 decimal(16,2)        null,
   DE_PARAMETRO_DECIMAL_08 decimal(16,2)        null,
   DE_PARAMETRO_DECIMAL_09 decimal(16,2)        null,
   DE_PARAMETRO_DECIMAL_10 decimal(16,2)        null,
   DE_PARAMETRO_DATA_01 date                 null,
   DE_PARAMETRO_DATA_02 date                 null,
   DE_PARAMETRO_DATA_03 date                 null,
   DE_PARAMETRO_DATA_04 date                 null,
   DE_PARAMETRO_DATA_05 date                 null,
   DE_PARAMETRO_DATA_06 date                 null,
   DE_PARAMETRO_DATA_07 date                 null,
   DE_PARAMETRO_DATA_08 date                 null,
   DE_PARAMETRO_DATA_09 date                 null,
   DE_PARAMETRO_DATA_10 date                 null
)
go
