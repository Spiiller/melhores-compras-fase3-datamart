-- Gerado por Oracle SQL Developer Data Modeler 24.3.1.351.0831
--   em:        2025-05-08 22:22:19 BRT
--   site:      SQL Server 2012
--   tipo:      SQL Server 2012


CREATE TABLE DIM_MC_BAIRRO 
    (
     SK_BAIRRO NUMERIC (28) NOT NULL , 
     DIM_MC_CIDADE_SK_CIDADE NUMERIC (28) NOT NULL , 
     NM_BAIRRO VARCHAR (25) NOT NULL , 
     NR_POPULACAO NUMERIC (10) , 
     NR_NIVEL_SEGURANCA NUMERIC (1) 
    )
GO 



EXEC sp_addextendedproperty 'MS_Description' , 'Esse atributo irá receber a chave surrogate key da dimensão LOJA. Seu conteúdo será numérico e sequencial e deve ser preenchido na fase de ETL seguindo regras pré-estabelecidas.
' , 'USER' , 'dbo' , 'TABLE' , 'DIM_MC_BAIRRO' , 'COLUMN' , 'SK_BAIRRO' 
GO



EXEC sp_addextendedproperty 'MS_Description' , 'Esse atributo irá receber a data de fundação da loja que entregou o produto adquirido pelo cliente. O conteúdo será obrigatório, do tipo data. ' , 'USER' , 'dbo' , 'TABLE' , 'DIM_MC_BAIRRO' , 'COLUMN' , 'NM_BAIRRO' 
GO

ALTER TABLE DIM_MC_BAIRRO ADD CONSTRAINT PK_MC_DIM_DISTRITO PRIMARY KEY CLUSTERED (SK_BAIRRO)
     WITH (
     ALLOW_PAGE_LOCKS = ON , 
     ALLOW_ROW_LOCKS = ON )
GO

CREATE TABLE DIM_MC_CATEGORIA_PROD 
    (
     SK_CATEGORIA_PROD NUMERIC (28) NOT NULL , 
     NM_CATEGORIA_PROD VARCHAR (60) NOT NULL , 
     ST_CATEGORIA VARCHAR (8) NOT NULL , 
     QT_NOTA_CATEGORIA_PROD NUMERIC (2) 
    )
GO 



EXEC sp_addextendedproperty 'MS_Description' , 'Esse atributo irá receber a chave surrogate key da dimensão LOJA. Seu conteúdo será numérico e sequencial e deve ser preenchido na fase de ETL seguindo regras pré-estabelecidas.
' , 'USER' , 'dbo' , 'TABLE' , 'DIM_MC_CATEGORIA_PROD' , 'COLUMN' , 'SK_CATEGORIA_PROD' 
GO



EXEC sp_addextendedproperty 'MS_Description' , 'Esse atributo irá receber a data de fundação da loja que entregou o produto adquirido pelo cliente. O conteúdo será obrigatório, do tipo data. ' , 'USER' , 'dbo' , 'TABLE' , 'DIM_MC_CATEGORIA_PROD' , 'COLUMN' , 'NM_CATEGORIA_PROD' 
GO

ALTER TABLE DIM_MC_CATEGORIA_PROD ADD CONSTRAINT PK_MC_DIM_CATEGORIA_PROD PRIMARY KEY CLUSTERED (SK_CATEGORIA_PROD)
     WITH (
     ALLOW_PAGE_LOCKS = ON , 
     ALLOW_ROW_LOCKS = ON )
GO

CREATE TABLE DIM_MC_CENTRO_DISTRIBUICAO 
    (
     SK_CENTRO_DISTRIBUICAO NUMERIC (28) NOT NULL , 
     NM_CENTRO_DISTRIBUICAO VARCHAR (60) NOT NULL 
    )
GO 



EXEC sp_addextendedproperty 'MS_Description' , 'Esse atributo irá receber a chave surrogate key da dimensão LOJA. Seu conteúdo será numérico e sequencial e deve ser preenchido na fase de ETL seguindo regras pré-estabelecidas.
' , 'USER' , 'dbo' , 'TABLE' , 'DIM_MC_CENTRO_DISTRIBUICAO' , 'COLUMN' , 'SK_CENTRO_DISTRIBUICAO' 
GO



EXEC sp_addextendedproperty 'MS_Description' , 'Esse atributo irá receber a data de fundação da loja que entregou o produto adquirido pelo cliente. O conteúdo será obrigatório, do tipo data. ' , 'USER' , 'dbo' , 'TABLE' , 'DIM_MC_CENTRO_DISTRIBUICAO' , 'COLUMN' , 'NM_CENTRO_DISTRIBUICAO' 
GO

ALTER TABLE DIM_MC_CENTRO_DISTRIBUICAO ADD CONSTRAINT PK_MC_DIM_CD PRIMARY KEY CLUSTERED (SK_CENTRO_DISTRIBUICAO)
     WITH (
     ALLOW_PAGE_LOCKS = ON , 
     ALLOW_ROW_LOCKS = ON )
GO

CREATE TABLE DIM_MC_CIDADE 
    (
     SK_CIDADE NUMERIC (28) NOT NULL , 
     DIM_MC_ESTADO_SK_ESTADO NUMERIC (28) NOT NULL , 
     NM_CIDADE VARCHAR (25) NOT NULL , 
     NR_POPULACAO NUMERIC (10) , 
     CD_IBGE NUMERIC (8) , 
     NR_ALTITUDE_MAR NUMERIC (8) 
    )
