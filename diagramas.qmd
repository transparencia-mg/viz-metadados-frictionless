---
title: Diagramas
toc: true
---

## What

Diagrama interativo dos recursos (_table schemas_) de um pacote de dados. Devem ser representados no diagrama:

- Nomes dos campos (`fields.name`)
- Tipos dos campos (`fields.type(fields.format)`)
- Chaves primárias (`schema.primaryKey`)
- Chaves estrangeiras (`schema.foreignKeys`)
- Relacionamentos

No CKAN o diagrama deve estar localizado em uma aba própria na raiz do conjunto de dados.

### Acceptance criteria

1. Se múltiplos recursos compartilham o mesmo _table schema_ (após expansão e dereferenciamento) o diagrama deve apresentar apenas aqueles que são únicos, com indicação que existem outros.

    O objetivo aqui é facilitar a compreensão da modelagem conceitual dos dados. Por exemplo, todos os 100+ recursos do conjunto [remuneracao-servidores-ativos](https://dados.mg.gov.br/dataset/remuneracao-servidores-ativos) compartilham o mesmo _table schema_?
1. Informações adicionais (tooltip) dos campos (`fields.title` e `fields.description`) devem ser exibidas quando o cursor do mouse passar em cima do mesmo
1. Exportar para PDF
1. Exportar diagramas para SVG
1. ~Informações adicionais (tooltip) dos recursos (`resource.title` e `resource.description`) devem ser exibidas quando o cursos do mouse passar em cima do mesmo~
1. ~Customização da visibilidade das colunas nos diagramas~
1. ~Interatividade entre diagramas e dicionários de dados~

## Why

Facilitar a compreensão dos relacionamentos entre recursos por meio de uma representação visual/gráfica.

## How

O diagrama deve ser implementado como um [componente react frictionless](https://github.com/frictionlessdata/components).

## Examples

### Low-fidelity mockup

![](20220419T211500.drawio.svg)

### Other examples

- O aspecto de interatividade é capturado no [dbdiagram](https://dbdiagram.io/d) e [Quick_DBD](https://app.quickdatabasediagrams.com/#/)

- [Qliksense Data Model Viewer](https://subscription.packtpub.com/book/big_data_and_business_intelligence/9781788997058/1/ch01lvl1sec17/previewing-data-in-the-data-model-viewer)

- [Power BI Model View](https://docs.microsoft.com/en-us/power-bi/transform-model/desktop-relationship-view)

- https://dbdiagram.io/d

    - Diagramas interativos ($diagrama)
    - Tooltip para tabelas e colunas ($diagrama)
    - Auto-arrange

- [dbt docs](https://www.getdbt.com/mrr-playbook/#!/model/model.acme.customer_churn_month)

    - Diagrama com controle de visibilidade ($diagrama)
    - Botão esquerdo com opções de foco "Hide this and parents" "Hide this and children" ($diagrama)

- [dataedo](https://dataedo.com/samples/html/Data_warehouse/index.html)

    - Diagrama responsivo conectado a tabela associada ($diagrama)

- [Data model diagrams in R](https://github.com/bergant/datamodelr)

    - Focused Data Model ($diagrama)
    - Hide non-key columns ($diagrama)

- Oracle Data Modeler
  
  - Select neighbors ($diagrama)
  - Resize to visible ($diagrama)