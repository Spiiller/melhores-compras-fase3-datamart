-- Gerado por Oracle SQL Developer Data Modeler 24.3.1.351.0831
--   em:        2025-05-08 22:19:57 BRT
--   site:      Oracle Database 11g
--   tipo:      Oracle Database 11g
-- predefined type, no DDL - MDSYS.SDO_GEOMETRY

-- predefined type, no DDL - XMLTYPE

CREATE TABLE DIM_MC_BAIRRO 
    ( 
     SK_BAIRRO               NUMBER  NOT NULL , 
     DIM_MC_CIDADE_SK_CIDADE NUMBER  NOT NULL , 
     NM_BAIRRO               VARCHAR2 (25)  NOT NULL , 
     NR_POPULACAO            NUMBER (10) , 
     NR_NIVEL_SEGURANCA      NUMBER (1) 
    ) 
;

COMMENT ON COLUMN DIM_MC_BAIRRO.SK_BAIRRO IS 'Esse atributo irá receber a chave surrogate key da dimensão LOJA. Seu conteúdo será numérico e sequencial e deve ser preenchido na fase de ETL seguindo regras pré-estabelecidas.
' 
;

COMMENT ON COLUMN DIM_MC_BAIRRO.NM_BAIRRO IS 'Esse atributo irá receber a data de fundação da loja que entregou o produto adquirido pelo cliente. O conteúdo será obrigatório, do tipo data. ' 
;

ALTER TABLE DIM_MC_BAIRRO 
    ADD CONSTRAINT PK_MC_DIM_DISTRITO PRIMARY KEY ( SK_BAIRRO ) ;

CREATE TABLE DIM_MC_CATEGORIA_PROD 
    ( 
     SK_CATEGORIA_PROD      NUMBER  NOT NULL , 
     NM_CATEGORIA_PROD      VARCHAR2 (60)  NOT NULL , 
     ST_CATEGORIA           VARCHAR2 (8)  NOT NULL , 
     QT_NOTA_CATEGORIA_PROD NUMBER (2) 
    ) 
;

COMMENT ON COLUMN DIM_MC_CATEGORIA_PROD.SK_CATEGORIA_PROD IS 'Esse atributo irá receber a chave surrogate key da dimensão LOJA. Seu conteúdo será numérico e sequencial e deve ser preenchido na fase de ETL seguindo regras pré-estabelecidas.
' 
;

COMMENT ON COLUMN DIM_MC_CATEGORIA_PROD.NM_CATEGORIA_PROD IS 'Esse atributo irá receber a data de fundação da loja que entregou o produto adquirido pelo cliente. O conteúdo será obrigatório, do tipo data. ' 
;

ALTER TABLE DIM_MC_CATEGORIA_PROD 
    ADD CONSTRAINT PK_MC_DIM_CATEGORIA_PROD PRIMARY KEY ( SK_CATEGORIA_PROD ) ;

CREATE TABLE DIM_MC_CENTRO_DISTRIBUICAO 
    ( 
     SK_CENTRO_DISTRIBUICAO NUMBER  NOT NULL , 
     NM_CENTRO_DISTRIBUICAO VARCHAR2 (60)  NOT NULL 
    ) 
;

COMMENT ON COLUMN DIM_MC_CENTRO_DISTRIBUICAO.SK_CENTRO_DISTRIBUICAO IS 'Esse atributo irá receber a chave surrogate key da dimensão LOJA. Seu conteúdo será numérico e sequencial e deve ser preenchido na fase de ETL seguindo regras pré-estabelecidas.
' 
;

COMMENT ON COLUMN DIM_MC_CENTRO_DISTRIBUICAO.NM_CENTRO_DISTRIBUICAO IS 'Esse atributo irá receber a data de fundação da loja que entregou o produto adquirido pelo cliente. O conteúdo será obrigatório, do tipo data. ' 
;

ALTER TABLE DIM_MC_CENTRO_DISTRIBUICAO 
    ADD CONSTRAINT PK_MC_DIM_CD PRIMARY KEY ( SK_CENTRO_DISTRIBUICAO ) ;

CREATE TABLE DIM_MC_CIDADE 
    ( 
     SK_CIDADE               NUMBER  NOT NULL , 
     DIM_MC_ESTADO_SK_ESTADO NUMBER  NOT NULL , 
     NM_CIDADE               VARCHAR2 (25)  NOT NULL , 
     NR_POPULACAO            NUMBER (10) , 
     CD_IBGE                 NUMBER (8) , 
     NR_ALTITUDE_MAR         NUMBER (8) 
    ) 
