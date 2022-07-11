---
title: Publicação
toc: true
format:
  html:
    css: ../style.css
---

## Contexto

A macroetapa de Publicação é a segunda, numa sequência cronologicamente ordenada, no ciclo de produção, publicação, distribuição, acesso e uso dos dados.
É de responsabilidade do publicador (produtor) dos dados, mas também pode ter necessidades atreladas ao uso por parte dos consumidores (usuários finais).
Consiste nas atividades necessárias para que um _data package_ seja: importado e atualizado.

Atualmente, o CKAN não possui suporte nativo para a importação de pacotes de dados. Ela é feita por meio de uma ferramenta CLI desenvolvida internamente, o [dpckan](https://github.com/transparencia-mg/dpckan). O `dpckan` faz o mapeamento de algumas propriedades entre _frictionless_ e CKAN [^1].

O CKAN armazena o arquivo `datapackage.json` como um recurso adicional no conjunto de dados do CKAN [^2].

Apesar da importância de um fluxo de importação programático que permita a automatização das publicações e atualizações, as oficinas piloto com os órgãos e entidades tem demonstrado a importância de um fluxo de importação manual via interface gráfica para usuários iniciantes e/ou não técnicos (Ver[^3] e [^4]).

## Porque

Não existe forma de importação do pacote de dados integral.

## Como

- Como forma de evitar o acoplamento ao CKAN e simplificar o esforço de desenvolvimento, a aplicação WEB deve ser _standalone_

## Histórias de usuário:

-  [História 2.1](): Botão para importação de um data package no CKAN
-  [História 2.2](): Botão para atualização de um data package no CKAN

## Requisitos:

- Oferecer uma interface Web GUI, além da interface CLI já existente (dpckan) para a publicação.
- Aplicação web deve ser agnóstica
- Aplicação web deve interface amigável (vide exemplos)
- Aplicação web deve interfacear com CKAN
- Aplicação web deve interfacear com Framework da Frictionless Data 
- Aplicação web deve interfacear com Github

# Exemplos

- [Replicação e sincronização de um data package com CKAN](https://discuss.okfn.org/t/replicacao-e-sincronizacao-de-um-data-package-com-ckan/9830) - Discussão sobre o fluxo de importação de pacotes de dados armazenados em um repositório git com indicação de ferramentas possivelmente úteis oferecidas por um ex-desenvolvedor da Open Knowledge. Ele relatou que a extensão [ckanext-datapackager](https://github.com/frictionlessdata/ckanext-datapackager) é próxima do que precisamos, mas não permite sobrescrever um conjunto de dados já existente.

- Frictionless CKAN Mapper - Bibliotecas em [Python](https://github.com/frictionlessdata/frictionless-ckan-mapper) e [Javascript](https://github.com/datopian/frictionless-ckan-mapper-js) para conversão de pacotes de dados _frictionless_ e conjuntos de dados CKAN. 

- [CKAN Client Guide](https://tech.datopian.com/ckan-client-guide/) - Guia da [Datopian](https://www.datopian.com/) sobre as bibliotecas [ckan-client-py](https://github.com/datopian/ckan-client-py) e [ckan-client-js](https://github.com/datopian/ckan-client-js) para interação programática com uma instância do CKAN

- Support for Simple Data Format Data Packages [#778](https://github.com/OpenRefine/OpenRefine/issues/778) - Discussão sobre importação e exportação de pacotes de dados usando [Open Refine](https://openrefine.org/)

- Advance CKAN plugin to the stable state [#475](https://github.com/frictionlessdata/frictionless-py/issues/475)

- [CKAN - Data Curator Integration](https://github.com/ODIQueensland/ckan-data-curator-integration)

- [Publish Data - Datopian](https://github.com/datopian/tech.datopian.com/tree/master/publish)

[^1]: É possível uma conversão ida-e-volta sem perda de metadados (_lossless_) entre um pacote de dados frictionless e um conjunto de dados CKAN? A instalação da extensão [ckanext-scheming](https://github.com/ckan/ckanext-scheming) já foi solicitada à DTI como forma de lidar com parte dessa transição.
[^2]: Como o pacote de dados e seu conteúdo devem ser armazenados no CKAN?
[^3]: No [blog](https://tech.datopian.com/publish/#introduction) da Datopian existe uma discussão sobre os fluxos alternativos para publicação de conjuntos de dados. Uma discussão mais ampla sobre os trade-offs entre interfaces GUI e CLIs pode ser encontrada [aqui](http://www.catb.org/esr/writings/taoup/html/ch11s04.html).
[^4]: Como permitir que alterações nos metadados sejam realizadas pela interface gráfica e/ou interface de linha de comando? Vide dpckan#153
