/*==============================================================*/
/* Database name:  CI                                           */
/* DBMS name:      Microsoft SQL Server 2012                    */
/* Created on:     28/12/2021 14:24:23                          */
/*==============================================================*/


use CI
go

if exists (select 1
            from  sysobjects
           where  id = object_id('DM.CRMTB049_EXTRATO_MOVIMENTO')
            and   type = 'U')
   drop table DM.CRMTB049_EXTRATO_MOVIMENTO
go

if exists (select 1
            from  sysobjects
           where  id = object_id('DM.CRMTB900_PARAMETRO_MAMO')
            and   type = 'U')
   drop table DM.CRMTB900_PARAMETRO_MAMO
go

if exists (select 1
            from  sysobjects
           where  id = object_id('DM.CRMTB901_PONTUACAO_CLIENTE')
            and   type = 'U')
   drop table DM.CRMTB901_PONTUACAO_CLIENTE
go

if exists (select 1
            from  sysobjects
           where  id = object_id('DM.CRMTB902_PONTUACAO_CLIENTE_PRDTO')
            and   type = 'U')
   drop table DM.CRMTB902_PONTUACAO_CLIENTE_PRDTO
go

if exists (select 1
            from  sysobjects
           where  id = object_id('DM.CRMTB001_CLIENTE')
            and   type = 'U')
   drop table DM.CRMTB001_CLIENTE
go

if exists (select 1
            from  sysobjects
           where  id = object_id('DM.CRMTB002_CLIENTE_COCLI')
            and   type = 'U')
   drop table DM.CRMTB002_CLIENTE_COCLI
go

if exists (select 1
            from  sysobjects
           where  id = object_id('DM.CRMTB003_CLIENTE_NICHO')
            and   type = 'U')
   drop table DM.CRMTB003_CLIENTE_NICHO
go

if exists (select 1
            from  sysobjects
           where  id = object_id('DM.CRMTB004_CLIENTE_VINCULO')
            and   type = 'U')
   drop table DM.CRMTB004_CLIENTE_VINCULO
go

if exists (select 1
            from  sysobjects
           where  id = object_id('DM.CRMTB005_CONTRATO_CARTAO')
            and   type = 'U')
   drop table DM.CRMTB005_CONTRATO_CARTAO
go

if exists (select 1
            from  sysobjects
           where  id = object_id('DM.CRMTB006_FATURA_CARTAO')
            and   type = 'U')
   drop table DM.CRMTB006_FATURA_CARTAO
go

if exists (select 1
            from  sysobjects
           where  id = object_id('DM.CRMTB007_PROPOSTA_CARTAO')
            and   type = 'U')
   drop table DM.CRMTB007_PROPOSTA_CARTAO
go

if exists (select 1
            from  sysobjects
           where  id = object_id('DM.CRMTB008_CONTA')
            and   type = 'U')
   drop table DM.CRMTB008_CONTA
go

if exists (select 1
            from  sysobjects
           where  id = object_id('DM.CRMTB009_CONTA_MARCA')
            and   type = 'U')
   drop table DM.CRMTB009_CONTA_MARCA
go

if exists (select 1
            from  sysobjects
           where  id = object_id('DM.CRMTB010_CONTA_SALARIO')
            and   type = 'U')
   drop table DM.CRMTB010_CONTA_SALARIO
go

if exists (select 1
            from  sysobjects
           where  id = object_id('DM.CRMTB011_CESTA_SERVICO')
            and   type = 'U')
   drop table DM.CRMTB011_CESTA_SERVICO
go

if exists (select 1
            from  sysobjects
           where  id = object_id('DM.CRMTB012_TOMADOR')
            and   type = 'U')
   drop table DM.CRMTB012_TOMADOR
go

if exists (select 1
            from  sysobjects
           where  id = object_id('DM.CRMTB013_OPERACAO')
            and   type = 'U')
   drop table DM.CRMTB013_OPERACAO
go

if exists (select 1
            from  sysobjects
           where  id = object_id('DM.CRMTB014_CONTRATO_CREDITO')
            and   type = 'U')
   drop table DM.CRMTB014_CONTRATO_CREDITO
go

if exists (select 1
            from  sysobjects
           where  id = object_id('DM.CRMTB015_CREDITO_PRE_APROVADO')
            and   type = 'U')
   drop table DM.CRMTB015_CREDITO_PRE_APROVADO
go

if exists (select 1
            from  sysobjects
           where  id = object_id('DM.CRMTB016_CADASTRO_RESTRITIVO')
            and   type = 'U')
   drop table DM.CRMTB016_CADASTRO_RESTRITIVO
go

if exists (select 1
            from  sysobjects
           where  id = object_id('DM.CRMTB025_CHAVE_CLIENTE')
            and   type = 'U')
   drop table DM.CRMTB025_CHAVE_CLIENTE
go

if exists (select 1
            from  sysobjects
           where  id = object_id('DM.CRMTB026_CLENTE_CARTEIRA')
            and   type = 'U')
   drop table DM.CRMTB026_CLENTE_CARTEIRA
go

if exists (select 1
            from  sysobjects
           where  id = object_id('DM.CRMTB027_AGENCIA_CARTEIRA')
            and   type = 'U')
   drop table DM.CRMTB027_AGENCIA_CARTEIRA
go

if exists (select 1
            from  sysobjects
           where  id = object_id('DM.CRMTB028_CLIENTE_RENDA')
            and   type = 'U')
   drop table DM.CRMTB028_CLIENTE_RENDA
go

if exists (select 1
            from  sysobjects
           where  id = object_id('DM.CRMTB029_CLIENTE_FATURAMENTO')
            and   type = 'U')
   drop table DM.CRMTB029_CLIENTE_FATURAMENTO
go

if exists (select 1
            from  sysobjects
           where  id = object_id('DM.CRMTB030_CLIENTE_CONTATO')
            and   type = 'U')
   drop table DM.CRMTB030_CLIENTE_CONTATO
go

if exists (select 1
            from  sysobjects
           where  id = object_id('DM.CRMTB031_CADASTRO_ENDERECO')
            and   type = 'U')
   drop table DM.CRMTB031_CADASTRO_ENDERECO
go

if exists (select 1
            from  sysobjects
           where  id = object_id('DM.CRMTB032_CLIENTE_DOCUMENTO')
            and   type = 'U')
   drop table DM.CRMTB032_CLIENTE_DOCUMENTO
go

if exists (select 1
            from  sysobjects
           where  id = object_id('DM.CRMTB033_CLIENTE_PATRIMONIO')
            and   type = 'U')
   drop table DM.CRMTB033_CLIENTE_PATRIMONIO
go

if exists (select 1
            from  sysobjects
           where  id = object_id('DM.CRMTB034_CLIENTE_CONTRATO')
            and   type = 'U')
   drop table DM.CRMTB034_CLIENTE_CONTRATO
go

if exists (select 1
            from  sysobjects
           where  id = object_id('DM.CRMTB035_COMPOSICAO_SOCIETARIA')
            and   type = 'U')
   drop table DM.CRMTB035_COMPOSICAO_SOCIETARIA
go

if exists (select 1
            from  sysobjects
           where  id = object_id('DM.CRMTB036_CMPSO_ADMINISTRATIVA')
            and   type = 'U')
   drop table DM.CRMTB036_CMPSO_ADMINISTRATIVA
go

if exists (select 1
            from  sysobjects
           where  id = object_id('DM.CRMTB038_TRANSACAO_FATURA')
            and   type = 'U')
   drop table DM.CRMTB038_TRANSACAO_FATURA
go

if exists (select 1
            from  sysobjects
           where  id = object_id('DM.CRMTB039_EXTRATO_MOVIMENTO')
            and   type = 'U')
   drop table DM.CRMTB039_EXTRATO_MOVIMENTO
go

if exists (select 1
            from  sysobjects
           where  id = object_id('DM.CRMTB040_SIAPC_662')
            and   type = 'U')
   drop table DM.CRMTB040_SIAPC_662
go

if exists (select 1
            from  sysobjects
           where  id = object_id('DM.CRMTB041_NCR_ANEXO1')
            and   type = 'U')
   drop table DM.CRMTB041_NCR_ANEXO1
go

if exists (select 1
            from  sysobjects
           where  id = object_id('DM.CRMTB049_EXTRATO_MOVIMENTACAO')
            and   type = 'U')
   drop table DM.CRMTB049_EXTRATO_MOVIMENTACAO
go

if exists (select 1
            from  sysobjects
           where  id = object_id('DM.CRMTB050_PORTABILIDADE')
            and   type = 'U')
   drop table DM.CRMTB050_PORTABILIDADE
go

if exists (select 1
            from  sysobjects
           where  id = object_id('DM.CRMTB052_CADASTRO_POSITIVO')
            and   type = 'U')
   drop table DM.CRMTB052_CADASTRO_POSITIVO
go

if exists (select 1
            from  sysobjects
           where  id = object_id('DM.CRMTB060_PROPOSTA_IMOBILIARIO')
            and   type = 'U')
   drop table DM.CRMTB060_PROPOSTA_IMOBILIARIO
go

if exists (select 1
            from  sysobjects
           where  id = object_id('DM.CRMTB061_CONTRATO_IMOBILIARIO')
            and   type = 'U')
   drop table DM.CRMTB061_CONTRATO_IMOBILIARIO
go

if exists (select 1
            from  sysobjects
           where  id = object_id('DM.CRMTB062_EXTRATO_IMOBILIARIO')
            and   type = 'U')
   drop table DM.CRMTB062_EXTRATO_IMOBILIARIO
go

if exists (select 1
            from  sysobjects
           where  id = object_id('DM.CRMTB064_CLIENTE_CSS')
            and   type = 'U')
   drop table DM.CRMTB064_CLIENTE_CSS
go

if exists (select 1
            from  sysobjects
           where  id = object_id('DM.CRMTB065_TOMADOR_REQ')
            and   type = 'U')
   drop table DM.CRMTB065_TOMADOR_REQ
go

if exists (select 1
            from  sysobjects
           where  id = object_id('DM.CRMTB066_ENTR_CADASTRO_POSIT')
            and   type = 'U')
   drop table DM.CRMTB066_ENTR_CADASTRO_POSIT
go

if exists (select 1
            from  sysobjects
           where  id = object_id('DM.CRMTB067_ENTR_CADAS_RESTR')
            and   type = 'U')
   drop table DM.CRMTB067_ENTR_CADAS_RESTR
go

if exists (select 1
            from  sysobjects
           where  id = object_id('DM.CRMTB068_VISAO_PRODUTOS')
            and   type = 'U')
   drop table DM.CRMTB068_VISAO_PRODUTOS
go

if exists (select 1
            from  sysobjects
           where  id = object_id('DM.CRMTB069_VISAO_EMPREGADOS')
            and   type = 'U')
   drop table DM.CRMTB069_VISAO_EMPREGADOS
go

if exists (select 1
            from  sysobjects
           where  id = object_id('DM.CRMTB070_VISAO_UNIDADES')
            and   type = 'U')
   drop table DM.CRMTB070_VISAO_UNIDADES
go

/*==============================================================*/
/* Table: CRMTB001_CLIENTE                                      */
/*==============================================================*/
create table DM.CRMTB001_CLIENTE (
   NU_CLIENTE           NUMERIC(13)          not null,
   NU_PESSOA            NUMERIC(13)          not null,
   NU_CPF_CNPJ          NUMERIC(14)          null,
   NU_TIPO_PESSOA       SMALLINT             null,
   CO_CPF_CNPJ_REGULARIDADE CHAR(5)              null,
   CO_CONSISTENCIA_CPF_CNPJ CHAR(1)              null,
   IC_PENDENCIA_CADASTRAL CHAR(1)              null,
   NO_RAZAO_SOCIAL      CHAR(200)            null,
   NO_FANTASIA          CHAR(55)             null,
   NO_CLIENTE           VARCHAR(70)          null,
   IC_SEXO              CHAR(1)              null,
   DT_NASCIMENTO        DATE                 null,
   NO_MUNICIPIO_NATURALIDADE CHAR(35)             null,
   SG_UF_NATURALIDADE   CHAR(2)              null,
   NO_NACIONALIDADE_NASCIMENTO CHAR(40)             null,
   IC_REGIME_TRIBUTARIO CHAR(1)              null,
   CO_NATUREZA_JURIDICA CHAR(5)              null,
   NO_NATUREZA_JURIDICA VARCHAR(100)         null,
   NU_CNAE_COMPLETO     INT                  null,
   NO_CNAE_COMPLETO     VARCHAR(400)         null,
   CO_ESTADO_CIVIL      CHAR(2)              null,
   NO_ESTADO_CIVIL      CHAR(30)             null,
   NU_CPF_CONJUGE       NUMERIC(14)          null,
   NU_AGENCIA_REFERENCIA SMALLINT             null,
   CO_CARTEIRA_PRINCIPAL CHAR(4)              null,
   SG_SEGMENTO          CHAR(10)             null,
   NO_SEGMENTO          VARCHAR(70)          null,
   DT_INICIO_RELACIONAMENTO_CAIXA DATE                 null,
   NU_DDD_TELEFONE_RESIDENCIAL NUMERIC(10)          null,
   NU_TELEFONE_RESIDENCIAL NUMERIC(10)          null,
   NU_DDD_TELEFONE_COMERCIAL NUMERIC(10)          null,
   NU_TELEFONE_COMERCIAL NUMERIC(10)          null,
   NU_DDD_CELULAR_01    NUMERIC(10)          null,
   NU_CELULAR_01        NUMERIC(10)          null,
   NU_DDD_CELULAR_02    NUMERIC(10)          null,
   NU_CELULAR_02        NUMERIC(10)          null,
   CO_EMAIL             VARCHAR(50)          null,
   CO_OCUPACAO_COMERCIAL CHAR(10)             null,
   NO_OCUPACAO_COMERCIAL CHAR(200)            null,
   IC_SEM_RENDA         CHAR(1)              null,
   VR_RENDA_FORMAL_BRUTA DECIMAL(16, 2)       null,
   VR_RENDA_FORMAL_LIQUIDA DECIMAL(16, 2)       null,
   VR_RENDA_INFORMAL    DECIMAL(16, 2)       null,
   IC_SEM_FATURAMENTO_ANUAL CHAR(1)              null,
   VR_FATURAMENTO_ANUAL DECIMAL(16, 2)       null,
   AA_RFRNA_FATURAMENTO_ANUAL SMALLINT             null,
   DT_APURACAO_FATURAMENTO_ANUAL DATE                 null,
   IC_SEM_FATURAMENTO_12_MESES CHAR(1)              null,
   VR_FATURAMENTO_12_MESES DECIMAL(16, 2)       null,
   QT_MES_FATURAMENTO_12_MESES NUMERIC(2)           null,
   VR_FATURAMENTO_MEDIO_12_MESES DECIMAL(16, 2)       null,
   VR_CAPITAL_SOCIAL    DECIMAL(16,2)        null,
   DT_REGISTRO_CAPITAL_SOCIAL DATE                 null,
   NU_CPF_CNPJ_SOCIO    NUMERIC(14)          null,
   IC_TIPO_PESSOA_SOCIO CHAR(5)              null,
   IC_TIPO_ENDERECO     CHAR(1)              null,
   SG_TIPO_LOGRADOURO_ENDERECO CHAR(5)              null,
   DE_ENDERECO_LOGRADOURO CHAR(50)             null,
   NU_ENDERECO          INT                  null,
   DE_COMPLEMENTO_ENDERECO CHAR(53)             null,
   NO_BAIRRO_ENDERECO   CHAR(40)             null,
   NO_MUNICIPIO_ENDERECO CHAR(35)             null,
   CO_CEP_ENDERECO      CHAR(8)              null,
   SG_UF_ENDERECO       CHAR(2)              null,
   NO_PAIS_ENDERECO     CHAR(40)             null,
   DT_APURACAO_ENDERECO DATE                 null,
   DT_CONSTITUICAO      DATE                 null,
   NU_MATRICULA_GERENTE INT                  null,
   NO_MATRICULA_GERENTE VARCHAR(80)          null,
   CO_SISTEMA_ORIGEM    VARCHAR(100)         null,
   DH_POSICAO_LEGADO    DATETIME             null,
   DH_INGESTAO_SILDC    DATETIME             null,
   DH_INGESTAO_BASE_INTEGRADORA DATETIME             null,
   IC_BENEFICIARIO_FNL_LOCALIZADO CHAR(1)              null,
   DT_APURACAO_CELULAR_01 DATE                 null,
   DT_APURACAO_CELULAR_02 DATE                 null,
   CO_CNAE_NIVEL1       CHAR(1)              null,
   DE_CNAE_NIVEL1       VARCHAR(100)         null,
   CO_CNAE_NIVEL2       NUMERIC(5)           null,
   DE_CNAE_NIVEL2       VARCHAR(100)         null,
   CO_CNAE_NIVEL3       NUMERIC(5)           null,
   DE_CNAE_NIVEL3       VARCHAR(200)         null,
   CO_CNAE_NIVEL4       NUMERIC(10)          null,
   DE_CNAE_NIVEL4       VARCHAR(400)         null,
   DT_NASCIMENTO_CONJUGE DATE                 null,
   NO_CONJUGE           VARCHAR(70)          null,
   DT_CONTRATO_SOCIAL   DATE                 null,
   DT_CONSTITUICAO_PJ   DATE                 null,
   CO_IDENTIFICACAO_DOCUMENTO NUMERIC(5)           null,
   DT_EMISSAO_DOCUMENTO_IDNTO DATE                 null,
   DE_DOCUMENTO_IDENTIFICACAO VARCHAR(15)          null,
   SG_EMISSOR_DOCUMENTO_IDNTO CHAR(10)             null,
   CO_DOCUMENTO_IDENTIFICACAO CHAR(16)             null,
   SG_UF_DOCUMENTO_IDENTIFICACAO CHAR(2)              null,
   DT_APURACAO_CO_EMAIL DATE                 null,
   IC_FIM_LUCRATIVO     CHAR(1)              null,
   IC_FRANQUIA          CHAR(1)              null,
   NU_MATRICULA_GERENTE_RSPSL NUMERIC(10)          null,
   NO_GERENTE_RESPONSAVEL VARCHAR(70)          null,
   DE_GRAU_INSTRUCAO    VARCHAR(60)          null,
   NU_NATUREZA_JURIDICA_NIVEL1 NUMERIC(5)           null,
   DE_NATUREZA_JURIDICA_NIVEL1 VARCHAR(100)         null,
   NO_MAE               VARCHAR(70)          null,
   NO_PAI               VARCHAR(70)          null,
   NO_SOCIAL            VARCHAR(70)          null,
   IC_TIPO_OCUPACAO     CHAR(1)              null,
   IC_PESSOA_COM_DEFICIENCIA CHAR(1)              null,
   DE_TIPO_PORTE_CAIXA  VARCHAR(20)          null,
   DE_TIPO_PORTE_CAIXA_ME_EPP VARCHAR(20)          null,
   DE_TIPO_PORTE_CAIXA_MERCOSUL VARCHAR(20)          null,
   DE_TIPO_PORTE_CAIXA_MF VARCHAR(20)          null,
   QT_SOCIO             SMALLINT             null,
   VR_RENDA_RECENTE_BRUTA DECIMAL(18,2)        null,
   DT_APURACAO_RENDA_RECENTE DATE                 null,
   VR_RENDA_RECENTE_IRPF DECIMAL(18,2)        null,
   VR_RENDA_RECENTE_LIQUIDA DECIMAL(18,2)        null,
   IC_TIPO_RENDA_RECENTE CHAR(1)              null,
   AA_SEM_FATURAMENTO_ANUAL NUMERIC(5)           null,
   DT_SEM_FATURAMENTO_ULT12MESES DATE                 null,
   NO_SUBSEGMENTO       VARCHAR(100)         null,
   SG_SUBSEGMENTO       CHAR(2)              null,
   DT_APURACAO_TELEFONE_COMERCIAL DATE                 null,
   DT_APURACAO_TELEFONE_RSDNL DATE                 null,
   DE_TIPO_DEFICIENCIA  VARCHAR(100)         null,
   IC_CCS_BACEN         CHAR(1)              null,
   IC_AUT_PROP_TEL_RES  CHAR(1)              null,
   IC_AUT_PROP_TEL_COM  CHAR(1)              null,
   IC_AUT_PROP_CEL_01   CHAR(1)              null,
   IC_AUT_PROP_CEL_02   CHAR(1)              null,
   IC_AUT_PROP_EMAIL    CHAR(1)              null,
   IC_INADIMPLENCIA     CHAR(1)              null,
   IC_CONTA_PJ_ATIVA    CHAR(1)              null,
   constraint PK_CRMTB001 primary key (NU_CLIENTE)
)
go