;

COMMENT ON COLUMN DIM_MC_CIDADE.SK_CIDADE IS 'Esse atributo irá receber a chave surrogate key da dimensão LOJA. Seu conteúdo será numérico e sequencial e deve ser preenchido na fase de ETL seguindo regras pré-estabelecidas.
' 
;

COMMENT ON COLUMN DIM_MC_CIDADE.NM_CIDADE IS 'Esse atributo irá receber a data de fundação da loja que entregou o produto adquirido pelo cliente. O conteúdo será obrigatório, do tipo data. ' 
;

ALTER TABLE DIM_MC_CIDADE 
    ADD CONSTRAINT PK_MC_DIM_CIDADE PRIMARY KEY ( SK_CIDADE ) ;

CREATE TABLE DIM_MC_CLIENTE 
    ( 
     SK_CLIENTE    NUMBER  NOT NULL , 
     NM_CLIENTE    VARCHAR2 (60)  NOT NULL , 
     NR_ESTRELAS   NUMBER (1) , 
     ST_CLIENTE    VARCHAR2 (8)  NOT NULL , 
     DT_NASCIMENTO DATE 
    ) 
;

COMMENT ON COLUMN DIM_MC_CLIENTE.SK_CLIENTE IS 'Esse atributo irá receber a chave surrogate key da dimensão LOJA. Seu conteúdo será numérico e sequencial e deve ser preenchido na fase de ETL seguindo regras pré-estabelecidas.
' 
;

COMMENT ON COLUMN DIM_MC_CLIENTE.NM_CLIENTE IS 'Esse atributo irá receber a data de fundação da loja que entregou o produto adquirido pelo cliente. O conteúdo será obrigatório, do tipo data. ' 
;

ALTER TABLE DIM_MC_CLIENTE 
    ADD CONSTRAINT PK_MC_DIM_CLIENTE PRIMARY KEY ( SK_CLIENTE ) ;

CREATE TABLE DIM_MC_ESTADO 
    ( 
     SK_ESTADO               NUMBER  NOT NULL , 
     DIM_MC_REGIAO_SK_REGIAO NUMBER  NOT NULL , 
     SG_ESTADO               CHAR (2)  NOT NULL , 
     NM_ESTADO               VARCHAR2 (25)  NOT NULL , 
     NM_GENTILICO            VARCHAR2 (40)  NOT NULL 
    ) 
;

COMMENT ON COLUMN DIM_MC_ESTADO.SK_ESTADO IS 'Esse atributo irá receber a chave surrogate key da dimensão LOJA. Seu conteúdo será numérico e sequencial e deve ser preenchido na fase de ETL seguindo regras pré-estabelecidas.
' 
;

COMMENT ON COLUMN DIM_MC_ESTADO.NM_ESTADO IS 'Esse atributo irá receber a data de fundação da loja que entregou o produto adquirido pelo cliente. O conteúdo será obrigatório, do tipo data. ' 
;

ALTER TABLE DIM_MC_ESTADO 
    ADD CONSTRAINT PK_MC_DIM_ESTADO PRIMARY KEY ( SK_ESTADO ) ;

CREATE TABLE DIM_MC_FORMA_PAGTO 
    ( 
     SK_FORMA_PAGTO NUMBER  NOT NULL , 
     DS_FORMA_PAGTO VARCHAR2 (35)  NOT NULL 
    ) 
;

COMMENT ON COLUMN DIM_MC_FORMA_PAGTO.SK_FORMA_PAGTO IS 'Esta é a Surrogate Key da Dimensão de forma de pagamento. Seu conteúdo deve ser obrigatório e do tipo numérico.' 
;

COMMENT ON COLUMN DIM_MC_FORMA_PAGTO.DS_FORMA_PAGTO IS 'Este atributo representa a forma de pagamento escolhida pelo cliente no momento da venda.' 
;

ALTER TABLE DIM_MC_FORMA_PAGTO 
    ADD CONSTRAINT PK_MC_DIM_FORMA_PAGTO PRIMARY KEY ( SK_FORMA_PAGTO ) ;

CREATE TABLE DIM_MC_FUNCIONARIO 
    ( 
     SK_FUNCIONARIO NUMBER  NOT NULL , 
     NM_FUNCIONARIO VARCHAR2 (60)  NOT NULL , 
     DS_CARGO       VARCHAR2 (50)  NOT NULL 
    ) 
;

