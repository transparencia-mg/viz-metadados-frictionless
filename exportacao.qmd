---
title: Download
toc: true
---

exportação (download) de data packages

- Context
- What
    - Acceptance criteria
- Why
- How
- Open questions
- Examples/Research
    - Low-fidelity mockup
    - Other examples

## What

Permitir o download de conjuntos de dados como pacotes de dados via interface gráfica e URL.

## Open questions

- Vide open questions da importação e armazenamento de data packages [[20220420T105955]]

## Examples/Research

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


