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
Consiste nas atividades necessárias para que um _data package_ seja: (i) criado; (ii); validado; (iii) publicado; (iv) atualizado; (v) importado.

Atualmente, as ferramentas que são utilizadas para a execução dessas atividades são do framework da Fricitonless Data, do `dpckan` e/ou da integração com Github Actions:

 - Criação: exige a documentação dos metadados no padrão de metadados Frictionless Data (_datapackage_). Pode ser realizada por meio do comando `frictionless describe` (CLI da máquina) ou com a interface gráfica do [datapackaeg creator](https://create.frictionlessdata.io/).
 
 - Validação: serve para prover informação se a estrutura física dos dados reflete a estrutura semântica provida nos metadados (i.e. `datapackage.json`). Pode ser realizada por meio do comando `frictionless validate` (na CLI da máquina) ou via integração da mesma ferramenta Frictionless data com Github Actions.
 
 - Publicação: serve para catalogar o datapackage recém criado e validado no CKAN. Pode ser realizada pelo comando `dpckan dataset create`, via integração da mesma aplicação `dpckan` com Github Actions, ou interface gráfica/GUI nativa do próprio CKAN. 
 
 - Atualização: publica updates do datapackage no CKAN. Pode ser realizada por meio do comando `dpckan dataset update`, via integração da mesma aplicação `dpckan` com Github Actions, ou interface gráfica/GUI nativa do próprio CKAN. 
 
 - Importação: não há forma atual de importar todo o datapackage da plataforma CKAN, a não ser realizando o download individual de todos os arquivos (_resources_) que compõem o referido datapackage. Como todo datapackage deve possuir um arquivo de metadados padronizado `datapackage.json`, cada improtação nessa atual forma demandaria pelo menos 2 downloads de cada conjunto de dados. 

A interface gráfica do CKAN não exige que: haja um datapackage no padrão Frictionless; e que esse datapackage esteja validado. A publicação e atualização via aplicação `dpckan` e via integração com Github Actions possui travas para publicar/atualizar somente datapackages válidos.

- [DEVT Framework](https://framework.frictionlessdata.io/docs/guides/introduction/#user-stories)

## Porque



## Como



## Histórias de usuário:

-  [História 1.1](): Aplicação Web para criação de um data package válido para importação no CKAN
-  [História 1.2](): Aplicação Web para atualização de um data package
-  [História 1.3](): Aplicação Web para validação dos dados de um data package
-  [História 1.4](): Aplicação Web para publicação no CKAN de um data package
-  [História 1.5](): Botão para importação de um data package no CKAN
-  [História 1.6](): Botão para atualização de um data package no CKAN

## Requisitos:

- Aplicação web deve ser agnóstica
- Aplicação web deve interface amigável (vide exemplos)
- Aplicação web deve interfacear com CKAN
- Aplicação web deve interfacear com Framework da Frictionless Data 
- Aplicação web deve interfacear com Github
