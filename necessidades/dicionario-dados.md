---
title: Dicionário de dados
toc: true
---

## Contexto

A visualização do dicionário de dados ([table schema](https://specs.frictionlessdata.io/table-schema/#language)) de [recursos](https://specs.frictionlessdata.io/data-resource/#language) no Pda atualmente é bastante limitada, conforme pode ser demonstrado na figura abaixo:

![Dicionário de Dados letters-vowel homologa em 07/07/2022](https://i.imgur.com/Khbeiy5.png)

O principal problema encontrado neste sentido é a inviabilidade de demonstrar graficamente todas as propriedades listadas para o dicionário de dados de determinado recurso.

Neste sendido os usuário do Pda deverão visualizar, de maneira amigável, todas as propriedades existentes no dicionário de dados de cada recurso listado no `datapackage.json` de um conjunto de dados.

## Porque

A W3C recomenda em sua [boa prática 1](https://w3c.br/traducoes/DWBP-pt-br/#ProvideMetadata) que:

> Fornecer metadados é um requisito fundamental na publicação de dados na Web, porque os publicadores de dados e os consumidores de dados podem não se conhecer mutuamente. __Portanto, é essencial fornecer informações que auxiliem pessoas e aplicações de computadores a compreenderem os dados__, assim como outros aspectos importantes que descrevam o conjunto de dados ou a distribuição.

No padrão de metadados _Frictionless Data_, o fornecimento de metadados legíveis por máquina é feita no arquivo `datapackage.json`. No entanto, o fornecimento de metadados legíveis por pessoas não possui uma opção clara no [ecossistema de ferramentas atual](https://frictionlessdata.io/).

## Como

Essa demanda visa permitir a visualização em HTML da documentação de um conjunto de dados realizada com o padrão de metadados [Frictionless Data](https://specs.frictionlessdata.io/).
Esta visualização deve ser disponibilizada tanto durante o processo de produção da documentação (publicadores de dados) quanto durante o utilização dos dados publicados (consumidores de dados).

## Histórias de usuário:

1. Como publicador de dados eu quero documentar o dicionário de dados de meu recurso em formulário online, nos moldes da ferramenta [Frictionless Components](https://components.frictionlessdata.io/?path=/story/components-schema--source) (já em implementação), sendo possível incluir tanto as propriedades preconizadas pelo padrão de metadados [Frictionless Data](https://specs.frictionlessdata.io/) quanto ad-hoc.

2. Como publicador de dados eu quero que a visualização no Pda do dicionário de dados produzido não seja vinculado ao [datastore]().

3. Como publicador de dados eu quero que inserção no [datastore]() ocorra com os tipos de dados corretos.

4. Como usuário final de dados eu quero visualização amigável, com símbolos, filtros e exemplos de todas as propriedades listadas no dicionário de dados de determinado recurso.

## Dependências:

Para atender esses dois casos de uso devem ser desenvolvidos:

- Programa de linha de comando para geração de site HTML estático para visualização dos metadados constantes de um _data package_ 
- Extensão do CKAN para customização das páginas de visualização dos metadados do conjuntos de dados e seus recursos que foram documentados como _data packages_

A visualização nos dois casos deve, na medida do possível, ser a mesma.

:::{.callout-important}
Na etapa de análise comparativa de soluções deve ser especialmente considerado se os esforços de desenvolvimento serão para 

- utilização de uma solução pronta, ou
- construção de uma solução totalmente customizada, ou 
- adaptação de solução de código aberto existente, com eventual contribuição para o projeto original mediante alinhamento de direção com os responsáveis.
:::

A visualização em uma página HTML dos metadados constantes do `datapackage.json` visa sintetizar, inclusive com utilização de diagramas, os metadados padronizados constantes de [data packages tabulares](https://frictionlessdata.io/data-package/#the-data-package-suite-of-specifications), especialmente os constantes da especificação [table schema](https://specs.frictionlessdata.io/table-schema/#language).

Nesse caso, o trabalho de _design_ de interação e interface para elaboração de uma identidade visual atrativa, mas, principalmente, para representação de todos os metadados presentes nas especificações _Frictionless_ em uma única página HTML será reutilizado tanto no gerador de site estático quando na extensão do CKAN.

A possibilidade de reuso de componentes entre essas duas entregas faz parte das definições arquiteturais.














- Full-text fuzzy search no dicionário de dados
- Renderização do markdown da propriedade `description`
- Símbolo para representação de chave primária, chave estrangeira, unique e required
- enum com detalhes adicionais
- Exemplos de dados (sample values; data preview)
- Flexibilidade para campos  (estado e município)
- Footnotes and annotations




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

    ![](/static/20220607T202406.png)

## Research

- [ckanext-resourcedictionary](https://github.com/keitaroinc/ckanext-resourcedictionary). CKAN extension that extends the default CKAN Data Dictionary functionality by adding the possibility to create a data dictionary before actual data is uploaded to datastore.
    
    > Extends the default CKAN Data Dictionary functionality by adding possibility to create data dictionary before actual data is uploaded to datastore. For resources that don't have datastore records, the data dictionary can be edited in every way (adding/removing/editing fields) and even completely deleted. For resources that contain datastore records editing data dictionary is limited only to the info properties of a field. Resource dictionary fields, labels and notes are added to the SOLR index as a resource extras.

- Notas de rodapé é um [caso de uso](https://www.w3.org/annotation/wiki/Use_Cases/Annotating_CSV_Data) importante para dados tabulares, previsto em algumas gramaticas de tabelas (como no [pacote R gt](https://gt.rstudio.com/)). A propriedade [notes](https://www.w3.org/TR/2015/REC-tabular-metadata-20151217/#table-notes) definida no âmbito da W3C pode ser reaproveitada para fins de [anotações gerais](https://www.w3.org/TR/tabular-data-primer/#cell-annotations), mas que deveriam ser tratadas de forma especial no dicionário de dados.