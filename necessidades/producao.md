---
title: Produção
toc: true
format:
  html:
    css: ../style.css
---

## Contexto

A macroetapa de Produção é a primeira, numa sequência cronologicamente ordenada, no ciclo de produção, publicação, distribuição, acesso e uso dos dados.
É de responsabilidade do publicador (produtor) dos dados, mas também pode ter necessidades atreladas ao uso por parte dos consumidores (usuários finais).
Consiste nas atividades necessárias para que um _data package_ seja: criado, validado, catalogado e atualizado.

Atualmente, as ferramentas que são utilizadas para a execução dessas atividades são do framework da Fricitonless Data, do `dpckan` (CLI) e/ou da integração com Github Actions (GUI Web):

 - Criação: exige a documentação dos metadados no padrão de metadados Frictionless Data (_datapackage_). Pode ser realizada por meio do comando `frictionless describe` (CLI) ou com a interface gráfica do [datapackaeg creator](https://create.frictionlessdata.io/) (GUI Web).
 
 - Validação: serve para prover informação se a estrutura física dos dados reflete a estrutura semântica provida nos metadados (i.e. `datapackage.json`). Pode ser realizada por meio do comando `frictionless validate` (CLI) ou via integração da mesma ferramenta Frictionless data com Github Actions.
 
 - Catalogação: serve para catalogar o datapackage recém criado e validado no CKAN. Pode ser realizada pelo comando `dpckan dataset create` (CLI), via integração da mesma aplicação `dpckan` com Github Actions, ou interface gráfica/GUI Web do CKAN. 
 
 - Atualização: publica updates do datapackage no CKAN. Pode ser realizada por meio do comando `dpckan dataset update`, via integração da mesma aplicação `dpckan` com Github Actions, ou interface gráfica/GUI nativa do próprio CKAN. 
 
A interface gráfica do CKAN não exige que: haja um datapackage no padrão Frictionless; e que esse datapackage esteja validado. A publicação e atualização via aplicação `dpckan` e via integração com Github Actions possui travas para catalogar/atualizar somente datapackages válidos.

- [DEVT Framework](https://framework.frictionlessdata.io/docs/guides/introduction/#user-stories)

## Porque

Apesar da importância de um fluxo de importação programático que permita a automatização da criação, validação e catalogação, as oficinas piloto com as organizações publicadoras de dados têm demonstrado a importância de um fluxo de importação manual via interface gráfica para usuários iniciantes e/ou não técnicos. Portanto, faz sentido que seja ofertado para os publicadores uma experiência integrada:

- GUI Desktop
- GUI Web
- CLI
- Github Actions

## Como

- Como forma de evitar o acoplamento ao CKAN e simplificar o esforço de desenvolvimento, a aplicação WEB deve ser _standalone_


## Histórias de usuário:

-  [História 1.1](https://github.com/transparencia-mg/viz-metadados-frictionless/issues/21): Aplicação Web para criação de um data package válido para importação no CKAN
-  [História 1.2](https://github.com/transparencia-mg/viz-metadados-frictionless/issues/22): Aplicação Web para atualização de um data package
-  [História 1.3](https://github.com/transparencia-mg/viz-metadados-frictionless/issues/20): Aplicação Web para validação dos dados de um data package
-  [História 1.4](https://github.com/transparencia-mg/viz-metadados-frictionless/issues/23): Aplicação Web para publicação no CKAN de um data package


## Requisitos:

- Oferecer uma interface Web GUI para a criação, validação e catalogação de um datapackage no CKAN.
- Aplicação web deve ser agnóstica
- Aplicação web deve interface amigável (vide exemplos)
- Aplicação web deve interfacear com CKAN
- Aplicação web deve interfacear com Framework da Frictionless Data 
- Aplicação web deve interfacear com Github
