---
title: Criação
toc: true
---

## Context

Essa necessidade lida com a criação de um _data package_ de maneira independentemente da etapa de catalogação no PdA. 

## Examples / Research

- [Data Package Creator](https://create.frictionlessdata.io/) ([Repo](https://github.com/frictionlessdata/datapackage-ui)) - Aplicativo WEB para criação de _data packages_ gerenciado pela OKFN. Atenderia a necessidade (de não ser necessário edição manual do `datapackage.json` gerado) se permitisse a inclusão de propriedade adicionais (a propriedade `owner_org` é obrigatória para publicação no PdA). Ele foi utilizado em algumas oficinas mão na massa conduzidas pela DTA (adicionar links para gravações) e foi substituída durante a a inclusão do `frictionless-py describe` na oficina. A inferência dos tipos das colunas (não consegui identificar o software) parece ser pior que a do `frictionless-py`.

    Vide [Trello](https://trello.com/c/EjwZN0sh/152-estabelecer-conjunto-obrigat%C3%B3rio-de-metadados-para-o-dados-mg#comment-5f2162928434a452c8a04be1) para uma discussão sobre metadados obrigatórios relevante para essa discussão.

- [Data Curator](https://github.com/qcif/data-curator) - Data Curator is a simple desktop data editor to help describe, validate and share usable open data.

- [Frictionless Components - Schema Editor](https://components.frictionlessdata.io/?path=/story/components-schema--empty)