COMMENT ON COLUMN DIM_MC_FUNCIONARIO.SK_FUNCIONARIO IS 'Esse atributo irá receber a chave surrogate key da dimensão LOJA. Seu conteúdo será numérico e sequencial e deve ser preenchido na fase de ETL seguindo regras pré-estabelecidas.
' 
;

COMMENT ON COLUMN DIM_MC_FUNCIONARIO.NM_FUNCIONARIO IS 'Esse atributo irá receber a data de fundação da loja que entregou o produto adquirido pelo cliente. O conteúdo será obrigatório, do tipo data. ' 
;

ALTER TABLE DIM_MC_FUNCIONARIO 
    ADD CONSTRAINT PK_MC_DIM_FUNCIONARIO PRIMARY KEY ( SK_FUNCIONARIO ) ;

CREATE TABLE DIM_MC_ORIGEM_VDA 
    ( 
     SK_ORIGEM_VENDA NUMBER  NOT NULL , 
     DS_ORIGEM_VENDA VARCHAR2 (30)  NOT NULL 
    ) 
;

COMMENT ON COLUMN DIM_MC_ORIGEM_VDA.SK_ORIGEM_VENDA IS 'Esta é a Surrogate Key da Dimensão Pedido de Venda. Seu conteúdo deve ser obrigatório e do tipo numérico.' 
;

COMMENT ON COLUMN DIM_MC_ORIGEM_VDA.DS_ORIGEM_VENDA IS 'Este é número do pedido no modelo relacional.' 
;

ALTER TABLE DIM_MC_ORIGEM_VDA 
    ADD CONSTRAINT PK_MC_DIM_ORIGEM_VENDA PRIMARY KEY ( SK_ORIGEM_VENDA ) ;

CREATE TABLE DIM_MC_PEDIDO_VENDA 
    ( 
     SK_PEDIDO_VENDA       NUMBER  NOT NULL , 
     NR_PEDIDO_ORIGEM      INTEGER  NOT NULL , 
     NR_ITEM_PEDIDO_ORIGEM INTEGER  NOT NULL 
    ) 
;

COMMENT ON COLUMN DIM_MC_PEDIDO_VENDA.SK_PEDIDO_VENDA IS 'Esta é a Surrogate Key da Dimensão Pedido de Venda. Seu conteúdo deve ser obrigatório e do tipo numérico.' 
;

COMMENT ON COLUMN DIM_MC_PEDIDO_VENDA.NR_PEDIDO_ORIGEM IS 'Este é número do pedido no modelo relacional.' 
;

COMMENT ON COLUMN DIM_MC_PEDIDO_VENDA.NR_ITEM_PEDIDO_ORIGEM IS 'Este é número do item do  pedido no modelo relacional.' 
;

ALTER TABLE DIM_MC_PEDIDO_VENDA 
    ADD CONSTRAINT PK_MC_DIM_PEDIDO_VENDA PRIMARY KEY ( SK_PEDIDO_VENDA ) ;

CREATE TABLE DIM_MC_PRODUTO 
    ( 
     SK_PRODUTO                                      NUMBER  NOT NULL , 
--  ERROR: Column name length exceeds maximum allowed length(30) 
     DIM_MC_SUB_CATEGORIA_PROD_SK_SUB_CATEGORIA_PROD NUMBER  NOT NULL , 
     NM_PRODUTO                                      VARCHAR2 (90)  NOT NULL , 
     NM_TIPO_EMBALAGEM                               VARCHAR2 (60)  NOT NULL 
    ) 
;

COMMENT ON COLUMN DIM_MC_PRODUTO.SK_PRODUTO IS 'Esse atributo irá receber a chave surrogate key da dimensão PRODUTO. O conteúdo será numérico e sequencial e deve ser preenchido na fase de ETL seguindo regras pré-estabelecidas.' 
;

COMMENT ON COLUMN DIM_MC_PRODUTO.NM_PRODUTO IS 'Esse atributo irá receber o nome do produto cadastrado e que participou de uma venda na Pet Shop Arca de Noé. Seu conteúdo será obrigatório, podendo possuir até 90 caracteres.' 
;

COMMENT ON COLUMN DIM_MC_PRODUTO.NM_TIPO_EMBALAGEM IS 'Esse atributo irá receber o tipo de embalagem do produto cadastrado que participou de uma venda na Pet Shop Arca de Noé. Seu conteúdo será obrigatório, podendo possuir até 60 caracteres.' 
;

