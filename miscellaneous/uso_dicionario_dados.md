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