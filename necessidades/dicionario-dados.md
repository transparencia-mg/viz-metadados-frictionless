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

1. Como publicador de dados eu quero documentar o dicionário de dados de meu recurso ([table schema](https://specs.frictionlessdata.io/table-schema/#language)) em formulário online (HTML) amigável, com símbolos, filtros e exemplos, sendo possível incluir tanto propriedades ad-hoc quanto as preconizadas pelo padrão de metadados [Frictionless Data](https://specs.frictionlessdata.io/).

2. Como publicador de dados eu quero que a visualização do dicionário de dados no Pda não seja vinculado ao [datastore]().

4. Como publicador de dados eu quero que a inserção de registros no [datastore]() ocorra com os tipos de dados corretos.

5. Como consumidor de dados eu quero ter acesso à página HTML com a mesma visualização amigável utilizada pelo publicador durante o processo de documentação, com símbolos, filtros e exemplos de todas as propriedades listadas no dicionário de dados construído.

6. Como consumidor de dados eu quero visualização em página HTML todas as propriedades listadas no dicionário de dados de determinado recurso em formato de diagrama entidade relacionamento (ER).

7. Como publicador de dados eu quero que a visualização amigável em página HTML seja integrada ao Pda via criação de extensão do CKAN.

## Requisitos:

- [ ] Extensão do CKAN para customização das páginas de visualização dos metadados do conjuntos de dados e seus recursos que foram documentados como _data packages_




Para atender esses dois casos de uso devem ser desenvolvidos:

 


A visualização nos dois casos deve, na medida do possível, ser a mesma.

:::{.callout-important}
Na etapa de análise comparativa de soluções deve ser especialmente considerado se os esforços de desenvolvimento serão para 

- utilização de uma solução pronta, ou
- construção de uma solução totalmente customizada, ou 
- adaptação de solução de código aberto existente, com eventual contribuição para o projeto original mediante alinhamento de direção com os responsáveis.
:::
























## Examples

- https://github.com/fjuniorr/age7-data-dictionary



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








- [ ] Renderização do markdown da propriedade description (**cofirmar se é o backstick de snippet de códigos no conjunto**):  https://homologa.cge.mg.gov.br/dataset/letters-vowel



- [ ] Exemplos de dados (sample values; data preview)
![exemplos-valores](https://user-images.githubusercontent.com/52294411/177840096-e6505ab0-0688-4865-96ef-1b811ecb530b.png)

- [ ] propriedade `enum` com detalhes adicionais

- [ ] Flexibilidade para campos ad-hoc (estado e município)

- [ ] notas de rodapé e anotações 

Assim, eu poderia compreender mais facilmente os dados que estão representados no dataset.

## requisitos
- O dicionário de dados não deve estar vinculado ao datastore; relacionamento entre componentes Filestore, Datastore e Datapusher: https://github.com/transparencia-mg/dpckan/issues/41#issue-939171618
- Utilizar o componente _react_ da [Frictionless Data](https://components.frictionlessdata.io/?path=/story/components-schema--empty); fork no repositório

## questões

* separação do datastore do datafile é vinculada à história desta necessidade ou é história isolada?