ALTER TABLE DIM_MC_PRODUTO 
    ADD CONSTRAINT PK_MC_DIM_PRODUTO PRIMARY KEY ( SK_PRODUTO ) ;

CREATE TABLE DIM_MC_REGIAO 
    ( 
     SK_REGIAO NUMBER  NOT NULL , 
     NM_REGIAO VARCHAR2 (25)  NOT NULL 
    ) 
;

COMMENT ON COLUMN DIM_MC_REGIAO.SK_REGIAO IS 'Esse atributo irá receber a chave surrogate key da dimensão LOJA. Seu conteúdo será numérico e sequencial e deve ser preenchido na fase de ETL seguindo regras pré-estabelecidas.
' 
;

COMMENT ON COLUMN DIM_MC_REGIAO.NM_REGIAO IS 'Esse atributo irá receber a data de fundação da loja que entregou o produto adquirido pelo cliente. O conteúdo será obrigatório, do tipo data. ' 
;

ALTER TABLE DIM_MC_REGIAO 
    ADD CONSTRAINT PK_MC_DIM_REGIAO PRIMARY KEY ( SK_REGIAO ) ;

CREATE TABLE DIM_MC_STATUS_VENDA 
    ( 
     SK_STATUS_VENDA NUMBER  NOT NULL , 
     DS_STATUS_VENDA VARCHAR2 (40)  NOT NULL 
    ) 
;

COMMENT ON COLUMN DIM_MC_STATUS_VENDA.SK_STATUS_VENDA IS 'Esta é a Surrogate Key da Dimensão Pedido de Venda. Seu conteúdo deve ser obrigatório e do tipo numérico.' 
;

COMMENT ON COLUMN DIM_MC_STATUS_VENDA.DS_STATUS_VENDA IS 'Este é número do pedido no modelo relacional.' 
;

ALTER TABLE DIM_MC_STATUS_VENDA 
    ADD CONSTRAINT PK_MC_DIM_STATUS_VENDA PRIMARY KEY ( SK_STATUS_VENDA ) ;

CREATE TABLE DIM_MC_SUB_CATEGORIA_PROD 
    ( 
     SK_SUB_CATEGORIA_PROD                   NUMBER  NOT NULL , 
--  ERROR: Column name length exceeds maximum allowed length(30) 
     DIM_MC_CATEGORIA_PROD_SK_CATEGORIA_PROD NUMBER  NOT NULL , 
     NM_SUB_CATEGORIA_PROD                   VARCHAR2 (60)  NOT NULL , 
     ST_SUB_CATEGORIA                        VARCHAR2 (8)  NOT NULL , 
     QT_NOTA_SUB_CATEGORIA_PROD              NUMBER (2) 
    ) 
;

COMMENT ON COLUMN DIM_MC_SUB_CATEGORIA_PROD.SK_SUB_CATEGORIA_PROD IS 'Esse atributo irá receber a chave surrogate key da dimensão LOJA. Seu conteúdo será numérico e sequencial e deve ser preenchido na fase de ETL seguindo regras pré-estabelecidas.
' 
;

COMMENT ON COLUMN DIM_MC_SUB_CATEGORIA_PROD.NM_SUB_CATEGORIA_PROD IS 'Esse atributo irá receber a data de fundação da loja que entregou o produto adquirido pelo cliente. O conteúdo será obrigatório, do tipo data. ' 
;

ALTER TABLE DIM_MC_SUB_CATEGORIA_PROD 
    ADD CONSTRAINT PK_MC_DIM_SUB_CATEGORIA_PROD PRIMARY KEY ( SK_SUB_CATEGORIA_PROD ) ;

