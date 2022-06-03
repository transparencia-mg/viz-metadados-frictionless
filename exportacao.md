---
title: Download
toc: true
---

## What

Permitir o download, com controle de versão, de conjuntos de dados como data packages zipados via botão na interface gráfica e URL dedicada.

## Open questions

- O download deve ser do arquivo `datapackage.json` e arquivos de dados ou somente do arquivo `datapackage.json`? Somente o arquivo `datapackage.json` impede que o consumidor realize facilmente um backup local dos arquivos de dados. Isso tem valor, especialmente tendo em vista que o CKAN não oferece versionamento de dados.

- `frictionless-r` suporta a leitura de data packages zipados?

- Vide open questions da [importação e armazenamento de data packages](importacao-metadados.md)

## Examples/Research

- [package.to_zip](https://framework.frictionlessdata.io/docs/references/api-reference/#packageto_zip)

- [Compression of resources](https://specs.frictionlessdata.io/patterns/#compression-of-resources)

- [ckanapi](https://github.com/ckan/ckanapi) - Pacote Python, acessível via interface CLI, que simplifica a interação com a [API do CKAN](http://docs.ckan.org/en/2.9/api/index.html). Ele possui [funcionalidade para exportação](https://github.com/ckan/ckanapi#bulk-dataset-and-resource-export---datapackagejson-format) de conjuntos de dados como pacotes de dados

    ```
    ckanapi dump datasets --remote https://homologa.cge.mg.gov.br/ violencia-mulher  # outputs dataset metadata
    ckanapi dump datasets --remote https://homologa.cge.mg.gov.br/ --datapackages=output violencia-mulher 
    ckanapi dump datasets --remote https://homologa.cge.mg.gov.br/ --datapackages=. violencia-mulher 
    ckanapi dump datasets --remote https://dados.gov.br/ --datapackages=. comissao-propria-de-avaliacao
    ```

   Vide Investigar bug ckanapi dump datasets [#454](https://github.com/fjuniorr/gtd/issues/454).

- [Try this: Frictionless data.world](https://data.world/blog/try-this-frictionless-data-world/) - Exemplo de outro catalogo de dados, [data.world](https://data.world/), que [implementou](https://github.com/qcif/data-curator/issues/391) uma funcionalidade para exportação de pacotes de dados

- [CKAN DataHub](https://old.datahub.io/dataset/mallzee-dataset) - Exemplo de botão `Download Data Package` e URL `https://old.datahub.io/dataset/mallzee-dataset/datapackage.json` com extensão 

- Github zip archive download

- [[20210623T210814]] frictionless - mime type

- [ckanext-versions](https://github.com/datopian/ckanext-versions)