/*==============================================================*/
/* Table: CRMTB002_CLIENTE_COCLI                                */
/*==============================================================*/
create table DM.CRMTB002_CLIENTE_COCLI (
   NU_CLIENTE           NUMERIC(13)          not null,
   NU_PESSOA            NUMERIC(13)          not null,
   NU_CPF_CNPJ          NUMERIC(14)          null,
   NU_TIPO_PESSOA       SMALLINT             null,
   IC_PRINCIPAL         CHAR(1)              null,
   IC_SITUACAO          CHAR(1)              null,
   IC_INCONSISTENCIA    CHAR(1)              null,
   CO_SISTEMA_ORIGEM    VARCHAR(100)         null,
   DH_POSICAO_LEGADO    DATETIME             null,
   DH_INGESTAO_SILDC    DATETIME             null,
   DH_INGESTAO_BASE_INTEGRADORA DATETIME             null,
   constraint PK_CRMTB002 primary key (NU_CLIENTE)
)
go

/*==============================================================*/
/* Table: CRMTB003_CLIENTE_NICHO                                */
/*==============================================================*/
create table DM.CRMTB003_CLIENTE_NICHO (
   NU_CLIENTE           NUMERIC(13)          not null,
   NU_PESSOA            NUMERIC(13)          not null,
   NU_CPF_CNPJ          NUMERIC(14)          null,
   NU_TIPO_PESSOA       SMALLINT             null,
   NU_NICHO             NUMERIC(5)           not null,
   NO_NICHO             CHAR(70)             null,
   SG_TIPO_PUBLICO_ALVO CHAR(2)              null,
   DT_INICIO_NICHO      DATE                 null,
   CO_SISTEMA_ORIGEM    VARCHAR(100)         null,
   DH_POSICAO_LEGADO    DATETIME             null,
   DH_INGESTAO_SILDC    DATETIME             null,
   DH_INGESTAO_BASE_INTEGRADORA DATETIME             null,
   constraint PK_CRMTB003 primary key (NU_CLIENTE, NU_NICHO)
)
go

/*==============================================================*/
/* Table: CRMTB004_CLIENTE_VINCULO                              */
/*==============================================================*/
create table DM.CRMTB004_CLIENTE_VINCULO (
   NU_CLIENTE_VINCULADOR NUMERIC(13)          not null,
   NU_CLIENTE_VINCULADO NUMERIC(13)          not null,
   NU_CPF_CNPJ_VINCULADOR NUMERIC(14)          null,
   NU_TIPO_PESSOA_VINCULADOR SMALLINT             null,
   NU_CPF_CNPJ_VINCULADO NUMERIC(14)          null,
   NU_TIPO_PESSOA_VINCULADO SMALLINT             null,
   IC_ESPECIE_VINCULO   CHAR(1)              null,
   NU_CLASSE_VINCULO    SMALLINT             null,
   NU_TIPO_VINCULO      SMALLINT             null,
   DT_INICIO_VINCULO    DATE                 null,
   DT_FIM_VINCULO       DATE                 null,
   IC_SITUACAO_VINCULO  CHAR(1)              null,
   CO_SISTEMA_ORIGEM    VARCHAR(100)         null,
   DH_POSICAO_LEGADO    DATETIME             null,
   DH_INGESTAO_SILDC    DATETIME             null,
   DH_INGESTAO_BASE_INTEGRADORA DATETIME             null,
   constraint PK_CRMTB004 primary key (NU_CLIENTE_VINCULADO, NU_CLIENTE_VINCULADOR)
)
go

/*==============================================================*/
/* Table: CRMTB005_CONTRATO_CARTAO                              */
/*==============================================================*/
create table DM.CRMTB005_CONTRATO_CARTAO (
   NU_CLIENTE           NUMERIC(13)          not null,
   CO_CHPRAS            CHAR(16)             not null,
   NU_CARTAO_CLIENTE    NUMERIC(12) not null,
   NU_CPF_CNPJ          NUMERIC(14)          null,
   NU_TIPO_PESSOA       SMALLINT             null,
   NU_SITUACAO_CONTA_CREDITO NUMERIC(2)           null,
   IC_TITULARIDADE      CHAR(2) null,
   NU_CPF_TITULAR       NUMERIC(14)          null,
   QT_CARTAO_ADICIONAL  NUMERIC(12) null,
   NO_CARTAO            VARCHAR(35) null,
   NU_BANDEIRA_CARTAO   NUMERIC(2) null,
   IC_VARIANTE_CARTAO   CHAR(2) null,
   DT_EMISSAO_CARTAO    DATE null,
   DT_ATIVACAO_CARTAO   DATE null,
   NU_VALIDADE_CARTAO   NUMERIC(6) null,
   DD_VENCIMENTO_FATURA SMALLINT null,
   VR_LIMITE_CREDITO_CONTRATADO DECIMAL(19,2)        null,
   VR_LIMITE_SAQUE_CONTRATADO DECIMAL(19,2)        null,
   DT_ALTERACAO_LIMITE  DATE null,
   VR_LIMITE_CREDITO_UTILIZADO DECIMAL(19,2)        null,
   VR_LIMITE_SAQUE_UTILIZADO DECIMAL(19,2)        null,
   VR_LIMITE_CREDITO_DISPONIVEL DECIMAL(19,2)        null,
   VR_LIMITE_SAQUE_DISPONIVEL DECIMAL(19,2)        null,
   IC_SITUACAO_CARTAO   CHAR(2)              null,
   DT_SITUACAO_CARTAO   DATE                 null,
   VR_ANUIDADE          DECIMAL(19,2)        null,
   CO_ANUIDADE          VARCHAR(20)          null,
   VR_ANUIDADE_TITULAR  DECIMAL(19,2)        null,
   VR_ANUIDADE_ADICIONAL DECIMAL(19,2)        null,
   PC_DESCONTO_ANUIDADE_TITULAR DECIMAL(19,2)        null,
   PC_DESCONTO_ANUIDADE_ADICIONAL DECIMAL(19,2)        null,
   PZ_BENEFICIO_TITULAR SMALLINT             null,
   PZ_BENEFICIO_ADICIONAL SMALLINT             null,
   VR_DESCONTO_ANUIDADE_TITULAR DECIMAL(19,2)        null,
   VR_DESCONTO_ANUIDADE_ADICIONAL DECIMAL(19,2)        null,
   QT_PARCELA_ANUIDADE  SMALLINT             null,
   DT_INICIO_VIGENCIA_ANUIDADE DATE                 null,
   DT_FIM_VIGENCIA_ANUIDADE DATE                 null,
   IC_AUTORIZACAO_SMS   CHAR(1)              null,
   CO_SISTEMA_ORIGEM    VARCHAR(100)         null,
   DH_POSICAO_LEGADO    DATETIME             null,
   DH_INGESTAO_SILDC    DATETIME             null,
   DH_INGESTAO_BASE_INTEGRADORA DATETIME             null,
   CO_MOTIVO_CANCELAMENTO CHAR(2)              null,
   DT_INICIO_INADIMPLENCIA DATE                 null,
   DE_SITUACAO_CONTA_CREDITO VARCHAR(100)         null,
   DE_TIPO_PESSOA       VARCHAR(50)          null,
   DE_MOTIVO_CANCELAMENTO CHAR(20)             null,
   DE_TITULARIDADE      VARCHAR(40)          null,
   NO_BANDEIRA          VARCHAR(30)          null,
   NO_SITUACAO_CARTAO   VARCHAR(50)          null,
   NO_VARIANTE_CARTAO   CHAR(10)             null,
   VR_INADIMPLENCIA     DECIMAL(19,2)        null,
   VR_LIMITE_ATUALIZADO DECIMAL(19,2)        null,
   VR_LIMITE_ANTERIOR   DECIMAL(19,2)        null,
   NU_COCLI             CHAR(8)              null,
   constraint PK_CRMTB005 primary key (NU_CLIENTE, CO_CHPRAS, NU_CARTAO_CLIENTE)
)
go

/*==============================================================*/
/* Table: CRMTB006_FATURA_CARTAO                                */
/*==============================================================*/
create table DM.CRMTB006_FATURA_CARTAO (
   NU_CLIENTE           NUMERIC(13)          not null,
   CO_CHPRAS            CHAR(16)             not null,
   NU_CARTAO_CLIENTE    NUMERIC(12)
           not null,
   NU_FATURA            INT                  not null,
   NU_CPF_CNPJ          NUMERIC(14)          null,
   NU_TIPO_PESSOA       SMALLINT             null,
   NO_CARTAO            VARCHAR(35)
           null,
   DT_VENCIMENTO_FATURA DATE                 null,
   VR_FATURA            DECIMAL(19,2)
         null,
   IC_SITUACAO_FATURA   NUMERIC(2)           null,
   VR_PAGO_FATURA       DECIMAL(19,2)        null,
   IC_PAGAMENTO_MINIMO  CHAR(2)              null,
   VR_PAGAMENTO_MINIMO  DECIMAL(19,2)        null,
   NU_DIA_ATRASO        NUMERIC(2)           null,
   VR_FATURA_ANTERIOR   DECIMAL(19,2)        null,
   VR_PAGO_FATURA_ANTERIOR DECIMAL(19,2)        null,
   CO_PERFIL_GASTO      CHAR(10)             null,
   NO_GRUPO_DEMONSTRATIVO VARCHAR(50)          null,
   CO_SISTEMA_ORIGEM    VARCHAR(100)         null,
   DH_POSICAO_LEGADO    DATETIME             null,
   DH_INGESTAO_SILDC    DATETIME             null,
   DH_INGESTAO_BASE_INTEGRADORA DATETIME             null,
   DE_SITUACAO_FATURA   VARCHAR(50)          null,
   DE_PERFIL_GASTO      VARCHAR(100)         null,
   NO_DIA_ATRASO        VARCHAR(50)          null,
   QT_TRANSACAO_A_VISTA_TITULAR NUMERIC(9)           null,
   QT_SAQUE             NUMERIC(8)           null,
   QT_TRANSACAO_A_VISTA NUMERIC(9)           null,
   QT_TRANSACAO_PARCELADO NUMERIC(9)           null,
   QT_TRNSO_PARCELADO_ADICIONAL NUMERIC(9)           null,
   VR_CREDITO_A_VISTA   DECIMAL(19,2)        null,
   VR_CREDITO_A_VISTA_TITULAR DECIMAL(19,2)        null,
   VR_CREDITO_PARCELADO DECIMAL(19,2)        null,
   VR_CREDITO_PARCELADO_ADICIONAL DECIMAL(19,2)        null,
   VR_DIVIDA            DECIMAL(19,2)        null,
   VR_IOF               DECIMAL(19,2)        null,
   VR_JUROS             DECIMAL(19,2)        null,
   VR_MORA              DECIMAL(19,2)        null,
   VR_SAQUE             DECIMAL(19,2)        null,
   NU_COCLI             CHAR(8)              null,
   constraint PK_CRMTB006 primary key (NU_CLIENTE, CO_CHPRAS, NU_CARTAO_CLIENTE, NU_FATURA)
)
go

/*==============================================================*/
/* Table: CRMTB007_PROPOSTA_CARTAO                              */
/*==============================================================*/
create table DM.CRMTB007_PROPOSTA_CARTAO (
   NU_CPF_CNPJ          NUMERIC(14)          null,
   NU_TIPO_PESSOA       SMALLINT             null,
   DE_TIPO_PESSOA       VARCHAR(50)          null,
   NU_PROPOSTA_CARTAO   INT not null,
   DT_PROPOSTA_CARTAO   DATE                 null,
   DT_VALIDADE_PROPOSTA_CARTAO DATE                 null,
   VR_LIMITE_PROPOSTA_CARTAO DECIMAL(17,2) null,
   NU_AVALIACAO_SIRIC   NUMERIC(10) null,
   NU_CONTA_CREDITO     NUMERIC(11) null,
   IC_SITUACAO_PROPOSTA CHAR(5)              null,
   DE_SITUACAO_PROPOSTA_CARTAO CHAR(40) null,
   IC_CANAL_VENDA       CHAR(5)              null,
   NO_CANAL_VENDA       CHAR(40)             null,
   CO_SISTEMA_ORIGEM    VARCHAR(100)         null,
   DH_POSICAO_LEGADO    DATETIME             null,
   DH_INGESTAO_SILDC    DATETIME             null,
   DH_INGESTAO_BASE_INTEGRADORA DATETIME             null,
   NU_COCLI             char(8)              null,
   NU_CLIENTE           NUMERIC(13)          not null,
   constraint PK_CRMTB007 primary key (NU_PROPOSTA_CARTAO, NU_CLIENTE)
)
go