CREATE TABLE DIM_MC_TEMPO 
    ( 
     SK_MC_TEMPO         NUMBER  NOT NULL , 
     DT_PEDIDO           DATE  NOT NULL , 
     NR_ANO              INTEGER , 
     NR_SEMESTRE         INTEGER , 
     DS_SEMESTRE_ANO     VARCHAR2 
--  ERROR: VARCHAR2 size not specified 
                    , 
     DS_SEMESTRE         VARCHAR2 
--  ERROR: VARCHAR2 size not specified 
                    , 
     NR_TRIMESTRE        INTEGER , 
     DS_TRIMESTRE_ANO    VARCHAR2 
--  ERROR: VARCHAR2 size not specified 
                    , 
     DS_TRIMESTRE        VARCHAR2 
--  ERROR: VARCHAR2 size not specified 
                    , 
     NR_MES              INTEGER , 
     NR_ANO_MES          INTEGER , 
     DS_MES_ANO          VARCHAR2 
--  ERROR: VARCHAR2 size not specified 
                    , 
     DS_MES              VARCHAR2 
--  ERROR: VARCHAR2 size not specified 
                    , 
     DS_ABV_MES          CHAR 
--  WARNING: CHAR size not specified 
                    , 
     DS_ABV_MES_ANO      VARCHAR2 
--  ERROR: VARCHAR2 size not specified 
                    , 
     DS_DIA_SEMANA       VARCHAR2 
--  ERROR: VARCHAR2 size not specified 
                    , 
     DS_DATA             VARCHAR2 
--  ERROR: VARCHAR2 size not specified 
                    , 
     NR_DIA_MES          INTEGER , 
     NR_DIA_SEMANA       INTEGER , 
     NR_DIA_ANO          INTEGER , 
     DS_DIA_UTIL_FERIADO VARCHAR2 
--  ERROR: VARCHAR2 size not specified 
                    , 
     DS_FIM_SEMANA       VARCHAR2 
--  ERROR: VARCHAR2 size not specified 
                    , 
     DS_DATA_EXTENSO     VARCHAR2 
--  ERROR: VARCHAR2 size not specified 
                    , 
     DT_CRIAÇAO_RGT      DATE 
    ) 
;

COMMENT ON COLUMN DIM_MC_TEMPO.SK_MC_TEMPO IS 'Esse atributo irá receber a chave surrogate key da dimensão TEMPO. O conteúdo será numérico e sequencial e deve ser preenchido na fase de ETL seguindo regras pré-estabelecidas.' 
;

COMMENT ON COLUMN DIM_MC_TEMPO.DT_PEDIDO IS 'Esse atributo irá recebera data em que ocorreu o evento.  O conteúdo será obrigatório.' 
;

COMMENT ON COLUMN DIM_MC_TEMPO.NR_ANO IS 'numero do ano.' 
;

COMMENT ON COLUMN DIM_MC_TEMPO.NR_SEMESTRE IS 'numero de semestre.' 
;

COMMENT ON COLUMN DIM_MC_TEMPO.DS_SEMESTRE_ANO IS 'descrição do semestre/ano.' 
;

COMMENT ON COLUMN DIM_MC_TEMPO.DS_SEMESTRE IS 'descrição do semestre.' 
;

COMMENT ON COLUMN DIM_MC_TEMPO.NR_TRIMESTRE IS 'numero trimestre.' 
;

COMMENT ON COLUMN DIM_MC_TEMPO.DS_TRIMESTRE_ANO IS 'descrição do trimestre/ano.' 
;

COMMENT ON COLUMN DIM_MC_TEMPO.DS_TRIMESTRE IS 'descrição do trimestre.' 
;

COMMENT ON COLUMN DIM_MC_TEMPO.NR_MES IS 'numero do mes.' 
;

COMMENT ON COLUMN DIM_MC_TEMPO.NR_ANO_MES IS 'numero do ano/mes.' 
;

COMMENT ON COLUMN DIM_MC_TEMPO.DS_MES_ANO IS 'descrição do mes/ano.' 
;

COMMENT ON COLUMN DIM_MC_TEMPO.DS_MES IS 'descrição do mes.' 
;

COMMENT ON COLUMN DIM_MC_TEMPO.DS_ABV_MES IS 'descrição abreviada do mes.' 
;

COMMENT ON COLUMN DIM_MC_TEMPO.DS_ABV_MES_ANO IS 'descrição abreviado do mes/ano.' 
;

COMMENT ON COLUMN DIM_MC_TEMPO.DS_DIA_SEMANA IS 'descrição do dia da semana.' 
;

COMMENT ON COLUMN DIM_MC_TEMPO.DS_DATA IS 'descrição da data.' 
;

COMMENT ON COLUMN DIM_MC_TEMPO.NR_DIA_MES IS 'numero do dia do mes.' 
;

COMMENT ON COLUMN DIM_MC_TEMPO.NR_DIA_SEMANA IS 'numero do dia da semana.' 
;

COMMENT ON COLUMN DIM_MC_TEMPO.NR_DIA_ANO IS 'numero do dia do ano.' 
;

COMMENT ON COLUMN DIM_MC_TEMPO.DS_DIA_UTIL_FERIADO IS 'descrição dia util/feriado.' 
;

COMMENT ON COLUMN DIM_MC_TEMPO.DS_FIM_SEMANA IS 'descrição fim de semana.' 
;