GO 



EXEC sp_addextendedproperty 'MS_Description' , 'Esse atributo irá receber a chave surrogate key da dimensão LOJA. Seu conteúdo será numérico e sequencial e deve ser preenchido na fase de ETL seguindo regras pré-estabelecidas.
' , 'USER' , 'dbo' , 'TABLE' , 'DIM_MC_CIDADE' , 'COLUMN' , 'SK_CIDADE' 
GO



EXEC sp_addextendedproperty 'MS_Description' , 'Esse atributo irá receber a data de fundação da loja que entregou o produto adquirido pelo cliente. O conteúdo será obrigatório, do tipo data. ' , 'USER' , 'dbo' , 'TABLE' , 'DIM_MC_CIDADE' , 'COLUMN' , 'NM_CIDADE' 
GO

ALTER TABLE DIM_MC_CIDADE ADD CONSTRAINT PK_MC_DIM_CIDADE PRIMARY KEY CLUSTERED (SK_CIDADE)
     WITH (
     ALLOW_PAGE_LOCKS = ON , 
     ALLOW_ROW_LOCKS = ON )
GO

CREATE TABLE DIM_MC_CLIENTE 
    (
     SK_CLIENTE NUMERIC (28) NOT NULL , 
     NM_CLIENTE VARCHAR (60) NOT NULL , 
     NR_ESTRELAS NUMERIC (1) , 
     ST_CLIENTE VARCHAR (8) NOT NULL , 
     DT_NASCIMENTO DATE 
    )
GO 



EXEC sp_addextendedproperty 'MS_Description' , 'Esse atributo irá receber a chave surrogate key da dimensão LOJA. Seu conteúdo será numérico e sequencial e deve ser preenchido na fase de ETL seguindo regras pré-estabelecidas.
' , 'USER' , 'dbo' , 'TABLE' , 'DIM_MC_CLIENTE' , 'COLUMN' , 'SK_CLIENTE' 
GO



EXEC sp_addextendedproperty 'MS_Description' , 'Esse atributo irá receber a data de fundação da loja que entregou o produto adquirido pelo cliente. O conteúdo será obrigatório, do tipo data. ' , 'USER' , 'dbo' , 'TABLE' , 'DIM_MC_CLIENTE' , 'COLUMN' , 'NM_CLIENTE' 
GO

ALTER TABLE DIM_MC_CLIENTE ADD CONSTRAINT PK_MC_DIM_CLIENTE PRIMARY KEY CLUSTERED (SK_CLIENTE)
     WITH (
     ALLOW_PAGE_LOCKS = ON , 
     ALLOW_ROW_LOCKS = ON )
GO

CREATE TABLE DIM_MC_ESTADO 
    (
     SK_ESTADO NUMERIC (28) NOT NULL , 
     DIM_MC_REGIAO_SK_REGIAO NUMERIC (28) NOT NULL , 
     SG_ESTADO CHAR (2) NOT NULL , 
     NM_ESTADO VARCHAR (25) NOT NULL , 
     NM_GENTILICO VARCHAR (40) NOT NULL 
    )
GO 



EXEC sp_addextendedproperty 'MS_Description' , 'Esse atributo irá receber a chave surrogate key da dimensão LOJA. Seu conteúdo será numérico e sequencial e deve ser preenchido na fase de ETL seguindo regras pré-estabelecidas.
' , 'USER' , 'dbo' , 'TABLE' , 'DIM_MC_ESTADO' , 'COLUMN' , 'SK_ESTADO' 
GO



EXEC sp_addextendedproperty 'MS_Description' , 'Esse atributo irá receber a data de fundação da loja que entregou o produto adquirido pelo cliente. O conteúdo será obrigatório, do tipo data. ' , 'USER' , 'dbo' , 'TABLE' , 'DIM_MC_ESTADO' , 'COLUMN' , 'NM_ESTADO' 
GO

ALTER TABLE DIM_MC_ESTADO ADD CONSTRAINT PK_MC_DIM_ESTADO PRIMARY KEY CLUSTERED (SK_ESTADO)
     WITH (
     ALLOW_PAGE_LOCKS = ON , 
     ALLOW_ROW_LOCKS = ON )
GO

CREATE TABLE DIM_MC_FORMA_PAGTO 
    (
     SK_FORMA_PAGTO NUMERIC (28) NOT NULL , 
     DS_FORMA_PAGTO VARCHAR (35) NOT NULL 
    )
GO 



EXEC sp_addextendedproperty 'MS_Description' , 'Esta é a Surrogate Key da Dimensão de forma de pagamento. Seu conteúdo deve ser obrigatório e do tipo numérico.' , 'USER' , 'dbo' , 'TABLE' , 'DIM_MC_FORMA_PAGTO' , 'COLUMN' , 'SK_FORMA_PAGTO' 
GO



EXEC sp_addextendedproperty 'MS_Description' , 'Este atributo representa a forma de pagamento escolhida pelo cliente no momento da venda.' , 'USER' , 'dbo' , 'TABLE' , 'DIM_MC_FORMA_PAGTO' , 'COLUMN' , 'DS_FORMA_PAGTO' 
GO

ALTER TABLE DIM_MC_FORMA_PAGTO ADD CONSTRAINT PK_MC_DIM_FORMA_PAGTO PRIMARY KEY CLUSTERED (SK_FORMA_PAGTO)
     WITH (
     ALLOW_PAGE_LOCKS = ON , 
     ALLOW_ROW_LOCKS = ON )