/*==============================================================*/
/* Table: CRMTB008_CONTA                                        */
/*==============================================================*/
create table DM.CRMTB008_CONTA (
   NU_CLIENTE           NUMERIC(13)          not null,
   NU_AGENCIA           NUMERIC(5)
            not null,
   NU_OPERACAO          NUMERIC(5)
            not null,
   NU_CONTA             NUMERIC(17)          not null,
   NU_CPF_CNPJ          NUMERIC(14)          null,
   NU_TIPO_PESSOA       SMALLINT             null,
   NU_CONTRATO          CHAR(20)             null,
   DT_ABERTURA_CONTA    DATE                 null,
   NU_TITULARIDADE      NUMERIC(2)           null,
   DT_ENCERRAMENTO_CONTA DATE                 null,
   NU_TIPO_CONTA        NUMERIC(5)           null,
   VR_SALDO_DISPONIVEL  DECIMAL(15,2)        null,
   QT_LANCAMENTO_DIA    NUMERIC(2)           null,
   VR_ULTIMO_MOVIMENTO  DECIMAL(15,2)        null,
   IC_TIPO_ULTIMO_MOVIMENTO CHAR(1)              null,
   DT_ULTIMO_MOVIMENTO  DATE                 null,
   VR_SALDO_MEDIO_MENSAL DECIMAL(15,2)        null,
   NU_AGENCIA_SIDEC     NUMERIC(5)           null,
   NU_OPERACAO_SIDEC    NUMERIC(5)           null,
   NU_CONTA_SIDEC       NUMERIC(9)           null,
   CO_LIMITE_SIICO      CHAR(2)              null,
   DT_IMPLANTACAO_LIMITE DATE                 null,
   DT_ULTIMA_PRORROGACAO_LIMITE DATE                 null,
   DT_VENCIMENTO_LIMITE DATE                 null,
   VR_LIMITE_CONTRATADO DECIMAL(15,2)        null,
   VR_LIMITE_UTILIZADO  DECIMAL(15,2)        null,
   VR_LIMITE_DISPONIVEL DECIMAL(15,2)        null,
   VR_MEDIO_LIMITE      DECIMAL(15,2)        null,
   IC_SITUACAO_LIMITE   CHAR(2)              null,
   PC_TAXA_JUROS_LIMITE DECIMAL(13,5)        null,
   VR_CET_MENSAL_LIMITE DECIMAL(15,2)        null,
   NU_CESTA_CONTA       NUMERIC(4)           null,
   DT_INCLUSAO_CESTA    DATE                 null,
   IC_CONTA_SALARIO     CHAR(2)              null,
   IC_CONTA_BENEFICIO_INSS CHAR(2)              null,
   QT_ADEP              NUMERIC(8)           null,
   NU_CATEGORIA_CONTA   NUMERIC(2)           null,
   DT_ENCERRAMENTO_LIMITE DATE                 null,
   QT_DIA_ATRASO        NUMERIC(2)           null,
   QT_DIA_EXCESSO_LIMITE NUMERIC(2)           null,
   NU_DIGITO            NUMERIC(5)           null,
   NO_INDEXADOR_LIMITE  CHAR(4)              null,
   PC_CDI               NUMERIC(5)           null,
   QT_CREDITO_MES       NUMERIC(2)           null,
   QT_DEBITO_MES        SMALLINT             null,
   VR_SALDO_CONTABIL_DIARIO NUMERIC(15)          null,
   VR_TOTAL_CREDITO_MES DECIMAL(17,2)
         null,
   VR_ADEP              NUMERIC(15)          null,
   VR_EXCESSO           DECIMAL(15,2)        null,
   VR_IOF_LIMITE        NUMERIC(16)          null,
   VR_JUROS_LIMITE      DECIMAL(15,2)        null,
   VR_TOTAL_DEBITO_MES  NUMERIC(17)          null,
   VR_SALDO_APLICADO    DECIMAL(15,2)        null,
   VR_SALDO_BLOQUEADO   DECIMAL(15,2)        null,
   CO_SISTEMA_ORIGEM    VARCHAR(100)         null,
   DH_POSICAO_LEGADO    DATETIME             null,
   DH_INGESTAO_SILDC    DATETIME             null,
   DH_INGESTAO_BASE_INTEGRADORA DATETIME             null,
   constraint PK_CRMTB008 primary key (NU_CLIENTE, NU_AGENCIA, NU_OPERACAO, NU_CONTA)
)
go

/*==============================================================*/
/* Table: CRMTB009_CONTA_MARCA                                  */
/*==============================================================*/
create table DM.CRMTB009_CONTA_MARCA (
   NU_CLIENTE           NUMERIC(13)          not null,
   NU_CPF_CNPJ          NUMERIC(14)          null,
   NU_TIPO_PESSOA       SMALLINT             null,
   NU_AGENCIA           NUMERIC(5)
            not null,
   NU_OPERACAO          NUMERIC(5)
            not null,
   NU_CONTA             NUMERIC(17)          not null,
   NU_MARCA             NUMERIC(4)
            not null,
   DE_MARCA             VARCHAR(60)          null,
   SG_MARCA             CHAR(3)              null,
   DT_INICIO_CADASTRO   DATE                 null,
   DT_FIM_CADASTRO      DATE                 null,
   CO_SISTEMA_ORIGEM    VARCHAR(100)         null,
   DH_POSICAO_LEGADO    DATETIME             null,
   DH_INGESTAO_SILDC    DATETIME             null,
   DH_INGESTAO_BASE_INTEGRADORA DATETIME             null,
   constraint PK_CRMTB009 primary key (NU_CLIENTE, NU_AGENCIA, NU_OPERACAO, NU_CONTA, NU_MARCA)
)
go

/*==============================================================*/
/* Table: CRMTB010_CONTA_SALARIO                                */
/*==============================================================*/
create table DM.CRMTB010_CONTA_SALARIO (
   NU_CLIENTE           NUMERIC(13)          not null,
   NU_AGENCIA           NUMERIC(5)           not null,
   NU_OPERACAO          NUMERIC(5)           not null,
   NU_CONTA_DV          NUMERIC(17)          not null,
   NU_SQNCL_MVMTO       SMALLINT             not null,
   NU_CPF_CNPJ          NUMERIC(14)          null,
   NU_TIPO_PESSOA       SMALLINT             null,
   NU_CONTA_DESTINO     NUMERIC(13)          null,
   NU_BANCO_DESTINO     NUMERIC(5)           null,
   NO_FONTE_PAGADORA    VARCHAR(200)         null,
   NU_CNPJ_CPF_FONTE_PAGADORA NUMERIC(14)          null,
   NU_CONVENIO_FONTE_PAGADORA NUMERIC(10)          null,
   DT_VINCULO           DATE                 null,
   DT_CREDITO           DATE                 null,
   VR_ULTIMO_CREDITO    DECIMAL(15,2)        null,
   IC_TIPO_CONTA_DESTINO CHAR(2)              null,
   IC_SITUACAO_CONTA    CHAR(1)              null,
   IC_TIPO_PESSOA_FONTE_PAGADORA CHAR(1)              null,
   NU_MOTIVO_SITUACAO   SMALLINT             null,
   CO_SISTEMA_ORIGEM    VARCHAR(100)         null,
   DH_POSICAO_LEGADO    DATETIME             null,
   DH_INGESTAO_SILDC    DATETIME             null,
   DH_INGESTAO_BASE_INTEGRADORA DATETIME             null,
   constraint PK_CRMTB010 primary key (NU_CLIENTE, NU_AGENCIA, NU_OPERACAO, NU_CONTA_DV, NU_SQNCL_MVMTO)
)
go

/*==============================================================*/
/* Table: CRMTB011_CESTA_SERVICO                                */
/*==============================================================*/
create table DM.CRMTB011_CESTA_SERVICO (
   NU_CLIENTE           NUMERIC(13)          not null,
   NU_AGENCIA           NUMERIC(5)
            not null,
   NU_OPERACAO          NUMERIC(5)
            not null,
   NU_CONTA             NUMERIC(17)          not null,
   TS_ATUALIZACAO       timestamp            not null,
   NU_CPF_CNPJ          NUMERIC(14)          null,
   NU_TIPO_PESSOA       SMALLINT             null,
   DT_REFERENCIA        DATE                 null,
   NO_SISTEMA           VARCHAR(50)          null,
   DT_ABERTURA_CONTA    DATE                 null,
   CO_CESTA_SERVICO     CHAR(10)             null,
   NO_CESTA_SERVICO     VARCHAR(80)          null,
   VR_CESTA_SERVICO     DECIMAL(12,2)        null,
   DT_ADESAO_CESTA_SERVICO DATE                 null,
   DE_CANAL_ADESAO      VARCHAR(80)          null,
   DE_CAMPANHA          VARCHAR(200)         null,
   DT_CAMPANHA          DATE                 null,
   QT_DIA_CAMPANHA      SMALLINT             null,
   VR_DEBITO_CESTA      DECIMAL(12,2)        null,
   DT_DEBITO_CESTA      DATE                 null,
   PC_DESCONTO_CESTA_SERVICO DECIMAL(5,2)         null,
   DT_CANCELAMENTO_CESTA_SERVICO DATE                 null,
   DE_MOTIVO_CANCELAMENTO VARCHAR(200)         null,
   CO_CANAL_CANCELAMENTO CHAR(10)             null,
   IC_CONTA_VANTAGEM    CHAR(1)              null,
   CO_SISTEMA_ORIGEM    VARCHAR(100)         null,
   DH_POSICAO_LEGADO    DATETIME             null,
   DH_INGESTAO_SILDC    DATETIME             null,
   DH_INGESTAO_BASE_INTEGRADORA DATETIME             null,
   constraint PK_CRMTB011 primary key (NU_CLIENTE, NU_AGENCIA, NU_OPERACAO, NU_CONTA, TS_ATUALIZACAO)
)
go