COMMENT ON COLUMN DIM_MC_TEMPO.DS_DATA_EXTENSO IS 'descrição da data por extenso.' 
;

COMMENT ON COLUMN DIM_MC_TEMPO.DT_CRIAÇAO_RGT IS 'data/hora da criaçao do registro.' 
;

ALTER TABLE DIM_MC_TEMPO 
    ADD CONSTRAINT PK_MC_DIM_TEMPO PRIMARY KEY ( SK_MC_TEMPO ) ;

CREATE TABLE DIM_MC_TIPO_VENDA 
    ( 
     SK_TIPO_VENDA NUMBER  NOT NULL , 
     DS_TIPO_VNDA  VARCHAR2 (30)  NOT NULL 
    ) 
;

COMMENT ON COLUMN DIM_MC_TIPO_VENDA.SK_TIPO_VENDA IS 'Esta é a Surrogate Key da Dimensão Pedido de Venda. Seu conteúdo deve ser obrigatório e do tipo numérico.' 
;

COMMENT ON COLUMN DIM_MC_TIPO_VENDA.DS_TIPO_VNDA IS 'Este é número do pedido no modelo relacional.' 
;

ALTER TABLE DIM_MC_TIPO_VENDA 
    ADD CONSTRAINT PK_MC_DIM_TIPO_VENDA PRIMARY KEY ( SK_TIPO_VENDA ) ;

CREATE TABLE FTO_ENTREGA_PRD_PESQ_SATISF_CD 
    ( 
     SK_MC_PESQ_SATISF_PROD                            NUMBER  NOT NULL , 
     DIM_MC_TEMPO_SK_MC_TEMPO                          NUMBER  NOT NULL , 
     DIM_MC_BAIRRO_SK_BAIRRO                           NUMBER  NOT NULL , 
--  ERROR: Column name length exceeds maximum allowed length(30) 
     DIM_MC_CENTRO_DISTRIBUICAO_SK_CENTRO_DISTRIBUICAO NUMBER  NOT NULL , 
     DIM_MC_PRODUTO_SK_PRODUTO                         NUMBER  NOT NULL , 
--  ERROR: Column name length exceeds maximum allowed length(30) 
     DIM_MC_FUNCIONARIO_SK_FUNCIONARIO                 NUMBER  NOT NULL , 
--  ERROR: Column name length exceeds maximum allowed length(30) 
     DIM_MC_PEDIDO_VENDA_SK_PEDIDO_VENDA               NUMBER  NOT NULL , 
     DIM_MC_CLIENTE_SK_CLIENTE                         NUMBER  NOT NULL , 
--  ERROR: Column name length exceeds maximum allowed length(30) 
     DIM_MC_FORMA_PAGTO_SK_FORMA_PAGTO                 NUMBER  NOT NULL , 
--  ERROR: Column name length exceeds maximum allowed length(30) 
     DIM_MC_ORIGEM_VDA_SK_ORIGEM_VENDA                 NUMBER  NOT NULL , 
--  ERROR: Column name length exceeds maximum allowed length(30) 
     DIM_MC_STATUS_VENDA_SK_STATUS_VENDA               NUMBER  NOT NULL , 
--  ERROR: Column name length exceeds maximum allowed length(30) 
     DIM_MC_TIPO_VENDA_SK_TIPO_VENDA                   NUMBER  NOT NULL , 
     VL_UNITARIO                                       NUMBER (10,2)  NOT NULL , 
     QT_VENDA                                          NUMBER (10,4)  NOT NULL , 
     VL_TOT_VENDA                                      NUMBER (10,2)  NOT NULL , 
     VL_PERC_ICMS                                      NUMBER (8,2) , 
     QT_VENDA_ENTREGUE                                 NUMBER (10,4) , 
     QT_NOTA_EMBALAGEM                                 NUMBER (2) , 
     QT_NOTA_PONTUALIDADE                              NUMBER (2) , 
     QT_NOTA_CORTESIA                                  NUMBER (2) 
    ) 
;

COMMENT ON COLUMN FTO_ENTREGA_PRD_PESQ_SATISF_CD.QT_VENDA IS 'Esse atributo irá receber a quantidade de venda de um determinado produto em um determinado pedido. Seu conteúdo será obrigatório, contendo 6 números inteiros e 4 casas decimais e somente valores positivos são válidos.' 
;