GO

CREATE TABLE DIM_MC_FUNCIONARIO 
    (
     SK_FUNCIONARIO NUMERIC (28) NOT NULL , 
     NM_FUNCIONARIO VARCHAR (60) NOT NULL , 
     DS_CARGO VARCHAR (50) NOT NULL 
    )
GO 



EXEC sp_addextendedproperty 'MS_Description' , 'Esse atributo irá receber a chave surrogate key da dimensão LOJA. Seu conteúdo será numérico e sequencial e deve ser preenchido na fase de ETL seguindo regras pré-estabelecidas.
' , 'USER' , 'dbo' , 'TABLE' , 'DIM_MC_FUNCIONARIO' , 'COLUMN' , 'SK_FUNCIONARIO' 
GO



EXEC sp_addextendedproperty 'MS_Description' , 'Esse atributo irá receber a data de fundação da loja que entregou o produto adquirido pelo cliente. O conteúdo será obrigatório, do tipo data. ' , 'USER' , 'dbo' , 'TABLE' , 'DIM_MC_FUNCIONARIO' , 'COLUMN' , 'NM_FUNCIONARIO' 
GO

ALTER TABLE DIM_MC_FUNCIONARIO ADD CONSTRAINT PK_MC_DIM_FUNCIONARIO PRIMARY KEY CLUSTERED (SK_FUNCIONARIO)
     WITH (
     ALLOW_PAGE_LOCKS = ON , 
     ALLOW_ROW_LOCKS = ON )
GO

CREATE TABLE DIM_MC_ORIGEM_VDA 
    (
     SK_ORIGEM_VENDA NUMERIC (28) NOT NULL , 
     DS_ORIGEM_VENDA VARCHAR (30) NOT NULL 
    )
GO 



EXEC sp_addextendedproperty 'MS_Description' , 'Esta é a Surrogate Key da Dimensão Pedido de Venda. Seu conteúdo deve ser obrigatório e do tipo numérico.' , 'USER' , 'dbo' , 'TABLE' , 'DIM_MC_ORIGEM_VDA' , 'COLUMN' , 'SK_ORIGEM_VENDA' 
GO



EXEC sp_addextendedproperty 'MS_Description' , 'Este é número do pedido no modelo relacional.' , 'USER' , 'dbo' , 'TABLE' , 'DIM_MC_ORIGEM_VDA' , 'COLUMN' , 'DS_ORIGEM_VENDA' 
GO

ALTER TABLE DIM_MC_ORIGEM_VDA ADD CONSTRAINT PK_MC_DIM_ORIGEM_VENDA PRIMARY KEY CLUSTERED (SK_ORIGEM_VENDA)
     WITH (
     ALLOW_PAGE_LOCKS = ON , 
     ALLOW_ROW_LOCKS = ON )
GO

CREATE TABLE DIM_MC_PEDIDO_VENDA 
    (
     SK_PEDIDO_VENDA NUMERIC (28) NOT NULL , 
     NR_PEDIDO_ORIGEM INTEGER NOT NULL , 
     NR_ITEM_PEDIDO_ORIGEM INTEGER NOT NULL 
    )
GO 



EXEC sp_addextendedproperty 'MS_Description' , 'Esta é a Surrogate Key da Dimensão Pedido de Venda. Seu conteúdo deve ser obrigatório e do tipo numérico.' , 'USER' , 'dbo' , 'TABLE' , 'DIM_MC_PEDIDO_VENDA' , 'COLUMN' , 'SK_PEDIDO_VENDA' 
GO



EXEC sp_addextendedproperty 'MS_Description' , 'Este é número do pedido no modelo relacional.' , 'USER' , 'dbo' , 'TABLE' , 'DIM_MC_PEDIDO_VENDA' , 'COLUMN' , 'NR_PEDIDO_ORIGEM' 
GO



EXEC sp_addextendedproperty 'MS_Description' , 'Este é número do item do  pedido no modelo relacional.' , 'USER' , 'dbo' , 'TABLE' , 'DIM_MC_PEDIDO_VENDA' , 'COLUMN' , 'NR_ITEM_PEDIDO_ORIGEM' 
GO

ALTER TABLE DIM_MC_PEDIDO_VENDA ADD CONSTRAINT PK_MC_DIM_PEDIDO_VENDA PRIMARY KEY CLUSTERED (SK_PEDIDO_VENDA)
     WITH (
     ALLOW_PAGE_LOCKS = ON , 
     ALLOW_ROW_LOCKS = ON )
GO

CREATE TABLE DIM_MC_PRODUTO 
    (
     SK_PRODUTO NUMERIC (28) NOT NULL , 
     DIM_MC_SUB_CATEGORIA_PROD_SK_SUB_CATEGORIA_PROD NUMERIC (28) NOT NULL , 
     NM_PRODUTO VARCHAR (90) NOT NULL , 
     NM_TIPO_EMBALAGEM VARCHAR (60) NOT NULL 
    )
GO 



EXEC sp_addextendedproperty 'MS_Description' , 'Esse atributo irá receber a chave surrogate key da dimensão PRODUTO. O conteúdo será numérico e sequencial e deve ser preenchido na fase de ETL seguindo regras pré-estabelecidas.' , 'USER' , 'dbo' , 'TABLE' , 'DIM_MC_PRODUTO' , 'COLUMN' , 'SK_PRODUTO' 
GO



