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