COMMENT ON COLUMN FTO_ENTREGA_PRD_PESQ_SATISF_CD.VL_TOT_VENDA IS 'Esse atributo irá receber o valor total de venda de um determinado produto em um pedido. Seu conteúdo será obrigatório, contendo números inteiros e 2 casas decimais e somente valores positivos são válidos.
' 
;

ALTER TABLE FTO_ENTREGA_PRD_PESQ_SATISF_CD 
    ADD CONSTRAINT PK_MC_FTO_PESQ_SATISF_ENTG_PRD PRIMARY KEY ( SK_MC_PESQ_SATISF_PROD ) ;

ALTER TABLE FTO_ENTREGA_PRD_PESQ_SATISF_CD 
    ADD CONSTRAINT FK_MC_DIM_BAIRRO_CLI_PSC FOREIGN KEY 
    ( 
     DIM_MC_BAIRRO_SK_BAIRRO
    ) 
    REFERENCES DIM_MC_BAIRRO 
    ( 
     SK_BAIRRO
    ) 
;

ALTER TABLE DIM_MC_PRODUTO 
    ADD CONSTRAINT FK_MC_DIM_CATEG_PROD FOREIGN KEY 
    ( 
     DIM_MC_SUB_CATEGORIA_PROD_SK_SUB_CATEGORIA_PROD
    ) 
    REFERENCES DIM_MC_SUB_CATEGORIA_PROD 
    ( 
     SK_SUB_CATEGORIA_PROD
    ) 
;

ALTER TABLE FTO_ENTREGA_PRD_PESQ_SATISF_CD 
    ADD CONSTRAINT FK_MC_DIM_CD_PESQ_SATISF FOREIGN KEY 
    ( 
     DIM_MC_CENTRO_DISTRIBUICAO_SK_CENTRO_DISTRIBUICAO
    ) 
    REFERENCES DIM_MC_CENTRO_DISTRIBUICAO 
    ( 
     SK_CENTRO_DISTRIBUICAO
    ) 
;

ALTER TABLE DIM_MC_BAIRRO 
    ADD CONSTRAINT FK_MC_DIM_CIDADE_BAIRRO FOREIGN KEY 
    ( 
     DIM_MC_CIDADE_SK_CIDADE
    ) 
    REFERENCES DIM_MC_CIDADE 
    ( 
     SK_CIDADE
    ) 
;

ALTER TABLE DIM_MC_CIDADE 
    ADD CONSTRAINT FK_MC_DIM_ESTADO_CIDADE FOREIGN KEY 
    ( 
     DIM_MC_ESTADO_SK_ESTADO
    ) 
    REFERENCES DIM_MC_ESTADO 
    ( 
     SK_ESTADO
    ) 
;

ALTER TABLE FTO_ENTREGA_PRD_PESQ_SATISF_CD 
    ADD CONSTRAINT FK_MC_DIM_FORMPAGTO_PESQSATISF FOREIGN KEY 
    ( 
     DIM_MC_FORMA_PAGTO_SK_FORMA_PAGTO
    ) 
    REFERENCES DIM_MC_FORMA_PAGTO 
    ( 
     SK_FORMA_PAGTO
    ) 
;

ALTER TABLE FTO_ENTREGA_PRD_PESQ_SATISF_CD 
    ADD CONSTRAINT FK_MC_DIM_FUNC_PESQ_SATISF FOREIGN KEY 
    ( 
     DIM_MC_FUNCIONARIO_SK_FUNCIONARIO
    ) 
    REFERENCES DIM_MC_FUNCIONARIO 
    ( 
     SK_FUNCIONARIO
    ) 
;

ALTER TABLE FTO_ENTREGA_PRD_PESQ_SATISF_CD 
    ADD CONSTRAINT FK_MC_DIM_ORIG_VDA_PESQSATISF FOREIGN KEY 
    ( 
     DIM_MC_ORIGEM_VDA_SK_ORIGEM_VENDA
    ) 
    REFERENCES DIM_MC_ORIGEM_VDA 
    ( 
     SK_ORIGEM_VENDA
    ) 
;

ALTER TABLE FTO_ENTREGA_PRD_PESQ_SATISF_CD 
    ADD CONSTRAINT FK_MC_DIM_PEDVDA_PESQSATISF FOREIGN KEY 
    ( 
     DIM_MC_PEDIDO_VENDA_SK_PEDIDO_VENDA
    ) 
    REFERENCES DIM_MC_PEDIDO_VENDA 
    ( 
     SK_PEDIDO_VENDA
    ) 
;