EXEC sp_addextendedproperty 'MS_Description' , 'Esse atributo irá receber o nome do produto cadastrado e que participou de uma venda na Pet Shop Arca de Noé. Seu conteúdo será obrigatório, podendo possuir até 90 caracteres.' , 'USER' , 'dbo' , 'TABLE' , 'DIM_MC_PRODUTO' , 'COLUMN' , 'NM_PRODUTO' 
GO



EXEC sp_addextendedproperty 'MS_Description' , 'Esse atributo irá receber o tipo de embalagem do produto cadastrado que participou de uma venda na Pet Shop Arca de Noé. Seu conteúdo será obrigatório, podendo possuir até 60 caracteres.' , 'USER' , 'dbo' , 'TABLE' , 'DIM_MC_PRODUTO' , 'COLUMN' , 'NM_TIPO_EMBALAGEM' 
GO

ALTER TABLE DIM_MC_PRODUTO ADD CONSTRAINT PK_MC_DIM_PRODUTO PRIMARY KEY CLUSTERED (SK_PRODUTO)
     WITH (
     ALLOW_PAGE_LOCKS = ON , 
     ALLOW_ROW_LOCKS = ON )
GO

CREATE TABLE DIM_MC_REGIAO 
    (
     SK_REGIAO NUMERIC (28) NOT NULL , 
     NM_REGIAO VARCHAR (25) NOT NULL 
    )
GO 



EXEC sp_addextendedproperty 'MS_Description' , 'Esse atributo irá receber a chave surrogate key da dimensão LOJA. Seu conteúdo será numérico e sequencial e deve ser preenchido na fase de ETL seguindo regras pré-estabelecidas.
' , 'USER' , 'dbo' , 'TABLE' , 'DIM_MC_REGIAO' , 'COLUMN' , 'SK_REGIAO' 
GO



EXEC sp_addextendedproperty 'MS_Description' , 'Esse atributo irá receber a data de fundação da loja que entregou o produto adquirido pelo cliente. O conteúdo será obrigatório, do tipo data. ' , 'USER' , 'dbo' , 'TABLE' , 'DIM_MC_REGIAO' , 'COLUMN' , 'NM_REGIAO' 
GO

ALTER TABLE DIM_MC_REGIAO ADD CONSTRAINT PK_MC_DIM_REGIAO PRIMARY KEY CLUSTERED (SK_REGIAO)
     WITH (
     ALLOW_PAGE_LOCKS = ON , 
     ALLOW_ROW_LOCKS = ON )
GO

CREATE TABLE DIM_MC_STATUS_VENDA 
    (
     SK_STATUS_VENDA NUMERIC (28) NOT NULL , 
     DS_STATUS_VENDA VARCHAR (40) NOT NULL 
    )
GO 



EXEC sp_addextendedproperty 'MS_Description' , 'Esta é a Surrogate Key da Dimensão Pedido de Venda. Seu conteúdo deve ser obrigatório e do tipo numérico.' , 'USER' , 'dbo' , 'TABLE' , 'DIM_MC_STATUS_VENDA' , 'COLUMN' , 'SK_STATUS_VENDA' 
GO



EXEC sp_addextendedproperty 'MS_Description' , 'Este é número do pedido no modelo relacional.' , 'USER' , 'dbo' , 'TABLE' , 'DIM_MC_STATUS_VENDA' , 'COLUMN' , 'DS_STATUS_VENDA' 
GO

ALTER TABLE DIM_MC_STATUS_VENDA ADD CONSTRAINT PK_MC_DIM_STATUS_VENDA PRIMARY KEY CLUSTERED (SK_STATUS_VENDA)
     WITH (
     ALLOW_PAGE_LOCKS = ON , 
     ALLOW_ROW_LOCKS = ON )
GO

CREATE TABLE DIM_MC_SUB_CATEGORIA_PROD 
    (
     SK_SUB_CATEGORIA_PROD NUMERIC (28) NOT NULL , 
     DIM_MC_CATEGORIA_PROD_SK_CATEGORIA_PROD NUMERIC (28) NOT NULL , 
     NM_SUB_CATEGORIA_PROD VARCHAR (60) NOT NULL , 
     ST_SUB_CATEGORIA VARCHAR (8) NOT NULL , 
     QT_NOTA_SUB_CATEGORIA_PROD NUMERIC (2) 
    )
GO 



EXEC sp_addextendedproperty 'MS_Description' , 'Esse atributo irá receber a chave surrogate key da dimensão LOJA. Seu conteúdo será numérico e sequencial e deve ser preenchido na fase de ETL seguindo regras pré-estabelecidas.
' , 'USER' , 'dbo' , 'TABLE' , 'DIM_MC_SUB_CATEGORIA_PROD' , 'COLUMN' , 'SK_SUB_CATEGORIA_PROD' 
GO



EXEC sp_addextendedproperty 'MS_Description' , 'Esse atributo irá receber a data de fundação da loja que entregou o produto adquirido pelo cliente. O conteúdo será obrigatório, do tipo data. ' , 'USER' , 'dbo' , 'TABLE' , 'DIM_MC_SUB_CATEGORIA_PROD' , 'COLUMN' , 'NM_SUB_CATEGORIA_PROD' 
GO

ALTER TABLE DIM_MC_SUB_CATEGORIA_PROD ADD CONSTRAINT PK_MC_DIM_SUB_CATEGORIA_PROD PRIMARY KEY CLUSTERED (SK_SUB_CATEGORIA_PROD)
     WITH (
     ALLOW_PAGE_LOCKS = ON , 
     ALLOW_ROW_LOCKS = ON )
