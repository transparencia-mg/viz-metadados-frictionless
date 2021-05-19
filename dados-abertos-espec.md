---
pull_request: '[]()'
titulo: documentação, extração e publicação de dados abertos
output:
  html_document:
    theme: united
    toc: yes
  pdf_document:
    toc: yes
---

# Visão geral da demanda
<a href="#top">(inicio)</a>

Contratação de solução de ETL para o Portal de Dados Abertos da Diretoria Central de Transparência da Controladoria Estadual de Minas Gerais, com foco nas etapas de documentação e da publicação dos dados.

### Definições preliminares

1. Especificações de metadados utilizada: Fricionless Data, da Open Knowledge Foundation. Esta premissa é central na visão de arquitetura do portal de Dados Abertos.

De acordo com essa especificação, os dados devem ser organizados em pacotes (datapackages), que compreendem recursos (arquivos físicos na pasta ``data`` ou URL) com sua documentação de metadados (datapackage.json e schema.json)

1.1. Recurso (resource)

1.2. Metadados (datapackage e schema json)

Para o registro dos metadados, a DCTA utiliza a especificação dos dados sem fricção (Frictionless Data). Os produtos legíveis por máquina derivados dessa documentação são o datapackage.json e o schema.json. Sua elaboração pode ser realizada por meio do datapackage creator, app open source disponibilizada pela Open Knowledge Foundation.

1.3. Conjunto de dados (datapackage)

2. Sistema de controle de versão: Github

3. Interface de publicação de dados utilizado: CKAN

4. Custodiantes de dados

5. Gestores do Portal de Dados Abertos


# Motivação / contexto da demanda

A partir das premissas e definições preliminares anteriores, e considerando a baixa experiência dos custodiantes de dados no manejo de ferramentas de dados, a demanda se estrutura na necessidade de se tornar o mais prático possível o caminho percorrido pelo custodiante dos dados a serem abertos, desde a documentação dos metadados, até a sua publicação e controle de versão/alterações.

* Limitações e problemas a serem resolvidos:

	a. Há uma necessidade de controle de versão, com visualizações estáticas para cada alteração, sem publicação, mas para circulação interna entre custodiante e gestor do Portal de Dados, de alguns artefatos (metadados, dicionários, relacionamentos, diagramas). Exemplos:

	    - O CKAN não permite visualização intermediária durante o processo de elaboração ou edição dos metadados, caso não esteja usando a interface gráfica. Ele tabmém não possibilita visualização dos relacionamentos entre tabelas ou explicitação das chaves primárias ou estrangeiras. 

	    - O uso de google docs para a finalidade de compartilhar versões intermediárias dos dicionários de dados, por exemplo, é limitado para acertar conceitos e definições com as áreas de uma forma privativa e que sejam possíveis visualizações de todas as edições. 

	b. Forma de elaboração do arquivo em formato json (documentação legível por máquina), a partir das definições estabelecidas no processo de documentação legível por pessoas: a documentação dos metadados dos confecção do datapackage pode ser realizada pelo datapackage creator. Entretanto, essa ferramenta não exaure toda a gama necessária de descritores de metadados (datapackage creator) que a própria API do CKAN requer. Após sua criação inicial, há uma dificuldade de se editar manualmente o arquivo em formato json gerado (a começar pela escolha da ferramenta de edição).
	
	c. Multiplicidade de fontes e formatos de dados a serem publicados no Portal de Dados Abertos (arquivos csv ou xls de emails, servidores de ftp, sítios governamentais) 

	
# Especificação
<a href="#top">(inicio)</a>

## Itens

1. Documentação legível por humanos: 

Implementação de solução e capacitação para que custodiantes de dados e gestores do Portal de Dados Abertos criem e controlem as alterações de versão dos dicionários de dados. Essas versões devem ter visualizações estáticas para cada (de forma análoga aos pull requests do github), mas sem necessidade de publicação, e somente com circulação restrita interna entre gestores do portal de Dados Abertos e custodiantes de dados.

Essa solução deve conter ou permitir:

1.1. visualização gráfica/diagrama RD (entidade relacionamento) que mostre recursos que têm relação entre si; 

1.2. navegação entre diagrama e dicionário (tabela), que possibilite a operabilidade de, em se clicando na tabela, o foco para o local do diagrama seja trazido para a visualização; (feição do dicionário de dados tem de responder a interações no diagrama);

1.3. visualização do dicionário tem de mostrar as restrições de cada variável (chave primária/secundária, etc) - essas funcionalidades deverão estar à disposição no momento da elaboração do datapackage (outras ferramentas existem quando ele está pronto, p. ex. = https://github.com/frictionlessdata/ckanext-validation)

1.4. um gerador de site estático: as funcionalidades da solução a ser implementada devem acontecer num formato de site completo, com design, sem nenhum componente de servidor que o sustente

1.5. visualização do dicionário tem de ser uma extensão no CKAN;
 
2. Documentação legível por máquina: 

Implementação de solução e capacitação para que custodiantes de dados realizem a confecção do documento descritivo dos metadados do conjunto de dados (datapackage.json).

3. Extração e publicação: 

Os custodiantes de dados dos diversos órgãos e entidades seguirão um fluxo pelo qual publicam seus conjuntos de dados abertos nos sítios governamentais respectivos.

Um subsistema na DCTA/CGE deve ser implantado para rastrear e coletar tais conjuntos para atualização automática:

 - nos repositórios correspondentes no [github institucional da DCTA](https://github.com/dados-mg) com validação automática;

 - nos conjuntos de dados do [Portal de Dados Abertos (CKAN)](https://dados.mg.gov.br/);

## Obrigações/requisitos
 
 A contratação envolverá:

 1. apresentação de alternativas de solução para os problemas apresentados, diante dos requisitos indicados

 2. discussão com equipe gestora do Portal

 3. implementação das soluções aprovadas de forma que a equipe da DCTA possa conduzí-las de forma independente do contratante
 
 4. elaboração de tutorial auto-instrucional da contratante para postagem no Portal de Dados Abertos e consumo dos órgãos/entidades custodiantes 

# Dependências / Integrações

- CKAN

- GITHUB

- permissões de rede PRODEMGE/CGE


# Exemplos / Pesquisa
<a href="#top">(inicio)</a>

* [Dataedo](https://dataedo.com/samples/html2/enterprise/#/doc/m99/hr/modules/hr):

    - Contém diagramas de relacionamento; 

    - permitem navegar para as tabelas de dicionário de dados a partir dos hiperlinks contidos no diagrama;
    
    - para cada tabela, além do dicionário, apresenta as chaves primária e estrangeira e os relacionamentos possíveis entre tabelas (além do método de chamada para cruzá-las)

    - exemplo: https://dataedo.com/samples/html2/enterprise/#/doc/m103t3733/procurement/tables/pur-shipment-lines

[data.world](https://data.world/kgarrett/covid-19-open-research-dataset)

[kaggle](https://www.kaggle.com/ajaypalsinghlo/world-happiness-report-2021)

* [dbt](https://www.getdbt.com/mrr-playbook/#!/overview)

    - permite visualização do dicionário de dados e em formato SQL

    - exemplo: https://www.getdbt.com/mrr-playbook/#!/model/model.acme.customer_churn_month#description 

[datahub](https://datahub.io/core/gdp#readme)


# Dúvidas
<a href="#top">(inicio)</a>