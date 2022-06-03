---
title: Leitura
toc: true
---

## What

Permitir a leitura direta, com controle de versão, de conjuntos de dados do CKAN com as ferramentas frictionless (Python, R, JS)

```python
from frictionless import Package

dp = Package('https://dados.mg.gov.br/dataset/name/datapackage.json')
df = dp.get_resource('resource_name').to_pandas()
```

```R
library(frictionless)

dp <- read_package('https://dados.mg.gov.br/dataset/name/datapackage.json')
df <- read_resource(dp, 'resource_name')
```

### Acceptance criteria

- Snippets na interface de usuário devem indicar como fazer a leitura com diferentes ferramentas. 

    Exemplos: 
    - [Open Data Blend](https://docs.opendatablend.io/open-data-blend-datasets/loading-data-files-in-r)
    - [Quilt](https://open.quiltdata.com/b/ai2-semanticscholar-cord-19/tree/)
    - [Datahub](https://datahub.io/core/s-and-p-500-companies)

## Open questions

- É possível a leitura do `datapackage.json` a partir da URL raiz do conjunto de dados `https://dados.mg.gov.br/dataset/name/`?

- Tanto o [Datahub](https://datahub.io/core/s-and-p-500-companies) quanto o [Datahub CKAN](https://old.datahub.io/dataset/mallzee-dataset) utilizam a propriedade `resource.path` como URLs e não como caminhos relativos. Existe alguma vantagem em alterar o `resource.path` dos data packages durante a importação ou exportação no lugar de alterar as rotas da aplicação? Com esse tipo de alteração o link `https://dados.mg.gov.br/dataset/12253b1a-1171-4453-90f8-f84517cf147b/resource/f0486981-a883-45f2-815d-b3ebca32e6b7/download/datapackage.json` passaria a funcionar para leitura.

- Pode existir um descolamento entre a propriedade `resource.path` do data package e a propriedade `resource.url` do CKAN?

## Examples/Research

- [Publish Your Data Package Online](https://frictionlessdata.io/blog/2016/08/29/publish-online/) - Explicação das alternativas para disponibização na internet de pacotes de dados (_It’s Only Files Online_). O CKAN precisaria ser alterado para seguir as [Key Tips](https://frictionlessdata.io/blog/2016/08/29/publish-online/#key-tips) desse artigo.

- Conflito entre nome dos conjuntos de dados criados de forma descentralizada por ausência de namespaces [#52](https://github.com/dados-mg/issues/issues/52)

- A proposta de valor do frictionless é fazer com que o capítulo não seja https://r4ds.had.co.nz/data-import.html

- Se a instalação de ferramentas é uma fonte de custo e fricção, conseguimos permitir a integração do CKAN com _notebooks_ computacional, como Binder? Vide [Binder + Zenodo: A how-to guide](https://blog.jupyter.org/binder-with-zenodo-af68ed6648a6) e [Six easy ways to run your Jupyter Notebook in the cloud](https://www.dataschool.io/cloud-services-for-jupyter-notebook/)