GO

CREATE TABLE DIM_MC_TEMPO 
    (
     SK_MC_TEMPO NUMERIC (28) NOT NULL , 
     DT_PEDIDO DATE NOT NULL , 
     NR_ANO INTEGER , 
     NR_SEMESTRE INTEGER , 
     DS_SEMESTRE_ANO VARCHAR , 
     DS_SEMESTRE VARCHAR , 
     NR_TRIMESTRE INTEGER , 
     DS_TRIMESTRE_ANO VARCHAR , 
     DS_TRIMESTRE VARCHAR , 
     NR_MES INTEGER , 
     NR_ANO_MES INTEGER , 
     DS_MES_ANO VARCHAR , 
     DS_MES VARCHAR , 
     DS_ABV_MES CHAR , 
     DS_ABV_MES_ANO VARCHAR , 
     DS_DIA_SEMANA VARCHAR , 
     DS_DATA VARCHAR , 
     NR_DIA_MES INTEGER , 
     NR_DIA_SEMANA INTEGER , 
     NR_DIA_ANO INTEGER , 
     DS_DIA_UTIL_FERIADO VARCHAR , 
     DS_FIM_SEMANA VARCHAR , 
     DS_DATA_EXTENSO VARCHAR , 
     DT_CRIAÇAO_RGT DATETIME 
    )
GO 



EXEC sp_addextendedproperty 'MS_Description' , 'Esse atributo irá receber a chave surrogate key da dimensão TEMPO. O conteúdo será numérico e sequencial e deve ser preenchido na fase de ETL seguindo regras pré-estabelecidas.' , 'USER' , 'dbo' , 'TABLE' , 'DIM_MC_TEMPO' , 'COLUMN' , 'SK_MC_TEMPO' 
GO



EXEC sp_addextendedproperty 'MS_Description' , 'Esse atributo irá recebera data em que ocorreu o evento.  O conteúdo será obrigatório.' , 'USER' , 'dbo' , 'TABLE' , 'DIM_MC_TEMPO' , 'COLUMN' , 'DT_PEDIDO' 
GO



EXEC sp_addextendedproperty 'MS_Description' , 'numero do ano.' , 'USER' , 'dbo' , 'TABLE' , 'DIM_MC_TEMPO' , 'COLUMN' , 'NR_ANO' 
GO



EXEC sp_addextendedproperty 'MS_Description' , 'numero de semestre.' , 'USER' , 'dbo' , 'TABLE' , 'DIM_MC_TEMPO' , 'COLUMN' , 'NR_SEMESTRE' 
GO



EXEC sp_addextendedproperty 'MS_Description' , 'descrição do semestre/ano.' , 'USER' , 'dbo' , 'TABLE' , 'DIM_MC_TEMPO' , 'COLUMN' , 'DS_SEMESTRE_ANO' 
GO



EXEC sp_addextendedproperty 'MS_Description' , 'descrição do semestre.' , 'USER' , 'dbo' , 'TABLE' , 'DIM_MC_TEMPO' , 'COLUMN' , 'DS_SEMESTRE' 
GO



EXEC sp_addextendedproperty 'MS_Description' , 'numero trimestre.' , 'USER' , 'dbo' , 'TABLE' , 'DIM_MC_TEMPO' , 'COLUMN' , 'NR_TRIMESTRE' 
GO



EXEC sp_addextendedproperty 'MS_Description' , 'descrição do trimestre/ano.' , 'USER' , 'dbo' , 'TABLE' , 'DIM_MC_TEMPO' , 'COLUMN' , 'DS_TRIMESTRE_ANO' 
GO



EXEC sp_addextendedproperty 'MS_Description' , 'descrição do trimestre.' , 'USER' , 'dbo' , 'TABLE' , 'DIM_MC_TEMPO' , 'COLUMN' , 'DS_TRIMESTRE' 
GO



EXEC sp_addextendedproperty 'MS_Description' , 'numero do mes.' , 'USER' , 'dbo' , 'TABLE' , 'DIM_MC_TEMPO' , 'COLUMN' , 'NR_MES' 
GO



EXEC sp_addextendedproperty 'MS_Description' , 'numero do ano/mes.' , 'USER' , 'dbo' , 'TABLE' , 'DIM_MC_TEMPO' , 'COLUMN' , 'NR_ANO_MES' 
GO



EXEC sp_addextendedproperty 'MS_Description' , 'descrição do mes/ano.' , 'USER' , 'dbo' , 'TABLE' , 'DIM_MC_TEMPO' , 'COLUMN' , 'DS_MES_ANO' 
GO



EXEC sp_addextendedproperty 'MS_Description' , 'descrição do mes.' , 'USER' , 'dbo' , 'TABLE' , 'DIM_MC_TEMPO' , 'COLUMN' , 'DS_MES' 
GO



EXEC sp_addextendedproperty 'MS_Description' , 'descrição abreviada do mes.' , 'USER' , 'dbo' , 'TABLE' , 'DIM_MC_TEMPO' , 'COLUMN' , 'DS_ABV_MES' 
GO



EXEC sp_addextendedproperty 'MS_Description' , 'descrição abreviado do mes/ano.' , 'USER' , 'dbo' , 'TABLE' , 'DIM_MC_TEMPO' , 'COLUMN' , 'DS_ABV_MES_ANO' 
GO



EXEC sp_addextendedproperty 'MS_Description' , 'descrição do dia da semana.' , 'USER' , 'dbo' , 'TABLE' , 'DIM_MC_TEMPO' , 'COLUMN' , 'DS_DIA_SEMANA' 
GO



