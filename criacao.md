---
title: Criação
toc: true
---

## Context

Essa necessidade lida com a criação e eventuais atualizações de um _data package_. 
Ela é independente das etapas de validação (de dados) e da catalogação no PdA, mas faz sentido que seja ofertado para os publicadores uma experiência integrada.

- GUI Desktop
- GUI Web
- CLI
- Github Actions

## What

- Aplicação Web para preenchimento de metadados e exportação de um _data package_

## How

- Como forma de evitar o acoplamento ao CKAN e simplificar o esforço de desenvolvimento, a aplicação WEB deve ser _standalone_

## Examples / Research

- [Data Package Creator](https://create.frictionlessdata.io/) ([datapackage-ui](https://github.com/frictionlessdata/datapackage-ui) e [tableschema-ui](https://github.com/frictionlessdata/tableschema-ui)) - Aplicativo WEB para criação de _data packages_ gerenciado pela OKFN. Atenderia a necessidade (de não ser necessário edição manual do `datapackage.json` gerado) se permitisse a inclusão de propriedade adicionais. As seguintes são particularmente problemáticas tendo em vista nossa experiência: 

    - `owner_org`: obrigatória para publicação no PdA
    - `dialect.delimiter`: CSVs no Brasil utilizam `;`
    - `schema.fields.number.decimalChar` e `schema.fields.number.groupChar`: CSVs exportados do excel
    
    Além disso, a inferência dos tipos das colunas parece ser pior que a do `frictionless-py`.

    Ele foi utilizado em algumas oficinas mão na massa conduzidas pela DTA (adicionar links para gravações) e foi substituída durante a a inclusão do `frictionless-py describe` na oficina. 

    Vide [Trello](https://trello.com/c/EjwZN0sh/152-estabelecer-conjunto-obrigat%C3%B3rio-de-metadados-para-o-dados-mg#comment-5f2162928434a452c8a04be1) para uma discussão sobre metadados obrigatórios relevante para essa discussão.

- [Frictionless Components - Schema Editor](https://components.frictionlessdata.io/?path=/story/components-schema--empty) ([Repo](https://github.com/frictionlessdata/components))

- [Frictionless Application](https://application.frictionlessdata.io/) ([Repo](https://github.com/frictionlessdata/application)) - Data management application for Browser and Desktop that provides functionality to describe, extract, validate, and transform tabular data

- [Data Curator](https://github.com/qcif/data-curator) - Data Curator is a simple desktop data editor to help describe, validate and share usable open data.

- [Metatab and Metapack](https://www.metatab.org/)

- Planilhas Templates STN

- [ckanext-validation - label:"Schema Creator" ](https://github.com/frictionlessdata/ckanext-validation/labels/Schema%20Creator) CKAN extension for validating Data Packages using Table Schema.

- https://github.com/transparencia-mg/acordo-judicial-reparacao-vale

- Create a UI element/workflow that allows a user to add properties and values to the data package that may not have been defined in the Data Package's JSON Schema [#11](https://github.com/frictionlessdata/datapackage-ui/issues/11)

    > closing. the built in [json-editor](https://github.com/json-editor/json-editor) functionality is good enough for our use case

- [UI for editing YAML/JSON backed by version control](https://news.ycombinator.com/item?id=22889663)

    > I built something like that when I needed expose config changes to non-technical peers using https://github.com/rjsf-team/react-jsonschema-form + one POST function that checkouts git and commit a change

- Multiple types does not work [#700](https://github.com/rjsf-team/react-jsonschema-form/issues/700)

- [Proposal] JSON UI Schema: define UI behaviours for all current elements [#252](https://github.com/json-schema-org/json-schema-spec/issues/252)

- https://github.com/brutusin/json-forms
- https://github.com/eclipsesource/jsonforms
- https://github.com/jsonform/jsonform