/*==============================================================*/
/* Table: CRMTB012_TOMADOR                                      */
/*==============================================================*/
CREATE TABLE [DM].[CRMTB012_TOMADOR](
[NU_CLIENTE] [numeric](13, 0) NOT NULL,
[NU_AVALIACAO_TOMADOR] [numeric](10, 0) NOT NULL,
[NU_CPF_CNPJ] [numeric](14, 0) NULL,
[NU_TIPO_PESSOA] [smallint] NULL,
[DE_TIPO_PESSOA] [varchar](50) NULL,
[NU_CPF_PARTICIPANTE] [numeric](14, 0) NOT NULL,
[CO_RATING_TOMADOR] [varchar](3) NULL,
[DE_AVALIACAO_RISCO] [varchar](250) NULL,
[DT_INICIO_VALIDADE_AVLCO_TMDR] [date] NULL,
[DT_FIM_VALIDADE_AVLCO_TOMADOR] [date] NULL,
[DT_CANCELAMENTO_AVLCO_TOMADOR] [date] NULL,
[CO_MOTIVO_REPROVACAO] [varchar](4) NULL,
[DE_MOTIVO_REPROVACAO] [varchar](250) NULL,
[NU_PRODUTO_OPERACAO] [numeric](4, 0) NOT NULL,
[NO_PRODUTO] [varchar](256) NULL,
[CO_MODALIDADE_OPERACAO] [varchar](4) NULL,
[CO_ORIGEM_RECURSO_OPERACAO] [char](2) NULL,
[NO_ORIGEM_RECURSO] [varchar](250) NULL,
[VR_MAXIMO_CALCULADO_OPERACAO] [decimal](15, 2) NULL,
[VR_CAPACIDADE_PAGAMENTO_OPRCO] [decimal](15, 2) NULL,
[VR_MAXIMO_DISPONIVEL_OPERACAO] [decimal](15, 2) NULL,
[CO_RESULTADO_OPRCO_AVLCO_TMDR] [varchar](2) NULL,
[DE_RESULTADO_AVALIACAO] [varchar](250) NULL,
[CO_SISTEMA_ORIGEM] [varchar](100) NULL,
[DH_POSICAO_LEGADO] [datetime] NULL,
[DH_INGESTAO_SILDC] [datetime] NULL,
[DH_INGESTAO_BASE_INTEGRADORA] [datetime] NULL,
CONSTRAINT [PK_CRMTB012] PRIMARY KEY CLUSTERED
(
[NU_CLIENTE] ASC,
[NU_AVALIACAO_TOMADOR] ASC,
[NU_PRODUTO_OPERACAO] ASC,
[NU_CPF_PARTICIPANTE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

/*==============================================================*/
/* Table: CRMTB013_OPERACAO                                     */
/*==============================================================*/
CREATE TABLE [DM].[CRMTB013_OPERACAO](
[NU_CLIENTE] [numeric](13, 0) NOT NULL,
[NU_AVALIACAO_OPERACAO] [numeric](10, 0) NOT NULL,
[NU_AVALIACAO_TOMADOR] [numeric](10, 0) NOT NULL,
[NU_PRODUTO_OPERACAO] [numeric](4, 0) NOT NULL,
[DE_AVALIACAO_TOMADOR] [varchar](250) NULL,
[NU_CPF_CNPJ] [numeric](14, 0) NULL,
[NU_TIPO_PESSOA] [smallint] NULL,
[DE_TIPO_PESSOA] [varchar](50) NULL,
[DE_AVALIACAO_OPERACAO] [varchar](250) NULL,
[NU_UNIDADE_SLCTO_AVLCO_OPRCO] [smallint] NULL,
[DT_INICIO_VALIDADE_AVLCO_OPRCO] [date] NULL,
[DT_FIM_VALIDADE_AVLCO_OPERACAO] [date] NULL,
[NO_PRODUTO] [varchar](256) NULL,
[CO_MODALIDADE_OPERACAO] [varchar](12) NULL,
[CO_ORIGEM_RECURSO_OPERACAO] [char](10) NULL,
[DE_ORIGEM_RECURSO] [varchar](250) NULL,
[CO_CONCEITO_OPERACAO] [varchar](3) NULL,
[DE_CONCEITO_OPERACAO] [varchar](250) NULL,
[VR_LIMITE_GLOBAL] [decimal](15, 2) NULL,
[VR_APROVADO_OPERACAO] [decimal](15, 2) NULL,
[PZ_MAXIMO_OPERACAO] [numeric](4, 0) NULL,
[VR_MAXIMO_PRESTACAO] [decimal](15, 2) NULL,
[IC_ORIGEM_CONTA_VINCULADA] [char](1) NULL,
[DE_ORIGEM_CONTA_VINCULADA] [varchar](5) NULL,
[NU_AGENCIA_CONTA_VINCULADA] [numeric](4, 0) NULL,
[NU_OPERACAO_CONTA_VINCULADA] [numeric](4, 0) NULL,
[NU_CONTA_VINCULADA] [numeric](13, 0) NULL,
[NU_CONVENENTE] [numeric](10, 0) NULL,
[DT_CANCELAMENTO_AVLCO_OPERACAO] [date] NULL,
[CO_TIPO_GARANTIA] [char](4) NULL,
[NO_TIPO_GARANTIA] [varchar](250) NULL,
[NU_ORDEM_GARANTIA] [numeric](3, 0) NOT NULL,
[NU_SEQUENCIAL_GARANTIA] [numeric](3, 0) NULL,
[IC_TIPO_PESSOA_FIDEJUSSORIA] [char](1) NULL,
[NO_TIPO_PESSOA_FIDEJUSSORIA] [varchar](250) NULL,
[NU_CPF_CNPJ_PSA_FIDEJUSSORIA] [numeric](14, 0) NULL,
[VR_GARANTIA_OPERACAO] [decimal](15, 2) NULL,
[CO_SISTEMA_ORIGEM] [varchar](100) NULL,
[DH_POSICAO_LEGADO] [datetime] NULL,
[DH_INGESTAO_SILDC] [datetime] NULL,
[DH_INGESTAO_BASE_INTEGRADORA] [datetime] NULL,
CONSTRAINT [PK_CRMTB013] PRIMARY KEY CLUSTERED
(
[NU_CLIENTE] ASC,
[NU_AVALIACAO_OPERACAO] ASC,
[NU_AVALIACAO_TOMADOR] ASC,
[NU_PRODUTO_OPERACAO] ASC,
[NU_ORDEM_GARANTIA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

/*==============================================================*/
/* Table: CRMTB014_CONTRATO_CREDITO                             */
/*==============================================================*/
create table DM.CRMTB014_CONTRATO_CREDITO (
   NU_CLIENTE           NUMERIC(13)          not null,
   NU_CPF_CNPJ          NUMERIC(14)          null,
   NU_TIPO_PESSOA       SMALLINT             null,
   NU_CONTRATO          CHAR(20)             not null,
   NU_PRODUTO           SMALLINT             null,
   CO_MODALIDADE_OPERACAO VARCHAR(3)         null,
   CO_ORIGEM_RECURSO    CHAR(12)             null,
   IC_TIPO_CONTRATO     CHAR(2)              null,
   NU_UNIDADE_CONTRATO  SMALLINT             null,
   DT_CONTRATACAO_EMPRESTIMO DATE            null,
   VR_CONTRATO_BRUTO    DECIMAL(17,2)        null,
   VR_CONTRATO_LIQUIDO  DECIMAL(17,2)        null,
   NU_LIMITE            INT                  null,
   VR_LMTE_HABILITADO   DECIMAL(15,2)        null,
   PZ_CONTRATO          SMALLINT             null,
   CO_PRAZO_VENCIMENTO  VARCHAR(5)           null,
   CO_UNIDADE_TEMPO_CONTRATO VARCHAR(5)      null,
   CO_SITUACAO_CONTRATO CHAR(1)              null,
   DT_VENCIMENTO_CONTRATO DATE               null,
   IC_AVERBACAO         CHAR(1)              null,
   NU_CONVENENTE        NUMERIC(10)          null,
   NU_CNPJ_CONVENENTE   NUMERIC(14)          null,
   CO_SITUACAO_CONVENENTE CHAR(5)            null,
   PZ_MAXIMO_CONTRATACAO SMALLINT            null,
   NU_CANAL_CONCESSAO   SMALLINT             null,
   DT_ADMISSAO_CARENCIA DATE                 null,
   PZ_MAXIMO_CARENCIA   SMALLINT             null,
   NU_CONTA_DEBITO      VARCHAR(20)          null,
   NU_PRODUTO_CONTA_DEBITO_NSGD DECIMAL(20)  null,
   PZ_REMANESCENTE      DECIMAL(3)           null,
   PC_TAXA_JURO_CONTRATO DECIMAL(9,5)        null,
   CET_MENSAL           DECIMAL(5,2)         null,
   CET_ANUAL            DECIMAL(5,2)         null,
   VR_PARCELA_CONTRATADA DECIMAL(17,2)       null,
   DT_VENCIMENTO_PRIMEIRA_PARCELA DATE       null,
   QT_PRESTACAO_PAGA    SMALLINT             null,
   VR_SALDO_DEVEDOR     DECIMAL(17,2)        null,
   DT_SALDO_DEVEDOR     DATE                 null,
   CO_GARANTIA          CHAR(6)              null,
   DT_VALOR_INICIAL_GARANTIA DATE            null,
   VR_INICIAL_GARANTIA  DECIMAL(17,2)        null,
   IC_SEGURO_CONTRATO   CHAR(1)              null,
   CO_TIPO_SEGURO       CHAR(14)             null,
   VR_SEGURO_GARANTIA   DECIMAL(17,2)        null,
   NU_CONTA_CREDITO_SIDEC VARCHAR(20)        null,
   NU_PRODUTO_CONTA_CREDITO_NSGD DECIMAL(20) null,
   IC_CARENCIA          CHAR(1)              null,
   DT_INICIO_CARENCIA   DATE                 null,
   PZ_CARENCIA_CONTRATO SMALLINT             null,
   QT_RENOVACAO         SMALLINT             null,
   NO_INSTITUICAO_CONTRATO VARCHAR(100)      null,
   IC_SITUACAO_AVERBACAO CHAR(1)             null,
   NO_SITUACAO_AVERBACAO VARCHAR(100)        null,
   VR_LIBERADO          DECIMAL(17,2)        null,
   DT_LIBERACAO_CREDITO DATE                 null,
   CO_INSTITUICAO_ORIGINAL INT               null,
   NO_CONVENENTE        VARCHAR(100)         null,
   CO_GRUPO_CONVENENTE  NUMERIC(6)           null,
   NO_GRUPO_CONVENENTE  VARCHAR(100)         null,
   IC_SITUACAO_CONVENENTE NUMERIC(5)         null,
   NO_SITUACAO_CONVENENTE VARCHAR(100)       null,
   CO_CANAL_CONCESSAO   INT                  null,
   NO_CANAL_CONCESSAO   VARCHAR(100)         null,
   DE_ADMISSAO_CARENCIA VARCHAR(100)         null,
   PC_TAXA_FAIXA_A      DECIMAL(9,5)         null,
   PC_TAXA_FAIXA_B      DECIMAL(9,5)         null,
   PC_TAXA_FAIXA_C      DECIMAL(9,5)         null,
   DT_INICIO_TAXA_CONVENENTE DATE            null,
   DT_FIM_TAXA_CONVENENTE DATE               null,
   TS_ATUALIZACAO       TIMESTAMP            null,
   NO_TIPO_PESSOA       VARCHAR(250)         null,
   NO_PRODUTO           VARCHAR(20)          null,
   NO_MODALIDADE_OPERACAO CHAR(50)           null,
   VR_LIMITE_CREDITO    DECIMAL(19,2)        null,
   NU_CLIENTE_CREDITO   NUMERIC(13)          null,
   NU_TIPO_SITUACAO_LIMITE SMALLINT          null,
   DE_TIPO_SITUACAO_LIMITE VARCHAR(20)       null,
   DT_VALIDADE_LIMITE   DATE                 null,
   DE_SITUACAO_CONTRATO VARCHAR(100)         null,
   NU_AGENCIA_CONTA_DEBITO NUMERIC(4)        null,
   NU_OPERACAO_CONTA_DEBITO SMALLINT         null,
   NU_CONTA_DEBITO_NSGD DECIMAL(20)          null,
   QT_RENEGOCIACAO_CONTRATO SMALLINT         null,
   QT_PRAZO_REMANECENTE SMALLINT             null,
   NU_PERIODICIDADE_TAXA_JUROS SMALLINT      null,
   NO_PERIODICIDADE_TAXA_JUROS VARCHAR(20)   null,
   CO_INDEXADOR         CHAR(2)              null,
   PC_INDEXADOR         DECIMAL(11,7)        null,
   VR_JUROS_OPERACAO    DECIMAL(15,2)        null,
   PC_TAXA_LIMITE_ENCARGO DECIMAL(5,2)       null,
   PC_TAXA_CAIXA        DECIMAL(5,2)         null,
   PC_TAXA_BNDES        DECIMAL(5,2)         null,
   VR_CONTRATADO_UTILIZADO DECIMAL(15, 2)    null,
   VR_CONTRATADO_NAO_UTILIZADO DECIMAL(15, 2) null,
   CO_UNDDE_TEMPO_PRAZO_CARENCIA VARCHAR(5)  null,
   VR_GARANTIA          DECIMAL(15,2)        null,
   CO_TIPO_GARANTIA     CHAR(4)              null,
   DE_TIPO_GARANTIA     VARCHAR(100)         null,
   NU_CPF_CNPJ_AVALISTA NUMERIC(14)          null,
   NU_TIPO_PESSOA_AVALISTA SMALLINT          null,
   DT_INICIO_AMORTIZACAO DATE                null,
   PZ_AMORTIZACAO_CONTRATO SMALLINT          null,
   NU_PERIODICIDADE_AMORTIZACAO SMALLINT     null,
   NO_TIPO_LIQUIDACAO   VARCHAR(250)         null,
   CO_AVALIACAO_SIRIC   DECIMAL(10)          null,
   CO_CONCEITO_RATING_OPERACAO VARCHAR(3)    null,
   DE_TIPO_CRITERIO_JULGAMENTO VARCHAR(100)  null,
   QT_PARCELA_ATRASO    SMALLINT             null,
   QT_DIA_ATRASO        SMALLINT             null,
   DT_INSCRICAO_INADIMPLENCIA DATE           null,
   VR_LANCAMENTO_CREDITO_ATRASO DECIMAL(15,2) null,
   VR_PREJUIZO          DECIMAL(17,2)        null,
   NU_AGENCIA_CONTA_CREDITO NUMERIC(4)       null,
   NU_OPERACAO_CONTA_CREDITO SMALLINT        null,
   NU_CONTA_CREDITO     DECIMAL(9)           null,
   NU_CONTA_CREDITO_NSGD DECIMAL(9)          null,
   DT_LIQUIDACAO_CONTRATO DATE               null,
   DT_SITUACAO_CONTRATO DATE                 null,
   VR_SITUACAO_CONTRATO DECIMAL(17,2)        null,
   QT_PARCELA_REMANESCENTE SMALLINT          null,
   NU_AGENCIA_COBRANCA  NUMERIC(4)           null,
   QT_PARCELA_CARENCIA  SMALLINT             null,
   IC_TIPO_INFORMACAO   CHAR(1)              null,
   CO_SISTEMA_ORIGEM    VARCHAR(100)         null,
   DH_POSICAO_LEGADO    DATETIME             null,
   DH_INGESTAO_SILDC    DATETIME             null,
   DH_INGESTAO_BASE_INTEGRADORA DATETIME     null,
   NU_COCLI             VARCHAR(50)          null,
   constraint PK_CRMTB014 primary key (NU_CLIENTE, NU_CONTRATO)
)
go

/*==============================================================*/
/* Table: CRMTB015_CREDITO_PRE_APROVADO                         */
/*==============================================================*/
create table DM.CRMTB015_CREDITO_PRE_APROVADO (
   NU_CLIENTE           NUMERIC(13)          not null,
   NU_CPF_CNPJ          NUMERIC(14)          null,
   NU_TIPO_PESSOA       SMALLINT             null,
   NO_TIPO_PESSOA       VARCHAR(250)         null,
   DT_DESBLOQUEIO       DATE                 null,
   VR_LIMITE_ATUALIZADO DECIMAL(15,2)        null,
   IC_SITUACAO          CHAR(1)              null,
   DE_SITUACAO_CLIENTE  CHAR(15)             null,
   DT_MOVIMENTO_AVALIACAO DATE                 null,
   NU_AGENCIA           NUMERIC(5)
            not null,
   NU_OPERACAO_CONTA    SMALLINT             not null,
   NU_CONTA             NUMERIC(17)          not null,
   NU_AVALIACAO         DECIMAL(10)          null,
   DT_VALIDADE_AVALIACAO DATE                 null,
   IC_REGISTRO_LIMITE   CHAR(5)              null,
   CO_MODALIDADE        VARCHAR(20)          null,
   VR_LIMITE_PRE_APROVADO DECIMAL(15,2)        null,
   VR_LIMITE_ATIVADO    DECIMAL(15,2)        null,
   VR_LIMITE_HABILITADO DECIMAL(15,2)        null,
   VR_LIMITE_UTILIZADO  DECIMAL(15,2)        null,
   VR_CAPACIDADE_DISPONIVEL DECIMAL(15,2)        null,
   VR_CAPACIDADE_MENSAL DECIMAL(15,2)        null,
   NU_PRODUTO           SMALLINT             null,
   NO_PRODUTO           VARCHAR(20)          null,
   CO_SISTEMA_ORIGEM    VARCHAR(100)         null,
   DH_POSICAO_LEGADO    DATETIME             null,
   DH_INGESTAO_SILDC    DATETIME             null,
   DH_INGESTAO_BASE_INTEGRADORA DATETIME             null,
   constraint PK_CRMTB015 primary key (NU_CLIENTE, NU_AGENCIA, NU_OPERACAO_CONTA, NU_CONTA)
)
go

/*==============================================================*/
/* Table: CRMTB016_CADASTRO_RESTRITIVO                          */
/*==============================================================*/
create table DM.CRMTB016_CADASTRO_RESTRITIVO (
   NU_CLIENTE           NUMERIC(13)          not null,
   NU_CPF_CNPJ          NUMERIC(14)          null,
   NU_TIPO_PESSOA       SMALLINT             null,
   NO_DEVEDOR           CHAR(60)             null,
   IC_SITUACAO_DEVEDOR  CHAR(1)              null,
   NO_CREDOR            CHAR(30)             null,
   CO_CREDOR            CHAR(5)              null,
   NU_CONTRATO_RELACIONADO CHAR(20)             null,
   NU_UNIDADE           SMALLINT             null,
   NU_PRODUTO           SMALLINT             null,
   NU_TIPO_PESQUISA     SMALLINT             not null,
   IC_TIPO_PESQUISA     CHAR(1)              null,
   NU_SUBTIPO_PESQUISA  SMALLINT             null,
   DT_PESQUISA          DATE                 not null,
   CO_TIPO_RESTRICAO    CHAR(20)             null,
   VR_RESTRICAO         DECIMAL(9,2)
          null,
   DT_INICIO_RESTRICAO  DATE                 null,
   IC_SITUACAO_SOLICITACAO CHAR(1)              null,
   QT_OCORRENCIA        SMALLINT             null,
   VR_TOTAL_DIVIDA      DECIMAL(9,2)
          null,
   IC_POLITICAMENTE_EXPOSTO CHAR(1)              null,
   CO_TIPO_POLITICAMENTE_EXPOSTO CHAR(1)              null,
   DT_INICIO_IMPROBIDADE DATE                 null,
   DT_FIM               DATE                 null,
   NU_CPF_CNPJ_VINCULADO_PPE NUMERIC(14)          null,
   IC_OBITO             CHAR(1)              null,
   DT_OBITO             DATE                 null,
   IC_TIPO_DEVEDOR      CHAR(1)              null,
   IC_SITUACAO_RESTRICAO CHAR(1)              null,
   DE_TIPO_PESSOA       VARCHAR(50)          null,
   DE_SITUACAO_DEVEDOR  VARCHAR(10)          null,
   NO_PRODUTO           VARCHAR(20)          null,
   DE_TIPO_PESQUISA     CHAR(50)             null,
   DE_SITUACAO_RESTRICAO CHAR(10)             null,
   NO_CARGO             CHAR(30)             null,
   NO_ORGAO_ORIGEM      CHAR(30)             null,
   DT_NOMEACAO          DECIMAL(8)           null,
   DT_EXONERACAO        DECIMAL(8)           null,
   NO_ORGAO_OBITO       CHAR(30)             null,
   CO_SISTEMA_ORIGEM    VARCHAR(100)         null,
   DH_POSICAO_LEGADO    DATETIME             null,
   DH_INGESTAO_SILDC    DATETIME             null,
   DH_INGESTAO_BASE_INTEGRADORA DATETIME             null,
   IC_INADIMPLENCIA_CONSIGNADO CHAR(1)              null,
   constraint PK_CRMTB016 primary key (NU_CLIENTE, NU_TIPO_PESQUISA, DT_PESQUISA)
)
go

/*==============================================================*/
/* Table: CRMTB025_CHAVE_CLIENTE                                */
/*==============================================================*/
create table DM.CRMTB025_CHAVE_CLIENTE (
   NU_CLIENTE           NUMERIC(13)          not null,
   NU_PESSOA            NUMERIC(13)          not null,
   NU_CPF_CNPJ          NUMERIC(14)          not null,
   DT_INICIO_VIGENCIA   DATE                 null,
   DT_FIM_VIGENCIA      DATE                 null,
   IC_SITUACAO_CHAVE    CHAR(1)              null,
   constraint PK_CRMTB025 primary key (NU_CLIENTE, NU_PESSOA, NU_CPF_CNPJ)
)
go

/*==============================================================*/
/* Table: CRMTB026_CLENTE_CARTEIRA                              */
/*==============================================================*/
create table DM.CRMTB026_CLENTE_CARTEIRA (
   NU_CLIENTE           NUMERIC(13)          not null,
   CO_CARTEIRA          CHAR(4)              not null,
   NU_CPF_CNPJ          NUMERIC(14)          null,
   NU_TIPO_PESSOA       SMALLINT             null,
   NO_SEGMENTO          VARCHAR(70)          null,
   IC_TIPO_CARTEIRA     CHAR(1)              null,
   NO_CARTEIRA          VARCHAR(100)         null,
   NU_UNIDADE_VINCULADA SMALLINT             null,
   IC_UNIDADE_REFERENCIA CHAR(1)              null,
   IC_SITUACAO_CARTEIRA CHAR(1)              null,
   NU_MATRICULA_GERENTE NUMERIC(10)          null,
   NO_GERENTE           VARCHAR(70)          null,
   IC_TIPO_PESSOA_CARTEIRA CHAR(1)              null,
   CO_SISTEMA_ORIGEM    VARCHAR(100)         null,
   DH_POSICAO_LEGADO    DATETIME             null,
   DH_INGESTAO_SILDC    DATETIME             null,
   DH_INGESTAO_BASE_INTEGRADORA DATETIME             null,
   constraint PK_CRMTB026 primary key (NU_CLIENTE, CO_CARTEIRA)
)
go

/*==============================================================*/
/* Table: CRMTB027_AGENCIA_CARTEIRA                             */
/*==============================================================*/
create table DM.CRMTB027_AGENCIA_CARTEIRA (
   NU_CLIENTE           NUMERIC(13)          not null,
   CO_CARTEIRA          CHAR(4)              not null,
   NU_UNIDADE_VINCULADA NUMERIC(5)           null,
   IC_SITUACAO_CARTEIRA CHAR(1)              null,
   NU_MATRICULA_GERENTE NUMERIC(10)          null,
   DT_INICIO_RESPONSABILIDADE DATE                 null,
   DT_FIM_RESPONSABILIDADE DATE                 null,
   NU_GERENTE_RESPONSAVEL NUMERIC(5)           null,
   CO_SISTEMA_ORIGEM    VARCHAR(100)         null,
   DH_POSICAO_LEGADO    DATETIME             null,
   DH_INGESTAO_SILDC    DATETIME             null,
   DH_INGESTAO_BASE_INTEGRADORA DATETIME             null,
   constraint PK_CRMTB027 primary key (NU_CLIENTE, CO_CARTEIRA)
)
go

/*==============================================================*/
/* Table: CRMTB028_CLIENTE_RENDA                                */
/*==============================================================*/
create table DM.CRMTB028_CLIENTE_RENDA (
   NU_CLIENTE           NUMERIC(13)          not null,
   DT_APURACAO_RENDA    DATE                 null,
   NU_CPF_CNPJ          NUMERIC(14)          null,
   NU_TIPO_PESSOA       SMALLINT             null,
   IC_SEM_RENDA         CHAR(1)              null,
   IC_TIPO_RENDA        CHAR(1)              null,
   VR_RENDA_BRUTA       DECIMAL(18,2)        null,
   VR_RENDA_LIQUIDA     DECIMAL(18,2)        null,
   VR_RENDA_IRRF        DECIMAL(18,2)        null,
   DE_CARACTERIZACAO_RENDA CHAR(15)          null,
   IC_RENDA_PRINCIPAL   CHAR(1)              null,
   IC_COMPROVACAO_RENDA_INFORMAL CHAR(1)     null,
   NU_SEQUENCIAL        SMALLINT             not null,
   CO_SISTEMA_ORIGEM    VARCHAR(100)         null,
   DH_POSICAO_LEGADO    DATETIME             null,
   DH_INGESTAO_SILDC    DATETIME             null,
   DH_INGESTAO_BASE_INTEGRADORA DATETIME     null,
   constraint PK_CRMTB028 primary key (NU_CLIENTE, NU_SEQUENCIAL)
)
go

/*==============================================================*/
/* Table: CRMTB029_CLIENTE_FATURAMENTO                          */
/*==============================================================*/
create table DM.CRMTB029_CLIENTE_FATURAMENTO (
   NU_CLIENTE           NUMERIC(13)          not null,
   DT_APURACAO_FATURAMENTO DATE              null,
   AA_REFERENCIA_FATURAMENTO NUMERIC(5)      not null,
   MM_REFERENCIA_FATURAMENTO NUMERIC(5)      null,
   NU_CPF_CNPJ          NUMERIC(14)          null,
   NU_SEQUENCIAL        SMALLINT             not null,
   NU_TIPO_PESSOA       SMALLINT             null,
   IC_PERIODICIDADE_FATURAMENTO CHAR(1)      null,
   IC_SEM_FATURAMENTO   CHAR(1)              null,
   VR_FATURAMENTO_PERIODO DECIMAL(18,2)      null,
   QT_MES_FATURAMENTO_ULT12MESES NUMERIC(5)     null,
   VR_FATURAMENTO_MEDIO_ULT12MESE DECIMAL(18,2) null,
   CO_SISTEMA_ORIGEM    VARCHAR(100)         null,
   DH_POSICAO_LEGADO    DATETIME             null,
   DH_INGESTAO_SILDC    DATETIME             null,
   DH_INGESTAO_BASE_INTEGRADORA DATETIME             null,
   constraint PK_CRMTB029 primary key (NU_CLIENTE, NU_SEQUENCIAL, AA_REFERENCIA_FATURAMENTO)
)
go

/*==============================================================*/
/* Table: CRMTB030_CLIENTE_CONTATO                              */
/*==============================================================*/
create table DM.CRMTB030_CLIENTE_CONTATO (
   NU_CLIENTE           NUMERIC(13)          not null,
   DT_APURACAO_CONTATO  DATE                 not null,
   NU_CPF_CNPJ          NUMERIC(14)          null,
   NU_TIPO_PESSOA       SMALLINT             null,
   NO_CLIENTE           VARCHAR(70)          null,
   CO_DDD               CHAR(10)             null,
   CO_NUMERO_TELEFONE   VARCHAR(50)          null,
   CO_EMAIL             VARCHAR(50)          null,
   IC_CELULAR           CHAR(1)              null,
   IC_TELEFONE_FIXO     CHAR(1)              null,
   IC_EMAIL             CHAR(1)              null,
   IC_CORRESPONDENCIA   CHAR(1)              null,
   IC_PROPAGANDA        CHAR(1)              null,
   CO_SISTEMA_ORIGEM    VARCHAR(100)         null,
   DH_POSICAO_LEGADO    DATETIME             null,
   DH_INGESTAO_SILDC    DATETIME             null,
   DH_INGESTAO_BASE_INTEGRADORA DATETIME     null,
   constraint PK_CRMTB030 primary key (NU_CLIENTE, DT_APURACAO_CONTATO)
)
go

/*==============================================================*/
/* Table: CRMTB031_CADASTRO_ENDERECO                            */
/*==============================================================*/
create table DM.CRMTB031_CADASTRO_ENDERECO (
   NU_CLIENTE           NUMERIC(13)          not null,
   NU_SEQUENCIAL_ENDERECO SMALLINT           not null,
   DT_APURACAO_ENDERECO DATE                 null,
   NU_CPF_CNPJ          NUMERIC(14)          null,
   NU_TIPO_PESSOA       SMALLINT             null,
   NO_CLIENTE           VARCHAR(70)          null,
   SG_TIPO_LOGRADOURO   CHAR(5)              null,
   DE_LOGRADOURO        VARCHAR(50)          null,
   CO_LOGRADOURO        VARCHAR(15)          null,
   DE_COMPLEMENTO       VARCHAR(53)          null,
   NO_BAIRRO            VARCHAR(40)          null,
   NO_MUNICIPIO         VARCHAR(35)          null,
   NU_CEP               NUMERIC(15)          null,
   SG_UF                CHAR(2)              null,
   NO_PAIS              VARCHAR(40)          null,
   IC_PROPAGANDA        CHAR(1)              null,
   NU_FINALIDADE        NUMERIC(5)           null,
   IC_CORRESPONDENCIA   CHAR(1)              null,
   SG_TIPO_IMOVEL       CHAR(5)              null,
   IC_TIPO_ENDERECO     CHAR(1)              null,
   IC_VALIDO_POSTAGEM   CHAR(1)              null,
   IC_ENDERECO_COMPROVADO CHAR(1)            null,
   CO_TIPO_IMOVEL       VARCHAR(15)          null,
   IC_ENDERECO_PADRAO   CHAR(1)              null,
   DE_MES_ANO_INICIO_ENDERECO NUMERIC(5)     null,
   DE_MES_ANO_FIM_ENDERECO NUMERIC(5)        null,
   CO_SISTEMA_ORIGEM    VARCHAR(100)         null,
   DH_POSICAO_LEGADO    DATETIME             null,
   DH_INGESTAO_SILDC    DATETIME             null,
   DH_INGESTAO_BASE_INTEGRADORA DATETIME     null,
   constraint PK_CRMTB031 primary key (NU_CLIENTE, NU_SEQUENCIAL_ENDERECO)
)
go

/*==============================================================*/
/* Table: CRMTB032_CLIENTE_DOCUMENTO                            */
/*==============================================================*/
create table DM.CRMTB032_CLIENTE_DOCUMENTO (
   NU_CLIENTE           NUMERIC(13)          not null,
   NU_SEQUENCIAL_DOCUMENTO SMALLINT             not null,
   NU_TIPO_DOCUMENTO    NUMERIC(5)           null,
   DT_APURACAO_DOCUMENTO DATE                 null,
   NU_CPF_CNPJ          NUMERIC(14)          null,
   NU_TIPO_PESSOA       SMALLINT             null,
   CO_DOCUMENTO         VARCHAR(16)          null,
   IC_SITUACAO_DOCUMENTO CHAR(1)              null,
   IC_SITUACAO_CPF      CHAR(2)              null,
   NU_ORGAO_EMISSOR     NUMERIC(10)          null,
   SG_UF                CHAR(2)              null,
   DT_EMISSAO_DOCUMENTO DATE                 null,
   DT_INICIO_VALIDADE_DOCUMENTO DATE                 null,
   DT_FIM_VALIDADE_DOCUMENTO DATE                 null,
   IC_DOCUMENTO_PRINCIPAL CHAR(1)              null,
   DE_COMPLEMENTO_DOCUMENTO VARCHAR(20)          null,
   IC_TIPO_TITULARIDADE CHAR(1)              null,
   CO_SISTEMA_ORIGEM    VARCHAR(100)         null,
   DH_POSICAO_LEGADO    DATETIME             null,
   DH_INGESTAO_SILDC    DATETIME             null,
   DH_INGESTAO_BASE_INTEGRADORA DATETIME             null,
   constraint PK_CRMTB032 primary key (NU_CLIENTE, NU_SEQUENCIAL_DOCUMENTO)
)
go

/*==============================================================*/
/* Table: CRMTB033_CLIENTE_PATRIMONIO                           */
/*==============================================================*/
create table DM.CRMTB033_CLIENTE_PATRIMONIO (
   NU_CLIENTE           NUMERIC(13)          not null,
   NU_SEQUENCIAL_PATRIMONIO SMALLINT             not null,
   NU_CPF_CNPJ          NUMERIC(14)          null,
   NU_TIPO_PESSOA       SMALLINT             null,
   IC_DECLARACAO_PATRIMNIO CHAR(1)              null,
   DT_DECLARACAO_PATRIMONIO DATE                 null,
   NU_TIPO_PATRIMONIO   NUMERIC(5)           null,
   IC_SUBTIPO_PATRIMONIO CHAR(2)              null,
   VR_PATRIMONIO        DECIMAL(18,2)        null,
   IC_SITUACAO_PATRIMONIO CHAR(1)              null,
   VR_PRESTACAO_PATRIMONIO DECIMAL(18,2)        null,
   DT_AQUISICAO_PATRIMONIO DATE                 null,
   DT_PREVISAO_QUITACAO_PATRIMONI DATE                 null,
   DT_APURACAO_PATRIMONIO DATE                 null,
   IC_POSSUI_ONUS       CHAR(1)              null,
   IC_POSSUI_LOCACAO    CHAR(1)              null,
   NO_MARCA_VEICULO     VARCHAR(30)          null,
   DE_MODELO_VEICULO    VARCHAR(256)         null,
   AA_FABRICACAO_VEICULO NUMERIC(5)           null,
   CO_PLACA_VEICULO     CHAR(8)              null,
   CO_SISTEMA_ORIGEM    VARCHAR(100)         null,
   DH_POSICAO_LEGADO    DATETIME             null,
   DH_INGESTAO_SILDC    DATETIME             null,
   DH_INGESTAO_BASE_INTEGRADORA DATETIME             null,
   constraint PK_CRMTB033 primary key (NU_CLIENTE, NU_SEQUENCIAL_PATRIMONIO)
)
go

/*==============================================================*/
/* Table: CRMTB034_CLIENTE_CONTRATO                             */
/*==============================================================*/
create table DM.CRMTB034_CLIENTE_CONTRATO (
   NU_CLIENTE           NUMERIC(13)          not null,
   NU_CPF_CNPJ          NUMERIC(14)          null,
   NU_TIPO_PESSOA       SMALLINT             null,
   CO_CONTRATO          VARCHAR(26)          not null,
   NU_PRODUTO           SMALLINT             not null,
   NO_PRODUTO           VARCHAR(120)         null,
   DT_INICIO_CONTRATO   DATE                 null,
   DT_FIM_CONTRATO      DATE                 null,
   NU_UNIDADE_CONTRATO  SMALLINT             null,
   IC_SITUACAO_CONTRATO CHAR(1)              null,
   DT_SITUACAO_CONTRATO DATE                 null,
   NU_SISTEMA_PRODUTO   NUMERIC(5)           null,
   CO_SISTEMA_ORIGEM    VARCHAR(100)         null,
   DH_POSICAO_LEGADO    DATETIME             null,
   DH_INGESTAO_SILDC    DATETIME             null,
   DH_INGESTAO_BASE_INTEGRADORA DATETIME     null,
   constraint PK_CRMTB034 primary key (NU_CLIENTE,CO_CONTRATO,NU_PRODUTO)
)
go

/*==============================================================*/
/* Table: CRMTB035_COMPOSICAO_SOCIETARIA                        */
/*==============================================================*/
create table DM.CRMTB035_COMPOSICAO_SOCIETARIA (
   NU_CLIENTE           NUMERIC(13)          not null,
   CO_CPF_CNPJ_SOCIO    VARCHAR(16)          not null,
   NU_CNPJ              NUMERIC(14)          null,
   NU_TIPO_PESSOA       SMALLINT             null,
   DT_CONTRATO_SOCIAL   DATE                 null,
   IC_BENEFICIARIO_FINAL CHAR(1)              null,
   NU_TIPO_PESSOA_SOCIO NUMERIC(5)           null,
   PC_PARTICIPACAO_SOCIETARIA DECIMAL(7,4)         null,
   CO_SISTEMA_ORIGEM    VARCHAR(100)         null,
   DH_POSICAO_LEGADO    DATETIME             null,
   DH_INGESTAO_SILDC    DATETIME             null,
   DH_INGESTAO_BASE_INTEGRADORA DATETIME             null,
   constraint PK_CRMTB035 primary key (NU_CLIENTE, CO_CPF_CNPJ_SOCIO)
)
go

/*==============================================================*/
/* Table: CRMTB036_CMPSO_ADMINISTRATIVA                         */
/*==============================================================*/
create table DM.CRMTB036_CMPSO_ADMINISTRATIVA (
   NU_CLIENTE           NUMERIC(13)          not null,
   CO_CPF_CNPJ_PESSOA_FUNCAO VARCHAR(16)          not null,
   NU_CNPJ              NUMERIC(14)          null,
   NU_TIPO_PESSOA       SMALLINT             null,
   DT_COMPOSICAO_ADMINISTRATIVA DATE                 null,
   DE_FUNCAO_PESSOA     VARCHAR(50)          null,
   CO_SISTEMA_ORIGEM    VARCHAR(100)         null,
   DH_POSICAO_LEGADO    DATETIME             null,
   DH_INGESTAO_SILDC    DATETIME             null,
   DH_INGESTAO_BASE_INTEGRADORA DATETIME             null,
   constraint PK_CRMTB036 primary key (NU_CLIENTE, CO_CPF_CNPJ_PESSOA_FUNCAO)
)
go

/*==============================================================*/
/* Table: CRMTB038_TRANSACAO_FATURA                             */
/*==============================================================*/
create table DM.CRMTB038_TRANSACAO_FATURA (
   NU_CLIENTE           NUMERIC(13)          not null,
   CO_CHPRAS            VARCHAR(11)
           not null,
   NU_FATURA            INT                  not null,
   NU_TRANSACAO         VARCHAR(19)          not null,
   NU_CPF_CNPJ          NUMERIC(14)          null,
   NU_TIPO_PESSOA       SMALLINT             null,
   NU_CARTAO_CLIENTE    NUMERIC(12)
           not null,
   NO_CARTAO            VARCHAR(35)
           null,
   NU_TIPO_TRANSACAO    NUMERIC(4)           null,
   NO_TIPO_TRANSACAO    VARCHAR(30)          null,
   DT_TRANSACAO         DATE                 null,
   VR_TRANSACAO         DECIMAL(19,2)        null,
   NU_MOEDA_TRANSACAO   NUMERIC(3)           null,
   NO_MOEDA_TRANSACAO   VARCHAR(5)           null,
   QT_PARCELA           NUMERIC(9)           null,
   NU_ESTABELECIMENTO_COMERCIAL NUMERIC(4)           null,
   CO_SISTEMA_ORIGEM    VARCHAR(100)         null,
   DH_POSICAO_LEGADO    DATETIME             null,
   DH_INGESTAO_SILDC    DATETIME             null,
   DH_INGESTAO_BASE_INTEGRADORA DATETIME             null,
   constraint PK_CRMTB038 primary key (NU_CLIENTE, CO_CHPRAS, NU_CARTAO_CLIENTE, NU_FATURA, NU_TRANSACAO)
)
go

/*==============================================================*/
/* Table: CRMTB039_EXTRATO_MOVIMENTO                            */
/*==============================================================*/
create table DM.CRMTB039_EXTRATO_MOVIMENTO (
   NU_CLIENTE           NUMERIC(13)          not null,
   NU_AGENCIA           NUMERIC(5)
            not null,
   NU_OPERACAO          NUMERIC(5)
            not null,
   NU_CONTA             NUMERIC(17)          not null,
   DT_MOVIMENTO_EXTRATO DATE                 not null,
   NU_CPF_CNPJ          NUMERIC(14)          null,
   NU_TIPO_PESSOA       SMALLINT             null,
   DT_REFERENCIA_EXTRATO DATE                 not null,
   NU_DOCUMENTO         NUMERIC(8)           null,
   VR_LANCAMENTO        DECIMAL(15,2)        null,
   CO_TIPO_LANCAMENTO   CHAR(2)              null,
   DE_MOVIMENTO         VARCHAR(100)         null,
   VR_SALDO             NUMERIC(15)          null,
   NU_TIPO_DEPOSITO     NUMERIC(2)           null,
   NU_CODIGO_LANCAMENTO NUMERIC(2)           null,
   NU_TIPO_TD_CL        NUMERIC(2)           null,
   CO_FUNCAO_TRANSACAO  CHAR(2)              null,
   CO_SUBFUNCAO_TRANSACAO CHAR(2)              null,
   CO_IDENTIFICADOR_FUNCAO CHAR(17)             null,
   CO_CANAL_TRANSACAO   CHAR(2)              null,
   CO_SISTEMA_ORIGEM    VARCHAR(100)         null,
   DH_POSICAO_LEGADO    DATETIME             null,
   DH_INGESTAO_SILDC    DATETIME             null,
   DH_INGESTAO_BASE_INTEGRADORA DATETIME             null,
   constraint PK_CRMTB039 primary key (NU_CLIENTE, NU_AGENCIA, NU_OPERACAO, NU_CONTA, DT_REFERENCIA_EXTRATO, DT_MOVIMENTO_EXTRATO)
)
go

/*==============================================================*/
/* Table: CRMTB040_SIAPC_662                                    */
/*==============================================================*/
create table DM.CRMTB040_SIAPC_662 (
   NU_CLIENTE           NUMERIC(13)          not null,
   NU_CPF_CNPJ          NUMERIC(14)          null,
   NU_TIPO_PESSOA       SMALLINT             null,
   MM_MOVIMENTO         SMALLINT             null,
   AA_MOVIMENTO         SMALLINT             null,
   DE_TIPO_PESSOA       VARCHAR(50)          null,
   NU_SISTEMA           SMALLINT             null,
   NU_UNIDADE_CONCESSORA SMALLINT             null,
   NO_UNIDADE_CONCESSORA VARCHAR(35)          null,
   NU_PRODUTO           SMALLINT             null,
   NO_PRODUTO           VARCHAR(20)          null,
   CO_CONTRATO          CHAR(20)             null,
   CO_TIPO_CONTRATO     CHAR(20)             null,
   NO_TIPO_CONTRATO     CHAR(30)             null,
   NU_SITUACAO_CONTRATO SMALLINT             null,
   NO_SITUACAO_CONTRATO CHAR(40)             null,
   PZ_CONTRATO          INTEGER              null,
   DT_CONCESSAO_CONTRATO DATE                 null,
   PZ_REMANESCENTE_CONTRATO INT                  null,
   PZ_ATRASO            INT                  null,
   VR_BASE_CALCULO      DECIMAL(15,2)        null,
   VR_PROVISIONADO      DECIMAL(15,2)        null,
   NU_AVALIACAO         NUMERIC(10)          null,
   SG_CONCEITO_AVALIACAO CHAR(3)              null,
   NU_SITUACAO_CONCEITO_AVALIACAO SMALLINT             null,
   NO_SITUACAO_CONCEITO_AVALIACAO VARCHAR(50)          null,
   SG_CONCEITO_CLIENTE  CHAR(3)              null,
   SG_CONCEITO_CLIENTE_PURO CHAR(3)              null,
   SG_CONCEITO_CONTRATO CHAR(3)              null,
   SG_CONCEITO_PROVISIONAMENTO CHAR(3)              null,
   IC_PROVISIONAMENTO   CHAR(1)              null,
   DT_PRIMEIRA_PRESTACAO_NAO_PAGA DATE                 null,
   NU_COSIF_PESSOA      SMALLINT             null,
   NU_MODALIDADE        SMALLINT             null,
   NO_MODALIDADE        CHAR(50)             null,
   NU_SUBMODALIDADE     SMALLINT             null,
   NO_SUBMODALIDADE     CHAR(50)             null,
   NU_PORTE_CLIENTE     SMALLINT             null,
   DE_TIPO_PORTE_CLIENTE VARCHAR(20)          null,
   NU_TIPO_IDENTIFICADOR SMALLINT             null,
   NU_TIPO_COBRANCA     SMALLINT             null,
   NU_INDICADOR_ECONOMICO SMALLINT             null,
   NO_INDICADOR_ECONOMICO CHAR(40)             null,
   IC_GARANTIA_REAL     CHAR(1)              null,
   NU_ENTIDADE_CONTABIL SMALLINT             null,
   IC_TRANSFERENCIA_COMPENSACAO CHAR(1)              null,
   DT_TRANSFERENCIA_COMPENSACAO DATE                 null,
   TS_PROCESSAMENTO     TIMESTAMP            null,
   NU_GRUPO_PROVISAO    SMALLINT             null,
   VR_DIVIDA_VENCIDA    DECIMAL(15,2)        null,
   VR_DIVIDA_VINCENDA   DECIMAL(15,2)        null,
   VR_RENDA_VENCIDA     DECIMAL(15,2)        null,
   VR_RENDA_VINCENDA    DECIMAL(15,2)        null,
   VR_DIVIDA_VINCENDA_ATE_30 DECIMAL(15,2)        null,
   VR_DIVIDA_VINCENDA_31_60 DECIMAL(15,2)        null,
   VR_DIVIDA_VINCENDA_61_90 DECIMAL(15,2)        null,
   VR_DIVIDA_VINCENDA_91_180 DECIMAL(15,2)        null,
   VR_DIVIDA_VINCENDA_181_360 DECIMAL(15,2)        null,
   VR_DIVIDA_VINCENDA_361_720 DECIMAL(15,2)        null,
   VR_DIVIDA_VINCENDA_721_1080 DECIMAL(15,2)        null,
   VR_DIVIDA_VINCENDA_1081_1440 DECIMAL(15,2)        null,
   VR_DIVIDA_VINCENDA_1441_1800 DECIMAL(15,2)        null,
   VR_DIVIDA_VINCENDA_1801_5400 DECIMAL(15,2)        null,
   VR_DIVIDA_VINCENDA_MAIOR_5400 DECIMAL(15,2)        null,
   VR_VINCENDA_INDETERMINADA DECIMAL(15,2)        null,
   VR_DIVIDA_VENCIDA_1_14 DECIMAL(15,2)        null,
   VR_DIVIDA_VENCIDA_15_30 DECIMAL(15,2)        null,
   VR_DIVIDA_VENCIDA_31_60 DECIMAL(15,2)        null,
   VR_DIVIDA_VENCIDA_61_90 DECIMAL(15,2)        null,
   VR_DIVIDA_VENCIDA_91_120 DECIMAL(15,2)        null,
   VR_DIVIDA_VENCIDA_121_150 DECIMAL(15,2)        null,
   VR_DIVIDA_VENCIDA_151_180 DECIMAL(15,2)        null,
   VR_DIVIDA_VENCIDA_181_240 DECIMAL(15,2)        null,
   VR_DIVIDA_VENCIDA_241_300 DECIMAL(15,2)        null,
   VR_DIVIDA_VENCIDA_301_360 DECIMAL(15,2)        null,
   VR_DIVIDA_VENCIDA_361_540 DECIMAL(15,2)        null,
   VR_DIVIDA_VENCIDA_MAIOR_540 DECIMAL(15,2)        null,
   VR_PREJUIZO_EXERCICIO_ANTERIOR DECIMAL(15,2)        null,
   VR_PREJUIZO_EXERCICIO_ATUAL DECIMAL(15,2)        null,
   VR_PREJUIZO_MAIS_48_MESES DECIMAL(15,2)        null,
   VR_CREDITO_LIBERACAO_ATE_360 DECIMAL(15,2)        null,
   VR_CREDITO_LIBERACAO_MAIS_360 DECIMAL(15,2)        null,
   LIMITE_CREDITO_ATE_360 DECIMAL(15,2)        null,
   VR_LIMITE_CREDITO_MAIS_360 DECIMAL(15,2)        null,
   SG_CONCEITO_CONTAMINADO CHAR(3)              null,
   SG_CONCEITO_CONGLOMERADO CHAR(3)              null,
   SG_CONCEITO_ARRASTO  CHAR(3)              null,
   IC_TIPO_PESSOA_CONGLOMERADO SMALLINT             null,
   DE_TIPO_PESSOA_CONGLOMERADO VARCHAR(50)          null,
   NU_CNPJ_CONGLOMERADO DECIMAL(14)          null,
   CO_SISTEMA_ORIGEM    VARCHAR(100)         null,
   DH_POSICAO_LEGADO    DATETIME             null,
   DH_INGESTAO_SILDC    DATETIME             null,
   DH_INGESTAO_BASE_INTEGRADORA DATETIME             null,
   constraint PK_CRMTB040 primary key (NU_CLIENTE)
)
go

/*==============================================================*/
/* Table: CRMTB041_NCR_ANEXO1                                   */
/*==============================================================*/
create table DM.CRMTB041_NCR_ANEXO1 (
   NU_CLIENTE           NUMERIC(13)          not null,
   NU_CPF_CNPJ          NUMERIC(14)          null,
   NU_TIPO_PESSOA       SMALLINT             null,
   MM_MOVIMENTO         SMALLINT             null,
   AA_MOVIMENTO         SMALLINT             null,
   NU_SISTEMA           SMALLINT             null,
   NU_PRODUTO           SMALLINT             null,
   NO_PRODUTO           VARCHAR(20)          null,
   NU_UNIDADE_CONCESSORA SMALLINT             null,
   NO_UNIDADE_CONCESSORA VARCHAR(35)          null,
   CO_CONTRATO          CHAR(20)             null,
   DE_TIPO_PESSOA       VARCHAR(50)          null,
   NO_TOMADOR_PRINCIPAL CHAR(50)             null,
   PZ_CONTRATO          INTEGER              null,
   DT_CONCESSAO         DATE                 null,
   CO_AVALIACAO_RISCO   DECIMAL(10)          null,
   NU_TIPO_CONTRATO     CHAR(20)             null,
   NO_TIPO_CONTRATO     CHAR(30)             null,
   NU_TIPO_SITUACAO_CONTRATO SMALLINT             null,
   NO_TIPO_SITUACAO_CONTRATO CHAR(40)             null,
   NU_NATUREZA_OPERACAO SMALLINT             null,
   NO_NATUREZA_OPERACAO CHAR(50)             null,
   NU_MODALIDADE_PRODUTO SMALLINT             null,
   NO_MODALIDADE_PRODUTO CHAR(50)             null,
   NU_SUB_MODALIDADE_PRODUTO SMALLINT             null,
   NO_SUB_MODALIDADE_PRODUTO CHAR(50)             null,
   NU_TIPO_ORIGEM_RECURSO SMALLINT             null,
   NO_TIPO_ORIGEM_RECURSO CHAR(50)             null,
   NU_ORIGEM_RECURSO    SMALLINT             null,
   NO_ORIGEM_RECURSO    CHAR(50)             null,
   QT_PARCELA           INT                  null,
   VR_CONTRATO          DECIMAL(15, 2)       null,
   NU_CARACTERISTICA_ESPECIAL SMALLINT             null,
   NO_CARACTERISTICA_ESPECIAL CHAR(50)             null,
   PZ_REMANESCENTE      INTEGER              null,
   PZ_ATRASO            INTEGER              null,
   VR_PRESTACAO         DECIMAL(15, 2)       null,
   VR_DIVIDA_VENCIDA    DECIMAL(15,2)        null,
   VR_DIVIDA_VINCENDA   DECIMAL(15,2)        null,
   VR_RENDA_VENCIDA     DECIMAL(15,2)        null,
   VR_RENDA_VINCENDA    DECIMAL(15,2)        null,
   VR_PREJUIZO_EXERCICIO_ANTERIOR DECIMAL(15,2)        null,
   VR_PREJUIZO_EXERCICIO_ATUAL DECIMAL(15,2)        null,
   VR_PREJUIZO_EXERCICIO_MAIS_48 DECIMAL(15,2)        null,
   VR_CREDITO_A_LIBERAR_360 DECIMAL(15,2)        null,
   VR_CREDITO_A_LIBERAR_MAIS_360 DECIMAL(15,2)        null,
   VR_LIMITE_CRDTO_VENCIMENTO_360 DECIMAL(15,2)        null,
   VR_LIMITE_CRDTO_VNCMO_MAIS_360 DECIMAL(15,2)        null,
   VR_DIVIDA_VINCENDA_TOTAL DECIMAL(18, 2)       null,
   VR_DIVIDA_VENCIDA_TOTAL DECIMAL(18, 2)       null,
   NU_TIPO_VARIACAO_CAMBIAL SMALLINT             null,
   DT_VENCIMENTO_ULTIMA_PARCELA DATE                 null,
   DT_PROXIMO_VENCIMENTO DATE                 null,
   DT_PRIMEIRA_PRESTACAO_NAO_PAGA DATE                 null,
   NU_TIPO_CONTROLE     SMALLINT             null,
   IC_AUTORIZACAO       CHAR(1)              null,
   NU_PORTE_CLIENTE     SMALLINT             null,
   DE_TIPO_PORTE        VARCHAR(20)          null,
   IC_MOEDA_ESTRANGEIRA CHAR(1)              null,
   PC_INDEXADOR         DECIMAL(11,7)        null,
   TX_JUROS             DECIMAL(8, 5)        null,
   TX_EFETIVA_ANUAL     DECIMAL(11, 7)       null,
   NU_INDICADOR_ECONOMICO SMALLINT             null,
   NO_INDICADOR_ECONOMICO CHAR(40)             null,
   DT_ULTIMA_RENEGOCIACAO DATE                 null,
   QT_RENEGOCIACAO      DECIMAL(3)           null,
   VR_DIVIDA_VINCENDA_30 DECIMAL(15,2)        null,
   VR_DIVIDA_VENCIDA_1_14 DECIMAL(15,2)        null,
   CO_SISTEMA_ORIGEM    VARCHAR(100)         null,
   DH_POSICAO_LEGADO    DATETIME             null,
   DH_INGESTAO_SILDC    DATETIME             null,
   DH_INGESTAO_BASE_INTEGRADORA DATETIME             null,
   constraint PK_CRMTB041 primary key (NU_CLIENTE)
)
go

/*==============================================================*/
/* Table: CRMTB049_EXTRATO_MOVIMENTACAO                         */
/*==============================================================*/
create table DM.CRMTB049_EXTRATO_MOVIMENTACAO (
   NU_CLIENTE           NUMERIC(13)          not null,
   NU_CONTRATO          CHAR(20)             not null,
   NU_CNPJ_CPF_CLIENTE  NUMERIC(14)          null,
   IC_TIPO_PESSOA       CHAR(1)              null,
   DE_TIPO_PESSOA       VARCHAR(50)          null,
   NU_PRODUTO           SMALLINT             null,
   NO_PRODUTO           VARCHAR(100)         null,
   CO_MODALIDADE_OPERACAO VARCHAR(3)
            null,
   NO_MODALIDADE_OPERACAO VARCHAR(100)         null,
   CO_SITUACAO_CONTRATO CHAR(1)
               null,
   CO_SITUACAO_EXTRATO  CHAR(1)
               null,
   NU_PARCELA           SMALLINT             not null,
   IC_TIPO_PARCELA      CHAR(1)              null,
   NO_PARCELA           VARCHAR(100)         null,
   DT_GERACAO_PARCELA   DATE                 null,
   DT_EMISSAO_PARCELA   DATE                 null,
   DT_VENCIMENTO_EXTRATO DATE                 null,
   DT_RECEBIMENTO_EXTRATO DATE                 null,
   VR_DEVIDO_PARCELA    DECIMAL(15,2)        null,
   VR_RECEBIDO_PARCELA  DECIMAL(15,2)        null,
   NU_NOSSO_NUMERO      NUMERIC(14)          null,
   QT_RECOBRANCA        SMALLINT             null,
   IC_SITUACAO_PARCELA  CHAR(1)              null,
   NO_SITUACAO_PARCELA  VARCHAR(100)         null,
   IC_TIPO_EVENTO_PARCELA CHAR(1)              null,
   VR_EVENTO_PARCELA    DECIMAL(15,2)        null,
   VR_MORA_ATRASO       DECIMAL(15,2)        null,
   VR_MULTA_ATRASO      DECIMAL(15,2)        null,
   VR_JURO_ATRASO       DECIMAL(15,2)        null,
   VR_ENCARGO_DISPENSADO DECIMAL(15,2)        null,
   QT_PARCELA_ATRASO    SMALLINT             null,
   QT_DIA_ATRASO        SMALLINT             null,
   VR_ATRASO            DECIMAL(15,2)        null,
   DT_ULTIMA_PARCELA_PRORROGADA DATE                 null,
   QT_PARCELA_PRORROGADA SMALLINT             null,
   NU_REEMBOLSO         NUMERIC(14)          null,
   DT_REEMBOLSO         DATE                 null,
   VR_REEMBOLSO         DECIMAL(15,2)        null,
   PZ_PRORROGACAO_CONTRATO SMALLINT             null,
   VR_PRORROGACAO_CONTRATO DECIMAL(15,2)        null,
   QT_PRORROGACAO_CONTRATO SMALLINT             null,
   IC_SITUACAO_DEVEDOR  CHAR(1)              null,
   DE_SITUACAO_DEVEDOR  VARCHAR(50)          null,
   CO_FORMA_PAGAMENTO   SMALLINT             null,
   NO_FORMA_PAGAMENTO   VARCHAR(100)         null,
   CO_SISTEMA_ORIGEM    VARCHAR(100)         null,
   DH_POSICAO_LEGADO    DATETIME             null,
   DH_INGESTAO_SILDC    DATETIME             null,
   DH_INGESTAO_BASE_INTEGRADORA DATETIME             null,
   constraint PK_CRMTB049 primary key (NU_CLIENTE, NU_CONTRATO, NU_PARCELA)
)
go

/*==============================================================*/
/* Table: CRMTB050_PORTABILIDADE                                */
/*==============================================================*/
create table DM.CRMTB050_PORTABILIDADE (
   NU_CLIENTE           NUMERIC(13)          not null,
   NU_CONTRATO          CHAR(20)             not null,
   NU_PORTABILIDADE_SIGEC DECIMAL(18, 0)       not null,
   CO_CNPJ_CPF_CLIENTE  CHAR(14)             null,
   NU_PORTABILIDADE_FEBRABAN CHAR(21)             null,
   DT_SITUACAO_CONTRATO DATE                 null,
   NU_LINHA_CREDITO     DECIMAL(4, 0)        null,
   CO_SITUACAO_PORTABILIDADE CHAR(4)              null,
   DE_SITUACAO_PORTABILIDADE CHAR(50)             null,
   NU_ERRO_PORTABILIDADE CHAR(8)              null,
   DE_ERRO_PORTABILIDADE CHAR(50)             null,
   IC_TIPO_PORTABILIDADE CHAR(1)              null,
   CO_MATRICULA_CADASTRO CHAR(10)             null,
   CO_IDENTIFICADOR_CANAL SMALLINT             null,
   NO_CANAL_COMUNICACAO CHAR(50)             null,
   CO_SITUACAO_CONTRATACAO SMALLINT             null,
   DT_RFRNA_SALDO_DEVEDOR_CONTABI DATE                 null,
   VR_REFERENCIA_SALDO_DEVEDOR DECIMAL(17, 2)       null,
   NU_TIPO_ENTIDADE_CONSIGNANTE DECIMAL(4,0)         null,
   DE_TIPO_ENTIDADE_CONSIGNANTE CHAR(50)             null,
   NU_TIPO_INDICE_REMUNERACAO DECIMAL(4, 0)        null,
   DE_TIPO_INDICE_REMUNERACAO CHAR(50)             null,
   NU_TIPO_TAXA         DECIMAL(4, 0)        null,
   DE_TIPO_TAXA         CHAR(50)             null,
   NU_TIPO_REGIME_AMORTIZACAO DECIMAL(4, 0)        null,
   DE_TIPO_REGIME_AMORTIZACAO CHAR(50)             null,
   IC_TIPO_CLIENTE      CHAR(1)              null,
   DE_TIPO_CLIENTE      CHAR(50)             null,
   NU_TIPO_CONTRATO     CHAR(4)              null,
   DE_TIPO_CONTRATO     CHAR(50)             null,
   IC_TIPO_FLUXO_PAGAMENTO CHAR(1)              null,
   DE_TIPO_FLUXO_PAGAMENTO CHAR(50)             null,
   CO_IF_PROPONENTE     CHAR(8)              null,
   NU_CONTRATO_ORIGINAL CHAR(40)             null,
   DE_CONTRATO_ORIGINAL VARCHAR(100)         null,
   CO_CNPJ_IF_ORIGINAL  CHAR(8)              null,
   DT_CONTRATACAO_OPERACAO DATE                 null,
   VR_TAXA_JUROS_NOMINAL_MENSAL DECIMAL(12, 5)       null,
   VR_TAXA_JUROS_EFETIVA_MENSAL DECIMAL(12, 5)       null,
   VR_TAXA_CET_MENSAL   DECIMAL(12, 5)       null,
   VR_IOF               DECIMAL(17, 2)       null,
   QT_TOTAL_PARCELA_CONTRATO DECIMAL(4, 0)        null,
   VR_FACE_PARCELA_CONTRATO DECIMAL(17, 2)       null,
   DT_VNCMO_PRMRA_PRCLA_CNTRO DATE                 null,
   DT_VNCMO_ULTMA_PRCLA_CNTRO DATE                 null,
   DT_VNCMO_PARCELA_IRREGULAR DATE                 null,
   VR_FACE_PARCELA_IRREGULAR DECIMAL(17, 2)       null,
   ED_LOGRADOURO_CARTA_PRTBE CHAR(50)             null,
   ED_COMPLEMENTO_CARTA_PRTBE CHAR(50)             null,
   NU_CARTA_PORTABILIDADE CHAR(9)              null,
   NO_CIDADE_CARTA_PORTABILIDADE CHAR(50)             null,
   SG_UF_CARTA_PORTABILIDADE CHAR(2)              null,
   NU_CEP_CARTA_PORTABILIDADE DECIMAL(8, 0)        null,
   CO_MATRICULA_NEGOCIADOR CHAR(10)             null,
   NU_AGENCIA_MOVIMENTO DECIMAL(4, 0)        null,
   NU_AVALIACAO_RISCO   DECIMAL(11, 0)       null,
   IC_SERVIDOR_EFETIVO  CHAR(1)              null,
   DE_SERVIDOR_EFETIVO  VARCHAR(100)         null,
   NU_MATRICULA_SERVIDOR_EFETIVO CHAR(20)             null,
   IC_TIPO_CORRESPONDENTE CHAR(2)              null,
   DE_TIPO_CORRESPONDENTE CHAR(2)              null,
   CO_CORRESPONDENTE    CHAR(11)             null,
   NO_CORRESPONDENTE    VARCHAR(100)         null,
   CO_MDLDE_OPERACAO_CONSIGNACAO CHAR(3)              null,
   NU_BANCO_CREDITO     SMALLINT             null,
   NU_AGENCIA_CREDITO   SMALLINT             null,
   NU_OPERACAO_CONTA_CREDITO SMALLINT             null,
   NO_OPERACAO_CREDITO  VARCHAR(100)         null,
   NU_CONTA_CORRENTE_CREDITO DECIMAL(13, 0)       null,
   CO_SISTEMA_ORIGEM    VARCHAR(100)         null,
   DH_POSICAO_LEGADO    DATETIME             null,
   DH_INGESTAO_SILDC    DATETIME             null,
   DH_INGESTAO_BASE_INTEGRADORA DATETIME             null,
   constraint PK_CRMTB050 primary key (NU_CLIENTE, NU_CONTRATO, NU_PORTABILIDADE_SIGEC)
)
go

/*==============================================================*/
/* Table: CRMTB052_CADASTRO_POSITIVO                            */
/*==============================================================*/
create table DM.CRMTB052_CADASTRO_POSITIVO (
   NU_CLIENTE           NUMERIC(13)          not null,
   NU_CPF_CNPJ          NUMERIC(14)          null,
   NU_TIPO_PESSOA       SMALLINT             null,
   DE_TIPO_PESSOA       VARCHAR(50)          null,
   DT_ABERTURA_CONTA    DATE                 null,
   TS_CANCELAMENTO_REABERTURA TIMESTAMP            null,
   NU_CONTRATO_OPERACAO CHAR(20)             null,
   NU_CONTRATO_ATIVO_ROTATIVO CHAR(29)             null,
   NU_CONTRATO_ATIVO_PARCELADO CHAR(29)             null,
   NU_CONTRATO_CARTAO   CHAR(29)             null,
   IC_TIPO_CONTRATO     CHAR(1)              null,
   DE_TIPO_CONTRATO     VARCHAR(17)          null,
   VR_CONTRATO          DECIMAL(18, 2)       null,
   IC_SITUACAO_CONTRATO CHAR(1)              null,
   NO_SITUACAO_CONTRATO CHAR(100)            null,
   NU_TIPO_CONTESTACAO  NUMERIC(10)          null,
   DE_TIPO_CONTESTACAO  CHAR(15)             null,
   DE_JUSTIFICATIVA_CONTESTACAO VARCHAR(480)         null,
   IC_CONTESTACAO_ACATADA CHAR(50)             null,
   NU_CNPJ_BIRO         DECIMAL(14, 0)       null,
   NO_BIRO_GESTOR       CHAR(50)             null,
   CO_SISTEMA_ORIGEM    VARCHAR(100)         null,
   DH_POSICAO_LEGADO    DATETIME             null,
   DH_INGESTAO_SILDC    DATETIME             null,
   DH_INGESTAO_BASE_INTEGRADORA DATETIME             null,
   constraint PK_CRMTB052 primary key (NU_CLIENTE)
)
go

/*==============================================================*/
/* Table: CRMTB060_PROPOSTA_IMOBILIARIO                         */
/*==============================================================*/
create table DM.CRMTB060_PROPOSTA_IMOBILIARIO (
   NU_CLIENTE           NUMERIC(13)          not null,
   NU_CPF_CNPJ          NUMERIC(14)          null,
   NU_TIPO_PESSOA       SMALLINT             null,
   DE_TIPO_PARTICIPACAO VARCHAR(50)          null,
   NO_PROPONENTE        VARCHAR(100)         null,
   DT_NASCIMENTO_PROPONENTE DATE             null,
   IC_SEXO_PROPONENTE   CHAR(1)              null,
   VR_RENDA_PROPONENTE  DECIMAL(19,2)        null,
   DE_ESTADO_CIVIL_PROPONENTE VARCHAR(50)    null,
   CO_CEP_PROPONENTE    CHAR(8)              null,
   NO_MUNICIPIO_PROPONENTE VARCHAR(50)       null,
   SG_UF_PROPONENTE     CHAR(2)              null,
   CO_AVALIACAO_PROPONENTE CHAR(5)           null,
   CO_RATING_PROPONENTE CHAR(5)              null,
   CO_AVALIACAO_OPERACAO CHAR(5)             null,
   CO_CONCEITO_OPERACAO CHAR(5)              null,
   NU_PROPOSTA          NUMERIC(10)          null,
   DT_CRIACAO_PROPOSTA  DATE                 null,
   NO_SITUACAO_PROPOSTA VARCHAR(50)          null,
   NO_ETAPA_PROPOSTA    VARCHAR(50)          null,
   NO_CANAL_PROPOSTA    VARCHAR(50)          null,
   NU_UNIDADE_PROPOSTA  SMALLINT             null,
   CO_CORRESPONDENTE_PROPOSTA CHAR(10)       null,
   NO_TIPO_IMOVEL       VARCHAR(50)          null,
   NO_SITUACAO_IMOVEL   VARCHAR(50)          null,
   NO_MUNICIPIO_IMOVEL  VARCHAR(50)          null,
   SG_UF_IMOVEL         CHAR(2)              null,
   VR_IMOVEL            DECIMAL(19,2)        null,
   VR_ENTRADA           DECIMAL(19,2)        null,
   VR_FINANCIAMENTO     DECIMAL(19,2)        null,
   PZ_CONTRATACAO       SMALLINT             null,
   NO_REGIME_CONTRATACAO VARCHAR(50)         null,
   DT_PREVISAO_ASSINATURA DATE               null,
   NU_CONTRATO          NUMERIC(10)          null,
   CO_SISTEMA_ORIGEM    VARCHAR(100)         null,
   DH_POSICAO_LEGADO    DATETIME             null,
   DH_INGESTAO_SILDC    DATETIME             null,
   DH_INGESTAO_BASE_INTEGRADORA DATETIME     null,
   constraint PK_CRMTB060 primary key (NU_CLIENTE)
)
go

/*==============================================================*/
/* Table: CRMTB061_CONTRATO_IMOBILIARIO                         */
/*==============================================================*/
create table DM.CRMTB061_CONTRATO_IMOBILIARIO (
   NU_CLIENTE           NUMERIC(13)          not null,
   NU_CPF_CNPJ          NUMERIC(14)          null,
   NU_TIPO_PESSOA       SMALLINT             null,
   DE_TIPO_PARTICIPACAO VARCHAR(50)          null,
   PC_PARTICIPACAO      DECIMAL(5,3)         null,
   NU_PROPOSTA          NUMERIC(10)          null,
   CO_AVALIACAO_SIRIC   DECIMAL(10)          null,
   CO_RATING_OPERACAO   CHAR(5)              null,
   VR_COMPROMETIMENTO_RENDA DECIMAL(15, 2)       null,
   NU_CONTRATO          CHAR(20)             not null,
   NU_PRODUTO           SMALLINT             null,
   NU_MODALIDADE        SMALLINT             null,
   NU_ORIGEM_RECURSO    SMALLINT             null,
   NU_TIPO_CONTRATO     SMALLINT             null,
   NO_CANAL             VARCHAR(50)          null,
   NU_UNIDADE_CONTRATACAO SMALLINT             null,
   CO_CORRESPONDENTE_CONTRATACAO CHAR(11)             null,
   IC_PORTABILIDADE     CHAR(1)              null,
   NO_ORIGEM_PORTABILIDADE VARCHAR(50)          null,
   DT_CONTRATACAO       DATE                 null,
   DT_ASSINATURA        DATE                 null,
   VR_CONTRATO          DECIMAL(19,2)        null,
   PZ_CONTRATADO        SMALLINT             null,
   NU_TEMPO_PRAZO_CONTRATADO SMALLINT             null,
   DT_VENCIMENTO_CONTRATO DATE                 null,
   NO_SISTEMA_AMORTIZACAO VARCHAR(50)          null,
   NO_INDEXADOR         VARCHAR(50)          null,
   PC_JUROS_NOMINAL     DECIMAL(5,3)         null,
   PC_JUROS_EFETIVO     DECIMAL(5,3)         null,
   VR_CUSTO_EFETIVO_ANUAL DECIMAL(19,2)        null,
   PC_REDUZIDA          DECIMAL(5,2)         null,
   NO_TIPO_CONVENIO     VARCHAR(50)          null,
   CO_CONVENIO          CHAR(20)             null,
   NO_CONVENIO          VARCHAR(50)          null,
   VR_PRIMEIRA_PRESTACAO DECIMAL(19,2)        null,
   DT_VNCMO_PRIMEIRA_PRESTACAO DATE                 null,
   VR_ULTIMA_PRESTACAO  DECIMAL(15,2)        null,
   DT_VENCIMENTO_ULTIMA_PRESTACAO DATE                 null,
   VR_REPASSE_FGTS      DECIMAL(19,2)        null,
   VR_RECURSO_PROPRIO   DECIMAL(19,2)        null,
   NO_SEGURADORA        VARCHAR(50)          null,
   VR_CUSTO_EFETIVO_SEGURO DECIMAL(19,2)        null,
   DE_GARANTIA          VARCHAR(50)          null,
   VR_GARANTIA          DECIMAL(19,2)        null,
   NO_TIPO_IMOVEL_GARANTIA VARCHAR(50)          null,
   NO_SITUACAO_IMOVEL_GARANTIA VARCHAR(50)          null,
   NO_LOGRADOURO_IMOVEL_GARANTIA VARCHAR(50)          null,
   CO_CEP_IMOVEL_GARANTIA CHAR(8)              null,
   NO_CIDADE_IMOVEL_GARANTIA VARCHAR(50)          null,
   SG_UF_IMOVEL_GARANTIA CHAR(2)              null,
   NO_SITUACAO_CONTRATO VARCHAR(50)          null,
   VR_SALDO_DEVEDOR     DECIMAL(19,2)        null,
   DT_SALDO_DEVEDOR     DATE                 null,
   PZ_REMANESCENTE      SMALLINT             null,
   QT_PRESTACAO_PAGA    SMALLINT             null,
   QT_PRESTACAO_ATRASO  SMALLINT             null,
   QT_DIA_ATRASO        SMALLINT             null,
   DT_LANCAMENTO_CREDITO_ATRASO DATE                 null,
   VR_LANCAMENTO_CREDITO_ATRASO DECIMAL(19,2)        null,
   DT_LIQUIDACAO_CONTRATO DATE                 null,
   NU_AGENCIA_CONTA_DEBITO SMALLINT             null,
   NU_OPERACAO_CONTA_DEBITO SMALLINT             null,
   NU_CONTA_CONTA_DEBITO NUMERIC(17)          null,
   NU_PRODUTO_DEBITO_NSGD SMALLINT             null,
   NU_CONTA_DEBITO_NSGD NUMERIC(17)          null,
   NU_AGENCIA_CONTA_CREDITO SMALLINT             null,
   NU_OPERACAO_CONTA_CREDITO SMALLINT             null,
   NU_CONTA_CONTA_CREDITO NUMERIC(17)          null,
   NU_PRODUTO_CREDITO_NSGD SMALLINT             null,
   NU_CONTA_CREDITO_NSGD NUMERIC(17)          null,
   QT_RENEGOCIACAO      SMALLINT             null,
   NO_TIPO_RENEGOCIACAO VARCHAR(50)          null,
   DT_RENEGOCIACAO      DATE                 null,
   VR_RENEGOCIACAO      DECIMAL(19,2)        null,
   NU_CONTRATO_INICIAL  CHAR(20)             null,
   CO_SISTEMA_ORIGEM    VARCHAR(100)         null,
   DH_POSICAO_LEGADO    DATETIME             null,
   DH_INGESTAO_SILDC    DATETIME             null,
   DH_INGESTAO_BASE_INTEGRADORA DATETIME             null,
   constraint PK_CRMTB061 primary key (NU_CLIENTE, NU_CONTRATO)
)
go

/*==============================================================*/
/* Table: CRMTB062_EXTRATO_IMOBILIARIO                          */
/*==============================================================*/
create table DM.CRMTB062_EXTRATO_IMOBILIARIO (
   NU_CLIENTE           NUMERIC(13)          not null,
   NU_CPF_CNPJ          NUMERIC(14)          null,
   NU_TIPO_PESSOA       SMALLINT             null,
   NU_CONTRATO          NUMERIC(15)          null,
   NU_PRODUTO_CONTRATO  SMALLINT             null,
   NU_MODALIDADE_CONTRATO SMALLINT             null,
   NU_SITUACAO_CONTRATO SMALLINT             null,
   NU_PARCELA__CONTRATO SMALLINT             null,
   IC_TIPO_PARCELA_CONTRATO CHAR(1)              null,
   DT_GERACAO_PARCELA   DATE                 null,
   DT_EMISSAO_PARCELA   DATE                 null,
   DT_VENCIMENTO_PARCELA DATE                 null,
   DT_RECEBIMENTO_PARCELA DATE                 null,
   VR_DEVIDO_PARCELA    DECIMAL(19,2)        null,
   VR_RECEBIDO_PARCELA  DECIMAL(19,2)        null,
   NO_FORMA_PAGAMENTO_PARCELA VARCHAR(100)         null,
   CO_NOSSO_NUMERO_PARCELA NUMERIC(15)          null,
   QT_RECOBRANCA_PARCELA SMALLINT             null,
   IC_SITUACAO_PARCELA  CHAR(1)              null,
   IC_TIPO_EVENTO_PARCELA CHAR(1)              null,
   VR_EVENTO_PARCELA    DECIMAL(19,2)        null,
   VR_MORA              DECIMAL(19,2)        null,
   VR_MULTA             DECIMAL(19,2)        null,
   VR_JUROS_ATRASO      DECIMAL(19,2)        null,
   VR_ENCARGOS_DISPENSADO DECIMAL(19,2)        null,
   VR_CORRECAO_MONETARIA DECIMAL(19,2)        null,
   VR_TOTAL_A_RECEBER_PARCELA DECIMAL(19,2)        null,
   DT_APURACAO_ATRASO_PARCELA DATE                 null,
   QT_DIA_ATRASO_PARCELA SMALLINT             null,
   CO_SISTEMA_ORIGEM    VARCHAR(100)         null,
   DH_POSICAO_LEGADO    DATETIME             null,
   DH_INGESTAO_SILDC    DATETIME             null,
   DH_INGESTAO_BASE_INTEGRADORA DATETIME             null,
   constraint PK_CRMTB062 primary key (NU_CLIENTE)
)
go

/*==============================================================*/
/* Table: CRMTB064_CLIENTE_CSS                                  */
/*==============================================================*/
create table DM.CRMTB064_CLIENTE_CSS (
   NU_CLIENTE           NUMERIC(13)          not null,
   NU_CPF_CNPJ          NUMERIC(14)          not null,
   NU_TIPO_PESSOA       SMALLINT             null,
   IC_INDICADOR_CCS_BACEN NUMERIC(1)           null,
   constraint PK_CRMTB064_CLIENTE_CSS primary key (NU_CLIENTE, NU_CPF_CNPJ)
)
go

/*==============================================================*/
/* Table: CRMTB065_TOMADOR_REQ                                  */
/*==============================================================*/
create table DM.CRMTB065_TOMADOR_REQ (
   NU_CLIENTE           NUMERIC(13)          null,
   NU_CPF___CNPJ        NUMERIC(14)          null,
   NU_TIPO_PESSOA       SMALLINT             null,
   NU_DE_TIPO_PESSOA    char(10)             null,
   COLUMN_5             char(10)             null
)
go

/*==============================================================*/
/* Table: CRMTB066_ENTR_CADASTRO_POSIT                          */
/*==============================================================*/
create table DM.CRMTB066_ENTR_CADASTRO_POSIT (
   NU_CLIENTE           NUMERIC(13)          null,
   NU_CPF___CNPJ        NUMERIC(14)          null,
   NU_TIPO_PESSOA       SMALLINT             null,
   NU_DES_TIPO_PESSOA   VARCHAR(30)          null,
   DT_ADESAO            DATE                 null,
   DT_CANCELAMENTO      DATE                 null,
   NU_CONTRATO          VARCHAR(20)          null,
   NU_CONT_ATIV_CPF_ROTA VARCHAR(29)          null,
   NU_CONT_ATIV_CPF_PARC VARCHAR(29)          null,
   NU_CONT_CART_CRED_CPF VARCHAR(29)          null,
   DE_TIPO_CONTRATO     VARCHAR(1)           null,
   NU_VAL_CONTRATO      NUMERIC(18)          null,
   NU_SIT_CONTRATO      VARCHAR(1)           null,
   DES_SIT_CONTRATO     VARCHAR(17)          null,
   NU_TIPO_CONTESTACAO  NUMERIC(10)          null,
   DES_TIPO_CONTESTACAO VARCHAR(15)          null,
   DE_JUSTI_CONTESTACAO VARCHAR(480)         null,
   DE_CONTES_ACATADA    VARCHAR(50)          null,
   NU_CNPJ_BIRO         NUMERIC(14)          null,
   DE_NOME_BIRO         VARCHAR(50)          null
)
go

/*==============================================================*/
/* Table: CRMTB067_ENTR_CADAS_RESTR                             */
/*==============================================================*/
create table DM.CRMTB067_ENTR_CADAS_RESTR (
   NU_CLIENTE           NUMERIC(13)          null,
   NU_CPF_CNPJ          NUMERIC(14)          null,
   NU_TIPO_PESSOA       NUMERIC(5)           null,
   NU_DES_TIPO_PESSOA   VARCHAR(1)           null,
   NO_DEVEDOR           VARCHAR(60)          null,
   IC_SITUACAO_DEVEDOR  VARCHAR(1)           null,
   NO_DES_SITACAO_DEVEDOR VARCHAR(10)          null,
   NO_CREDOR            VARCHAR(30)          null,
   CO_CREDOR            VARCHAR(5)           null,
   NU_UNIDADE           NUMERIC(5)           null,
   NU_PRODUTO           char(10)             null,
   NO_DES_PRODUTO       VARCHAR(20)          null,
   NU_TIPO_PESQUISA     NUMERIC(5)           null,
   SG_TP_PESQUISA       VARCHAR(10)          null,
   DES_TP_PESQUISA      VARCHAR(50)          null,
   NU_SUBTIPO_PSQA      NUMERIC(5)           null,
   DT_PESQUISA          DATETIME             null,
   DE_RESTRI_OCORREN    VARCHAR(50)          null,
   VR_RESTRI_OCORREN    NUMERIC(9)           null,
   DT_RESTRI_OCORREN    DATETIME             null,
   IC_SITUACAO_REST_OCORR VARCHAR(1)           null,
   DE_DESC_SITUACAO_REST_OCORR VARCHAR(1)           null,
   QT_REST_OCORR        NUMERIC(5)           null,
   NU_VAL_TOTAL_REST_OCORR NUMERIC(9)           null,
   DE_PEP_PPE_ATIVO     VARCHAR(20)          null,
   CO_TIPO_PPE          VARCHAR(1)           null,
   DE_TIPO_PPE          VARCHAR(20)          null,
   DT_INICIO_PEP_PPE    DATE                 null,
   DT_FIM_PEP_PPE       DATE                 null,
   NO_CARGO             VARCHAR(30)          null,
   DE_ORGAO             VARCHAR(30)          null,
   DT_NOMEACAO          NUMERIC(8)           null,
   DT_EXONERACAO        NUMERIC(8)           null,
   NU_CPF_CNPJ_PEP_PPE  NUMERIC(14)          null,
   DE_OBITO             VARCHAR(10)          null,
   DT_OBITO             DATE                 null,
   DE_ORG_EMISSOR_OBTO  VARCHAR(50)          null
)
go

/*==============================================================*/
/* Table: CRMTB068_VISAO_PRODUTOS                               */
/*==============================================================*/
create table DM.CRMTB068_VISAO_PRODUTOS (
   NU_PRODUTO           NUMERIC              not null,
   NU_DV_PRODUTO        NUMERIC              null,
   NO_PRODUTO           varchar(120)         null,
   NO_ABREVIADO_PRODUTO varchar(40)          null,
   NO_COMERCIAL_PRODUTO varchar(40)          null,
   SG_ULTIMA_SITUACAO   varchar(2)           null,
   NO_ULTIMA_SITUACAO   varchar(20)          null,
   NU_ENTIDADE          numeric              null,
   NO_ENTIDADE          varchar(50)          null,
   NU_OPERACAO          numeric              null,
   NO_OPERACAO          varchar(40)          null,
   NU_FONTE_RECURSO     numeric              not null,
   NO_FONTE_RECURSO     varchar(50)          null,
   NO_ABREVIADO_FONTE_RECURSO varchar(20)    null,
   NU_TIPO_FONTE_RECURSO numeric             null,
   NO_TIPO_FONTE_RECURSO varchar(40)         null,
   SG_PUBLICO_ALVO      varchar(50)          not null,
   NO_PUBLICO_ALVO      varchar(30)          null,
   NU_UNIDADE_GESTORA   numeric              not null,
   CO_SISTEMA_ORIGEM    varchar(100)         null,
   DH_POSICAO_LEGADO    date                 null,
   DH_INGESTAO_SILDC    date                 null,
   DH_INGESTAO_BASE_INTEGRADORA date         null,
   constraint PK_CRMTB068 primary key (NU_PRODUTO, NU_UNIDADE_GESTORA, SG_PUBLICO_ALVO, NU_FONTE_RECURSO)
)
go

/*==============================================================*/
/* Table: CRMTB069_VISAO_EMPREGADOS                             */
/*==============================================================*/
create table DM.CRMTB069_VISAO_EMPREGADOS (
   NU_MATRICULA         numeric              not null,
   NU_DV_MATRICULA      ntext                null,
   NU_MATRICULA_C       ntext                null,
   NO_EMPREGADO         ntext                null,
   DT_DESLIGAMENTO      date                 null,
   NU_UNIDADE_LOTACAO   numeric              null,
   NO_UNIDADE_LOTACAO   ntext                null,
   NU_FUNCAO_GRATIFICADA numeric             null,
   NO_FUNCAO_GRATIFICADA ntext               null,
   CO_CARGO             ntext                null,
   NO_CARGO             ntext                null,
   NU_CPF               numeric              null,
   IC_CHEFE_UNIDADE     numeric              not null,
   IC_EV_CHEFE_UNIDADE  numeric              not null,
   CO_SISTEMA_ORIGEM    varchar(100)         null,
   DH_POSICAO_LEGADO    date                 null,
   DH_INGESTAO_SILDC    date                 null,
   DH_INGESTAO_BASE_INTEGRADORA date         null,
   constraint PK_CRMTB069 primary key (NU_MATRICULA, IC_CHEFE_UNIDADE,IC_EV_CHEFE_UNIDADE)
)
go
/*==============================================================*/
/* Table: CRMTB070_VISAO_UNIDADES                               */
/*==============================================================*/
create table DM.CRMTB070_VISAO_UNIDADES (
   NU_UNIDADE           numeric              not null,
   NU_DV_UNIDADE        numeric              null,
   NO_UNIDADE           varchar(35)          null,
   SG_UNIDADE           varchar(10)          null,
   NU_UND_VINCULACAO    numeric              null,
   NO_UND_VINCULACAO    varchar(35)          null,
   NU_CGC_UNIDADE       numeric              not null,
   NU_DV_CGC_UNIDADE    numeric              null,
   IC_CGC_PROPRIO       bit                  null,
   IC_ULTIMA_SITUACAO   varchar(5)           null,
   DT_INICIO            date                 null,
   DT_FIM               date                 null,
   NU_TIPO_UNIDADE      numeric              null,
   NO_TIPO_UNIDADE      varchar(40)          null,
   NU_LOCALIDADE        numeric              not null,
   NO_LOCALIDADE        varchar(35)          null,
   SG_UF                varchar(20)          null,
   CO_SISTEMA_ORIGEM    varchar(100)         null,
   DH_POSICAO_LEGADO    datetime             null,
   DH_INGESTAO_SILDC    datetime             null,
   DH_INGESTAO_BASE_INTEGRADORA datetime     null,
   constraint PK_CRMTB070 primary key (NU_UNIDADE, NU_CGC_UNIDADE,NU_LOCALIDADE)
)
go

/*==============================================================*/
/* Table: CRMTB900_PARAMETRO_MAMO                               */
/*==============================================================*/
create table DM.CRMTB900_PARAMETRO_MAMO (
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

/*==============================================================*/
/* Table: CRMTB901_PONTUACAO_CLIENTE                            */
/*==============================================================*/
create table DM.CRMTB901_PONTUACAO_CLIENTE (
   NU_CPF_CNPJ          numeric(14,0)        null,
   NU_TIPO_PESSOA       numeric(2,0)         null,
   NU_CLIENTE           numeric(13,0)        null,
   CO_MODELO            varchar(50)          null,
   VR_PONTUACAO         decimal(4,2)         null
)
go

/*==============================================================*/
/* Table: CRMTB902_PONTUACAO_CLIENTE_PRDTO                        */
/*==============================================================*/
create table DM.CRMTB902_PONTUACAO_CLIENTE_PRDTO (
   NU_CPF_CNPJ          numeric(14,0)        null,
   NU_TIPO_PESSOA       numeric(2,0)         null,
   NU_CLIENTE           numeric(13,0)        null,
   VR_PONTUACAO_CDC     decimal(4,2)         null,
   VR_PONTUACAO_GIRO    decimal(4,2)         null,
   VR_PONTUACAO_CARTAO  decimal(4,2)         null,
   VR_PONTUACAO_CONSIGNADO decimal(4, 2)     null
)
go

/*
-- alter table CRMTB064_CLIENTE_CSS
--    add constraint FK_CRMTB064_REFERENCE_CRMTB001 foreign key (NU_CLIENTE)
--       references DM.CRMTB001_CLIENTE (NU_CLIENTE)
*/