EXEC sp_addextendedproperty 'MS_Description' , 'descrição da data.' , 'USER' , 'dbo' , 'TABLE' , 'DIM_MC_TEMPO' , 'COLUMN' , 'DS_DATA' 
GO



EXEC sp_addextendedproperty 'MS_Description' , 'numero do dia do mes.' , 'USER' , 'dbo' , 'TABLE' , 'DIM_MC_TEMPO' , 'COLUMN' , 'NR_DIA_MES' 
GO



EXEC sp_addextendedproperty 'MS_Description' , 'numero do dia da semana.' , 'USER' , 'dbo' , 'TABLE' , 'DIM_MC_TEMPO' , 'COLUMN' , 'NR_DIA_SEMANA' 
GO



EXEC sp_addextendedproperty 'MS_Description' , 'numero do dia do ano.' , 'USER' , 'dbo' , 'TABLE' , 'DIM_MC_TEMPO' , 'COLUMN' , 'NR_DIA_ANO' 
GO



EXEC sp_addextendedproperty 'MS_Description' , 'descrição dia util/feriado.' , 'USER' , 'dbo' , 'TABLE' , 'DIM_MC_TEMPO' , 'COLUMN' , 'DS_DIA_UTIL_FERIADO' 
GO



EXEC sp_addextendedproperty 'MS_Description' , 'descrição fim de semana.' , 'USER' , 'dbo' , 'TABLE' , 'DIM_MC_TEMPO' , 'COLUMN' , 'DS_FIM_SEMANA' 
GO



EXEC sp_addextendedproperty 'MS_Description' , 'descrição da data por extenso.' , 'USER' , 'dbo' , 'TABLE' , 'DIM_MC_TEMPO' , 'COLUMN' , 'DS_DATA_EXTENSO' 
GO



EXEC sp_addextendedproperty 'MS_Description' , 'data/hora da criaçao do registro.' , 'USER' , 'dbo' , 'TABLE' , 'DIM_MC_TEMPO' , 'COLUMN' , 'DT_CRIAÇAO_RGT' 
GO

ALTER TABLE DIM_MC_TEMPO ADD CONSTRAINT PK_MC_DIM_TEMPO PRIMARY KEY CLUSTERED (SK_MC_TEMPO)
     WITH (
     ALLOW_PAGE_LOCKS = ON , 
     ALLOW_ROW_LOCKS = ON )
GO

CREATE TABLE DIM_MC_TIPO_VENDA 
    (
     SK_TIPO_VENDA NUMERIC (28) NOT NULL , 
     DS_TIPO_VNDA VARCHAR (30) NOT NULL 
    )
GO 



EXEC sp_addextendedproperty 'MS_Description' , 'Esta é a Surrogate Key da Dimensão Pedido de Venda. Seu conteúdo deve ser obrigatório e do tipo numérico.' , 'USER' , 'dbo' , 'TABLE' , 'DIM_MC_TIPO_VENDA' , 'COLUMN' , 'SK_TIPO_VENDA' 
GO



EXEC sp_addextendedproperty 'MS_Description' , 'Este é número do pedido no modelo relacional.' , 'USER' , 'dbo' , 'TABLE' , 'DIM_MC_TIPO_VENDA' , 'COLUMN' , 'DS_TIPO_VNDA' 
GO

ALTER TABLE DIM_MC_TIPO_VENDA ADD CONSTRAINT PK_MC_DIM_TIPO_VENDA PRIMARY KEY CLUSTERED (SK_TIPO_VENDA)
     WITH (
     ALLOW_PAGE_LOCKS = ON , 
     ALLOW_ROW_LOCKS = ON )
GO

CREATE TABLE FTO_ENTREGA_PRD_PESQ_SATISF_CD 
    (
     SK_MC_PESQ_SATISF_PROD NUMERIC (28) NOT NULL , 
     DIM_MC_TEMPO_SK_MC_TEMPO NUMERIC (28) NOT NULL , 
     DIM_MC_BAIRRO_SK_BAIRRO NUMERIC (28) NOT NULL , 
     DIM_MC_CENTRO_DISTRIBUICAO_SK_CENTRO_DISTRIBUICAO NUMERIC (28) NOT NULL , 
     DIM_MC_PRODUTO_SK_PRODUTO NUMERIC (28) NOT NULL , 
     DIM_MC_FUNCIONARIO_SK_FUNCIONARIO NUMERIC (28) NOT NULL , 
     DIM_MC_PEDIDO_VENDA_SK_PEDIDO_VENDA NUMERIC (28) NOT NULL , 
     DIM_MC_CLIENTE_SK_CLIENTE NUMERIC (28) NOT NULL , 
     DIM_MC_FORMA_PAGTO_SK_FORMA_PAGTO NUMERIC (28) NOT NULL , 
     DIM_MC_ORIGEM_VDA_SK_ORIGEM_VENDA NUMERIC (28) NOT NULL , 
     DIM_MC_STATUS_VENDA_SK_STATUS_VENDA NUMERIC (28) NOT NULL , 
     DIM_MC_TIPO_VENDA_SK_TIPO_VENDA NUMERIC (28) NOT NULL , 
     VL_UNITARIO NUMERIC (10,2) NOT NULL , 
     QT_VENDA NUMERIC (10,4) NOT NULL , 
     VL_TOT_VENDA NUMERIC (10,2) NOT NULL , 
     VL_PERC_ICMS NUMERIC (8,2) , 
     QT_VENDA_ENTREGUE NUMERIC (10,4) , 
     QT_NOTA_EMBALAGEM NUMERIC (2) , 
     QT_NOTA_PONTUALIDADE NUMERIC (2) , 
     QT_NOTA_CORTESIA NUMERIC (2) 
    )