ALTER TABLE FTO_ENTREGA_PRD_PESQ_SATISF_CD 
    ADD CONSTRAINT FK_MC_DIM_PROD_PESQ_SATISF FOREIGN KEY 
    ( 
     DIM_MC_PRODUTO_SK_PRODUTO
    ) 
    REFERENCES DIM_MC_PRODUTO 
    ( 
     SK_PRODUTO
    ) 
;

ALTER TABLE DIM_MC_ESTADO 
    ADD CONSTRAINT FK_MC_DIM_REGIAO_BAIRRO FOREIGN KEY 
    ( 
     DIM_MC_REGIAO_SK_REGIAO
    ) 
    REFERENCES DIM_MC_REGIAO 
    ( 
     SK_REGIAO
    ) 
;

ALTER TABLE FTO_ENTREGA_PRD_PESQ_SATISF_CD 
    ADD CONSTRAINT FK_MC_DIM_STAT_VDA_PESQSATISF FOREIGN KEY 
    ( 
     DIM_MC_STATUS_VENDA_SK_STATUS_VENDA
    ) 
    REFERENCES DIM_MC_STATUS_VENDA 
    ( 
     SK_STATUS_VENDA
    ) 
;

ALTER TABLE DIM_MC_SUB_CATEGORIA_PROD 
    ADD CONSTRAINT FK_MC_DIM_SUBCATEG_CATEG FOREIGN KEY 
    ( 
     DIM_MC_CATEGORIA_PROD_SK_CATEGORIA_PROD
    ) 
    REFERENCES DIM_MC_CATEGORIA_PROD 
    ( 
     SK_CATEGORIA_PROD
    ) 
;

ALTER TABLE FTO_ENTREGA_PRD_PESQ_SATISF_CD 
    ADD CONSTRAINT FK_MC_DIM_TEMPO_DT_PEDIDO FOREIGN KEY 
    ( 
     DIM_MC_TEMPO_SK_MC_TEMPO
    ) 
    REFERENCES DIM_MC_TEMPO 
    ( 
     SK_MC_TEMPO
    ) 
;

ALTER TABLE FTO_ENTREGA_PRD_PESQ_SATISF_CD 
    ADD CONSTRAINT FK_MC_DIM_TIP_VDA_PESQSATISF FOREIGN KEY 
    ( 
     DIM_MC_TIPO_VENDA_SK_TIPO_VENDA
    ) 
    REFERENCES DIM_MC_TIPO_VENDA 
    ( 
     SK_TIPO_VENDA
    ) 
;

ALTER TABLE FTO_ENTREGA_PRD_PESQ_SATISF_CD 
    ADD CONSTRAINT PK_MC_DIM_CLIENTE_PESQ_SATISF FOREIGN KEY 
    ( 
     DIM_MC_CLIENTE_SK_CLIENTE
    ) 
    REFERENCES DIM_MC_CLIENTE 
    ( 
     SK_CLIENTE
    ) 
;



-- Relatório do Resumo do Oracle SQL Developer Data Modeler: 
-- 
-- CREATE TABLE                            17
-- CREATE INDEX                             0
-- ALTER TABLE                             33
-- CREATE VIEW                              0
-- ALTER VIEW                               0
-- CREATE PACKAGE                           0
-- CREATE PACKAGE BODY                      0
-- CREATE PROCEDURE                         0
-- CREATE FUNCTION                          0
-- CREATE TRIGGER                           0
-- ALTER TRIGGER                            0
-- CREATE COLLECTION TYPE                   0
-- CREATE STRUCTURED TYPE                   0
-- CREATE STRUCTURED TYPE BODY              0
-- CREATE CLUSTER                           0
-- CREATE CONTEXT                           0
-- CREATE DATABASE                          0
-- CREATE DIMENSION                         0
-- CREATE DIRECTORY                         0
-- CREATE DISK GROUP                        0
-- CREATE ROLE                              0
-- CREATE ROLLBACK SEGMENT                  0
-- CREATE SEQUENCE                          0
-- CREATE MATERIALIZED VIEW                 0
-- CREATE MATERIALIZED VIEW LOG             0
-- CREATE SYNONYM                           0
-- CREATE TABLESPACE                        0
-- CREATE USER                              0
-- 
-- DROP TABLESPACE                          0
-- DROP DATABASE                            0
-- 
-- REDACTION POLICY                         0
-- 
-- ORDS DROP SCHEMA                         0
-- ORDS ENABLE SCHEMA                       0
-- ORDS ENABLE OBJECT                       0
-- 
-- ERRORS                                  21
-- WARNINGS                                 1
