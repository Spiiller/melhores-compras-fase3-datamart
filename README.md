# Melhores Compras - Fase 3: Data Ingestion e Ajustes Dimensional

Inclui ajustes no modelo dimensional snowflake para satisfação de entregas, scripts SQL para Oracle/SQL Server, criação de PaaS Azure SQL via CLI, e ingestão ETL de dados de Excel para DB.

## Objetivos
- **Ajustes Dimensional**: Adicionar atributos à DIM_MC_TEMPO (ex: QT_NOTA_*, novos campos de data); Gerar scripts DDL para Oracle/SQL Server.
- **PaaS Azure CLI**: Criar Resource Group, SQL Server, DB "mcfiaposdatabase" via Azure CLI; Configurar firewalls.
- **Ingestão ETL**: Processar planilha "Dados_Entrega_CentroDistribuicao_v2.xlsx" com Python/pandas; Inserir em dimensões/fato (ex: DIM_MC_TEMPO, FTO_ENTREGA_PRD_PESQ_SATISF_CD).

## Tecnologias
- **Banco de Dados**: Azure SQL Database (PaaS), Oracle/SQL Server DDL.
- **Modelagem**: Snowflake schema atualizado (ver docs/Modelo Dimensional Atualizado.pdf).
- **ETL**: Python (pandas, pyodbc) para ler Excel, transformar (merge, limpeza) e inserir no DB.
- **CLI**: Azure CLI para provisionamento (az group create, az sql server create, etc.).

## Instalação e Uso
1. Clone: `git clone https://github.com/spiiller/melhores-compras-fase3-datamart.git`
2. Banco: Rode `sql/apaga_sql_server.sql` para limpar, então `sql/cria_sql_server.sql` no Azure SQL Editor.
3. Modelagem: Abra `docs/Modelo Dimensional Atualizado.pdf` para visualizar ajustes (ex: novos attrs em DIM_MC_TEMPO).
4. Azure CLI: Veja `docs/PBL_FIAPOS_2TSCO_Fase3_item_1_3.docx` para comandos passo a passo (ex: az login, az group create).
5. ETL: Rode `etl/ingestao_dados.py` (instale deps: pip install pandas pyodbc openpyxl; configure conexão DB). Exemplo output: SELECT na dimensão carregada.

## Funcionalidades Principais
- **Modelo Atualizado**: Adicionados attrs à DIM_MC_TEMPO (ex: QT_NOTA_EMBALAGEM, etc.); Scripts DDL para Oracle/SQL Server.
- **PaaS Criação**: Resource Group "mcResourceGroup"; Server "mc-sql-server"; DB "mcfiaposdatabase" (S1 tier, 100GB max); Firewalls para Azure services e IP local.
- **ETL Ingestão**: Lê Excel; Processa colunas (ex: merge source/target, insert/update); Insere em DB (ex: DIM_MC_TEMPO com datas/notas). Teste: SELECT * FROM DIM_MC_TEMPO (ver screenshot em images/).
- **Perguntas Atendidas**: Tempo médio/notas por CD; Melhores CDs; Médias por localização; etc. (queries via ETL/DB).

## Aprendizados
- Ajustes em snowflake (hierarquias, role-playing para datas).
- Provisionamento PaaS via Azure CLI (autenticação, groups, servers, DBs, firewalls).
- ETL Python para Excel-to-DB (pandas cleaning, pyodbc inserts).