GO 



EXEC sp_addextendedproperty 'MS_Description' , 'Esse atributo irá receber a quantidade de venda de um determinado produto em um determinado pedido. Seu conteúdo será obrigatório, contendo 6 números inteiros e 4 casas decimais e somente valores positivos são válidos.' , 'USER' , 'dbo' , 'TABLE' , 'FTO_ENTREGA_PRD_PESQ_SATISF_CD' , 'COLUMN' , 'QT_VENDA' 
GO



EXEC sp_addextendedproperty 'MS_Description' , 'Esse atributo irá receber o valor total de venda de um determinado produto em um pedido. Seu conteúdo será obrigatório, contendo números inteiros e 2 casas decimais e somente valores positivos são válidos.
' , 'USER' , 'dbo' , 'TABLE' , 'FTO_ENTREGA_PRD_PESQ_SATISF_CD' , 'COLUMN' , 'VL_TOT_VENDA' 
GO

ALTER TABLE FTO_ENTREGA_PRD_PESQ_SATISF_CD ADD CONSTRAINT PK_MC_FTO_PESQ_SATISF_ENTG_PRD PRIMARY KEY CLUSTERED (SK_MC_PESQ_SATISF_PROD)
     WITH (
     ALLOW_PAGE_LOCKS = ON , 
     ALLOW_ROW_LOCKS = ON )
GO

ALTER TABLE FTO_ENTREGA_PRD_PESQ_SATISF_CD 
    ADD CONSTRAINT FK_MC_DIM_BAIRRO_CLI_PSC FOREIGN KEY 
    ( 
     DIM_MC_BAIRRO_SK_BAIRRO
    ) 
    REFERENCES DIM_MC_BAIRRO 
    ( 
     SK_BAIRRO 
    ) 
    ON DELETE NO ACTION 
    ON UPDATE NO ACTION 
GO

ALTER TABLE DIM_MC_PRODUTO 
    ADD CONSTRAINT FK_MC_DIM_CATEG_PROD FOREIGN KEY 
    ( 
     DIM_MC_SUB_CATEGORIA_PROD_SK_SUB_CATEGORIA_PROD
    ) 
    REFERENCES DIM_MC_SUB_CATEGORIA_PROD 
    ( 
     SK_SUB_CATEGORIA_PROD 
    ) 
    ON DELETE NO ACTION 
    ON UPDATE NO ACTION 
GO

ALTER TABLE FTO_ENTREGA_PRD_PESQ_SATISF_CD 
    ADD CONSTRAINT FK_MC_DIM_CD_PESQ_SATISF FOREIGN KEY 
    ( 
     DIM_MC_CENTRO_DISTRIBUICAO_SK_CENTRO_DISTRIBUICAO
    ) 
    REFERENCES DIM_MC_CENTRO_DISTRIBUICAO 
    ( 
     SK_CENTRO_DISTRIBUICAO 
    ) 
    ON DELETE NO ACTION 
    ON UPDATE NO ACTION 
GO

ALTER TABLE DIM_MC_BAIRRO 
    ADD CONSTRAINT FK_MC_DIM_CIDADE_BAIRRO FOREIGN KEY 
    ( 
     DIM_MC_CIDADE_SK_CIDADE
    ) 
    REFERENCES DIM_MC_CIDADE 
    ( 
     SK_CIDADE 
    ) 
    ON DELETE NO ACTION 
    ON UPDATE NO ACTION 
GO

ALTER TABLE DIM_MC_CIDADE 
    ADD CONSTRAINT FK_MC_DIM_ESTADO_CIDADE FOREIGN KEY 
    ( 
     DIM_MC_ESTADO_SK_ESTADO
    ) 
    REFERENCES DIM_MC_ESTADO 
    ( 
     SK_ESTADO 
    ) 
    ON DELETE NO ACTION 
    ON UPDATE NO ACTION 
GO

ALTER TABLE FTO_ENTREGA_PRD_PESQ_SATISF_CD 
    ADD CONSTRAINT FK_MC_DIM_FORMPAGTO_PESQSATISF FOREIGN KEY 
    ( 
     DIM_MC_FORMA_PAGTO_SK_FORMA_PAGTO
    ) 
    REFERENCES DIM_MC_FORMA_PAGTO 
    ( 
     SK_FORMA_PAGTO 
    ) 
    ON DELETE NO ACTION 
    ON UPDATE NO ACTION 
GO

ALTER TABLE FTO_ENTREGA_PRD_PESQ_SATISF_CD 
    ADD CONSTRAINT FK_MC_DIM_FUNC_PESQ_SATISF FOREIGN KEY 
    ( 
     DIM_MC_FUNCIONARIO_SK_FUNCIONARIO
    ) 
    REFERENCES DIM_MC_FUNCIONARIO 
    ( 
     SK_FUNCIONARIO 
    ) 
    ON DELETE NO ACTION 
    ON UPDATE NO ACTION 
GO

