---
title: Uso
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

-  [História 51](https://github.com/transparencia-mg/viz-metadados-frictionless/issues/15): Como publicador de dados eu quero documentar o dicionário de dados de meu recurso ([table schema](https://specs.frictionlessdata.io/table-schema/#language)) em formulário web amigável, com símbolos, filtros, exemplos e notas de rodapé, sendo possível incluir tanto propriedades ad-hoc quanto as preconizadas pelo padrão de metadados [Frictionless Data](https://specs.frictionlessdata.io/) e o resultado do trabalho facilmente visualizado ao longo do processo.

- [História 52](https://github.com/transparencia-mg/viz-metadados-frictionless/issues/16): Como publicador de dados eu quero que o formulário web amigável desenvolvido na [História 41](https://github.com/transparencia-mg/viz-metadados-frictionless/issues/15) seja _agnóstico_, podendo este ser utilizado em ambiente local, web ou até mesmo inserido dentro do próprio CKAN.

- [História 53](https://github.com/transparencia-mg/viz-metadados-frictionless/issues/17): Como publicador de dados eu quero que a aplicação web desenvolvido na [História 42](https://github.com/transparencia-mg/viz-metadados-frictionless/issues/16) seja integrada ao GitHub, permitindo documentar o dicionário de dados de meu recurso de maneira integrada com meu repositório online.

- [História 54]():Como publicador de dados eu quero que a visualização do dicionário de dados no Pda não seja vinculado ao [datastore]().

- [História 55](): Como publicador de dados eu quero que a inserção de registros no [datastore]() ocorra com os tipos de dados corretos.

- [História 56](): Como consumidor de dados eu quero ter acesso à página HTML com a mesma visualização amigável utilizada pelo publicador durante o processo de documentação, com símbolos, filtros e exemplos de todas as propriedades listadas no dicionário de dados construído.

- [História 57](): Como consumidor de dados eu quero visualização em página HTML todas as propriedades listadas no dicionário de dados de determinado recurso em formato de diagrama entidade relacionamento (ER).

- [História 58](): Como publicador de dados eu quero que a visualização amigável em página HTML seja integrada ao Pda via criação de extensão do CKAN.

## Requisitos:

- Adaptações de solução de código aberto existente, com eventual contribuição para o projeto original (upstream) mediante alinhamento da DTA com os responsáveis;
