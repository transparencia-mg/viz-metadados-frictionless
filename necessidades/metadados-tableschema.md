---
title: Table Schema
toc: true
---

- Full-text fuzzy search no dicionário de dados
- Renderização do markdown da propriedade `description`
- Símbolo para representação de chave primária, chave estrangeira, unique e required
- enum com detalhes adicionais
- Exemplos de dados (sample values; data preview)
- Flexibilidade para campos ad-hoc (estado e município)
- Footnotes and annotations
- O dicionário de dados não deve estar vinculado ao datastore


## Examples

- https://github.com/fjuniorr/age7-data-dictionary

- [dbt docs](https://www.getdbt.com/mrr-playbook/#!/model/model.acme.customer_churn_month)

    - Expandir detalhes de coluna (More...) ($tabela)

- [dataedo](https://dataedo.com/samples/html/Data_warehouse/index.html)

    - Chave estrangeira clicavel ($tabela)
    - Símbolo para representação de chave primária e estrangeira ($tabela)
    - Backlinks com chaves estrangeiras de outras tabelas ($tabela)

-  Modelo de Dados Projeto Lins (ModeloDados_Lins_v0.9_junho2020.pdf)

    Incluir coluna com exemplos dos valores

    ![](static/20220607T202406.png)

## Research

- [ckanext-resourcedictionary](https://github.com/keitaroinc/ckanext-resourcedictionary). CKAN extension that extends the default CKAN Data Dictionary functionality by adding the possibility to create a data dictionary before actual data is uploaded to datastore.
    
    > Extends the default CKAN Data Dictionary functionality by adding possibility to create data dictionary before actual data is uploaded to datastore. For resources that don't have datastore records, the data dictionary can be edited in every way (adding/removing/editing fields) and even completely deleted. For resources that contain datastore records editing data dictionary is limited only to the info properties of a field. Resource dictionary fields, labels and notes are added to the SOLR index as a resource extras.

- Notas de rodapé é um [caso de uso](https://www.w3.org/annotation/wiki/Use_Cases/Annotating_CSV_Data) importante para dados tabulares, previsto em algumas gramaticas de tabelas (como no [pacote R gt](https://gt.rstudio.com/)). A propriedade [notes](https://www.w3.org/TR/2015/REC-tabular-metadata-20151217/#table-notes) definida no âmbito da W3C pode ser reaproveitada para fins de [anotações gerais](https://www.w3.org/TR/tabular-data-primer/#cell-annotations), mas que deveriam ser tratadas de forma especial no dicionário de dados.