ALTER TABLE FTO_ENTREGA_PRD_PESQ_SATISF_CD 
    ADD CONSTRAINT FK_MC_DIM_ORIG_VDA_PESQSATISF FOREIGN KEY 
    ( 
     DIM_MC_ORIGEM_VDA_SK_ORIGEM_VENDA
    ) 
    REFERENCES DIM_MC_ORIGEM_VDA 
    ( 
     SK_ORIGEM_VENDA 
    ) 
    ON DELETE NO ACTION 
    ON UPDATE NO ACTION 
GO

ALTER TABLE FTO_ENTREGA_PRD_PESQ_SATISF_CD 
    ADD CONSTRAINT FK_MC_DIM_PEDVDA_PESQSATISF FOREIGN KEY 
    ( 
     DIM_MC_PEDIDO_VENDA_SK_PEDIDO_VENDA
    ) 
    REFERENCES DIM_MC_PEDIDO_VENDA 
    ( 
     SK_PEDIDO_VENDA 
    ) 
    ON DELETE NO ACTION 
    ON UPDATE NO ACTION 
GO

ALTER TABLE FTO_ENTREGA_PRD_PESQ_SATISF_CD 
    ADD CONSTRAINT FK_MC_DIM_PROD_PESQ_SATISF FOREIGN KEY 
    ( 
     DIM_MC_PRODUTO_SK_PRODUTO
    ) 
    REFERENCES DIM_MC_PRODUTO 
    ( 
     SK_PRODUTO 
    ) 
    ON DELETE NO ACTION 
    ON UPDATE NO ACTION 
GO

ALTER TABLE DIM_MC_ESTADO 
    ADD CONSTRAINT FK_MC_DIM_REGIAO_BAIRRO FOREIGN KEY 
    ( 
     DIM_MC_REGIAO_SK_REGIAO
    ) 
    REFERENCES DIM_MC_REGIAO 
    ( 
     SK_REGIAO 
    ) 
    ON DELETE NO ACTION 
    ON UPDATE NO ACTION 
GO

ALTER TABLE FTO_ENTREGA_PRD_PESQ_SATISF_CD 
    ADD CONSTRAINT FK_MC_DIM_STAT_VDA_PESQSATISF FOREIGN KEY 
    ( 
     DIM_MC_STATUS_VENDA_SK_STATUS_VENDA
    ) 
    REFERENCES DIM_MC_STATUS_VENDA 
    ( 
     SK_STATUS_VENDA 
    ) 
    ON DELETE NO ACTION 
    ON UPDATE NO ACTION 
GO

ALTER TABLE DIM_MC_SUB_CATEGORIA_PROD 
    ADD CONSTRAINT FK_MC_DIM_SUBCATEG_CATEG FOREIGN KEY 
    ( 
     DIM_MC_CATEGORIA_PROD_SK_CATEGORIA_PROD
    ) 
    REFERENCES DIM_MC_CATEGORIA_PROD 
    ( 
     SK_CATEGORIA_PROD 
    ) 
    ON DELETE NO ACTION 
    ON UPDATE NO ACTION 
GO

ALTER TABLE FTO_ENTREGA_PRD_PESQ_SATISF_CD 
    ADD CONSTRAINT FK_MC_DIM_TEMPO_DT_PEDIDO FOREIGN KEY 
    ( 
     DIM_MC_TEMPO_SK_MC_TEMPO
    ) 
    REFERENCES DIM_MC_TEMPO 
    ( 
     SK_MC_TEMPO 
    ) 
    ON DELETE NO ACTION 
    ON UPDATE NO ACTION 
GO

ALTER TABLE FTO_ENTREGA_PRD_PESQ_SATISF_CD 
    ADD CONSTRAINT FK_MC_DIM_TIP_VDA_PESQSATISF FOREIGN KEY 
    ( 
     DIM_MC_TIPO_VENDA_SK_TIPO_VENDA
    ) 
    REFERENCES DIM_MC_TIPO_VENDA 
    ( 
     SK_TIPO_VENDA 
    ) 
    ON DELETE NO ACTION 
    ON UPDATE NO ACTION 
GO

ALTER TABLE FTO_ENTREGA_PRD_PESQ_SATISF_CD 
    ADD CONSTRAINT PK_MC_DIM_CLIENTE_PESQ_SATISF FOREIGN KEY 
    ( 
     DIM_MC_CLIENTE_SK_CLIENTE
    ) 
    REFERENCES DIM_MC_CLIENTE 
    ( 
     SK_CLIENTE 
    ) 
    ON DELETE NO ACTION 
    ON UPDATE NO ACTION 
GO



-- Relatório do Resumo do Oracle SQL Developer Data Modeler: 
-- 
-- CREATE TABLE                            17
-- CREATE INDEX                             0
-- ALTER TABLE                             49
-- CREATE VIEW                              0
-- ALTER VIEW                               0
-- CREATE PACKAGE                           0
-- CREATE PACKAGE BODY                      0
-- CREATE PROCEDURE                         0
-- CREATE FUNCTION                          0
-- CREATE TRIGGER                           0
-- ALTER TRIGGER                            0
-- CREATE DATABASE                          0
-- CREATE DEFAULT                           0
-- CREATE INDEX ON VIEW                     0
-- CREATE ROLLBACK SEGMENT                  0
-- CREATE ROLE                              0
-- CREATE RULE                              0
-- CREATE SCHEMA                            0
-- CREATE SEQUENCE                          0
-- CREATE PARTITION FUNCTION                0
-- CREATE PARTITION SCHEME                  0
-- 
-- DROP DATABASE                            0
-- 
-- ERRORS                                   0
-- WARNINGS                                 0
