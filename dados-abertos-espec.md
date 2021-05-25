---
titulo: edição e visualização de metadados de dados abertos
output:
  html_document:
    theme: united
    toc: yes
  pdf_document:
    toc: yes
---

# Visão geral da demanda
<a href="#top">(inicio)</a>

## Obrigações legais e Competência Institucional

[A Lei Federal nº 12.527, de 18 de novembro 2011](http://www.planalto.gov.br/ccivil_03/_ato2011-2014/2011/lei/l12527.htm), conhecida como Lei de Acesso à Informação (LAI), regulou o acesso a informações previsto na Constituição Federal de 1988. Esse acesso à divulgação espontânea de informações de interesse coletivo, produzidas ou custodiadas pelos órgãos e entidades da Administração Pública, é conhecido por Transparência Ativa. No âmbito do Poder Executivo Estadual de Minas Gerais, a transparência ativa foi regulamentada por meio do [Decreto nº 45.969, de 24 de maio de 2012](https://www.almg.gov.br/consulte/legislacao/completa/completa.html?tipo=DEC&num=45969&comp=&ano=2012). 

Tanto a LAI como o Decreto definiram parâmetros a serem adotados no Portal da Transparência do Estado e nos sítios institucionais dos órgãos e entidades. Os mais importantes relacionam-se às diretrizes do processo de abertura e publicação de dados, como:

* presença de ferramenta de pesquisa de conteúdo que permita o acesso à informação de forma objetiva, transparente, clara e em linguagem de fácil compreensão;

* possibilidade de gravação de relatório em diversos formatos eletrônicos, inclusive abertos e não proprietários, tais como planilha e texto, de modo a facilitar a análise da informação;

* possibilidade de acesso automatizado por sistemas externos em formatos abertos, estruturados e legíveis por máquina;

* divulgação das especificações básicas dos formatos utilizados para estruturação da informação;

* garantia a autenticidade e a integridade das informações disponíveis para acesso;

* atualização das informações disponíveis para acesso;

Tais diretrizes foram replicadas, atualmente, na [Lei 14.129 (Lei do Governo Digital)](https://www.in.gov.br/en/web/dou/-/lei-n-14.129-de-29-de-marco-de-2021-311282132), bem como também integram a [Resolução CGE n° 020, de 06/08/2014, da Controladoria Geral do Estado](http://pesquisalegislativa.mg.gov.br/LegislacaoCompleta.aspx?cod=171158&marc=Dados%20abertos) que estabelece conceitos e diretrizes, no âmbito da Administração direta, autárquica e fundacional do Poder Executivo Estadual, em matéria de dados abertos governamentais. A Lei 14.129 ainda detalhou um pouco mais alguns requisitos na promoção da transparência ativa de dados, quer sejam:

* descrição das bases de dados com informação suficiente sobre estrutura e semântica dos dados, inclusive quanto à sua qualidade e à sua integridade;

* permissão irrestrita de uso de bases de dados publicadas em formato aberto;

* completude de bases de dados, as quais devem ser disponibilizadas em sua forma primária, com o maior grau de granularidade possível, ou referenciar bases primárias, quando disponibilizadas de forma agregada;

* atualização periódica, mantido o histórico, de forma a garantir a perenidade de dados, a padronização de estruturas de informação e o valor dos dados à sociedade e a atender às necessidades de seus usuários;

* respeito à privacidade dos dados pessoais e dos dados sensíveis, sem prejuízo dos demais requisitos elencados, conforme a Lei nº 13.709, de 14 de agosto de 2018 (Lei Geral de Proteção de Dados Pessoais);

* intercâmbio de dados entre órgãos e entidades dos diferentes Poderes e esferas da Federação, respeitado o disposto no art. 26 da Lei nº 13.709, de 14 de agosto de 2018 (Lei Geral de Proteção de Dados Pessoais);

A estrutura administrativa responsável por promover e induzir a aplicação de tais diretrizes no âmbito do poder Executivo do Estado de Minas Gerais é a Diretoria Central de Transparência Ativa (DCTA). Essa pasta, à luz do [Decreto estadual 47.774/2019](https://www.almg.gov.br/consulte/legislacao/completa/completa.html?tipo=DEC&num=47774&comp=&ano=2019), em seu artigo 44, tem como competência implementar as ações de transparência ativa do Poder Executivo, com atribuições de:

> I – gerenciar e propor a evolução das consultas e demais funcionalidades do Portal da Transparência e do Portal de Dados Abertos do Poder Executivo, com o objetivo de aprimorar a divulgação das informações junto à sociedade;

> II – orientar e fomentar a transparência ativa nos sítios eletrônicos dos órgãos e entidades do Poder Executivo;

> **III – fomentar a disponibilização de informações públicas em formato aberto no Portal da Transparência e nos sítios eletrônicos dos órgãos e entidades do Poder Executivo**;

> **IV – planejar e coordenar o desenvolvimento das regras de negócio para as ferramentas e sistemas visando a promoção da transparência ativa no âmbito do Poder Executivo**;

> **V – orientar os agentes públicos quanto a disponibilização de informações nos sítios institucionais e nos demais assuntos pertinentes a sua área de atuação.**

As atribuições em destaque salientam o papel da DCTA na concepção e implementação de um processo e regras para abrir, editar, documentar e publicar dados que assegurem aquelas diretrizes anteriormente citadas. Nesse sentido, faz parte do negócio da DCTA adotar:

	a. pelo lado da demanda, um padrão de documentação de dados (metadados) que minimize o custo dos usuários em acessar e compreender os dados;

	b. pelo lado da oferta, um processo com regras que seja o mais prático e fluido possível para os custodiantes de dados do Estado, desde que também se garanta a sua previsibilidade, autenticidade e compliance dos dados que estiverem sendo tratados 

Dessa forma, a partir de julho de 2020, a seção de Dados Abertos do Portal da Transparência (http://www.transparencia.mg.gov.br/dados-abertos) passou a ser hospedada no  novo Portal de Dados Abertos (https://www.dados.mg.gov.br/). Com escopo mais amplo, o Portal de Dados Abertos visa ser ponto de referência para busca e acesso a dados públicos sobre quaisquer assuntos de interesse da sociedade, como saúde, educação, segurança pública, assistência social, esportes e turismo.

O Portal de Dados Abertos utiliza a plataforma CKAN (Comprehensive Knowledge Analytics Network), ferramenta open source ofertada pela Open Knowledge Foundation. Além disso, com o intuito de aumentar a qualidade dos dados e metadados publicados, os conjuntos de dados desse portal são documentados conforme padrão de metadados Fricionless Data ('dados sem fricção'), uma especificação de descrição de dados legível por máquina que possibilita integrações com o CKAN e outras ferramentas, além da validação dos dados perante sua documentação. 

[^] ver trecho do Decreto Federal que trata de Compartilhamento amplo de Dados na seção [Integração/Dependências]() 

## Objetivos Estratégicos

Existe um compromisso institucional de abertura de dados, representado no indicador PERCENTUAL DAS CONSULTAS DO PORTAL DA TRANSPARENCIA DIVULGADAS NO PORTAL DE DADOS ABERTOS DE MANEIRA TEMPESTIVA (%). Esse indicador possui metas para o horizonte 2021-2024 e foi pactuado no Plano Plurianual de Ação Governamental e no Planejamento Estratégico da CGE:

* Plano Plurianual de Ação Governamental: [documento](https://drive.google.com/drive/folders/1FiwRVScro1xL16flbq8mS91o7dpeTw-Z) acessível no [sítio da SEPLAG](http://www.planejamento.mg.gov.br/pagina/planejamento-e-orcamento/plano-plurianual-de-acao-governamental-ppag/plano-plurianual-de-acao). No programa 032 (pág 217), **'Transparência e Fortalecimento da Integridade'**, existe uma diretriz estratégica de _'promover melhora na gestão pública por meio de elevado grau de transparência ativa nas secretarias e vinculadas e menor necessidade de busca por transparência passiva'_. A essa diretriz se vincula o indicador mencionado.

* Planejamento estratégico da Controladoria Geral do Estado (CGE): [documento](https://cge.mg.gov.br/download/category/35-arquivos-diversos?download=426:planejamento-estrategico-2020-2023) acessível no [sítio da CGE](https://cge.mg.gov.br/noticias-artigos/701-cge-minas-divulga-planejamento-estrategico-para-os-proximos-3-anos?highlight=WyJwbGFuZWphbWVudG8iXQ==)

Além dos Planos acima mencionados, a Estrategia de Tecnologia de Informação e Comunicação (TIC) do Estado também contempla com a temática da abertura de dados em Minas Gerais, no eixo que trata de 'Aprimorar a transparência, a acessibilidade e o acesso aos dados abertos por meio de soluções tecnológicas que aproximem o Estado do cidadão'. Nesse eixo, consta a diretriz de implantar 10 novos conjuntos de dados no Portal de Dados Abertos.  O documento dessa política de TIC pode ser acessado [aqui](http://planejamento.mg.gov.br/sites/default/files/documentos/gestao-governamental/gestao-de-ti/estrategia_2021_-_consulta_gestores_de_tic_0.pdf). 

Em consonância com (i) os princípios e normas de transparência e governo aberto expressos nas bases legais, bem como (ii) as competências institucionais da Diretoria Central de Transparência Ativa (DCTA), e também com (iii) os objetivos estratégicos acima enumerados, apresenta-se a contratação de solução de ETL para o Portal de Dados Abertos da Diretoria Central de Transparência da Controladoria Estadual de Minas Gerais, com foco nas etapas de edição e visualização dos metadados dos dados.

### Definições preliminares

Decisões corporativas eficientes derivam de informações oportunas e qualificadas, que, por sua vez, devem ser estruturadas, compreensíveis e reutilizáveis. A informação de qualidade deriva de dados qualificados, o que é uma característica essencial que determina a confiabilidade dos dados para a tomada de decisões.

Os metadados são um tipo de dado usado para descrever outros dados. Como tal, é essencial para todas as funções de gerenciamento de dados. A qualidade dos metadados deve ser gerenciada da mesma maneira que a qualidade de dados.

Para o registro dos metadados, a DCTA utiliza a especificação dos dados sem fricção (Frictionless Data). Os produtos legíveis por máquina derivados dessa documentação são o datapackage.json e o schema.json. Sua elaboração pode ser realizada por meio do datapackage creator, app open source disponibilizada pela Open Knowledge Foundation.

As definições basilares sobre as especificações de metadados Frictionless Data, bem como outros requisitos e premissas da arquitetura do Portal de Dados Abertos são pontuadas a seguir:

1. Especificações de metadados utilizada: Fricionless Data, da Open Knowledge Foundation. Esta premissa é central na visão de arquitetura do portal de Dados Abertos.

De acordo com essa especificação, os dados devem ser organizados em pacotes (datapackages), que compreendem recursos (arquivos físicos na pasta ``data`` ou URL) com sua documentação de metadados (datapackage.json e schema.json)

1.1. Recurso (resource)

1.2. Metadados (datapackage e schema json)

1.3. Conjunto de dados (datapackage)

2. Sistema de controle de versão: Github

3. Interface de publicação de dados utilizado: CKAN

4. Custodiantes de dados

5. Gestores do Portal de Dados Abertos


# Motivação / contexto da demanda

A partir das premissas e definições preliminares anteriores, e considerando a baixa experiência dos custodiantes de dados no manejo de ferramentas de dados, a demanda se estrutura na necessidade de se tornar o mais prático possível o caminho percorrido pelo custodiante dos dados a serem abertos, desde a documentação dos metadados, até a sua publicação e controle de versão/alterações.

* Limitações e problemas a serem resolvidos:

	a. a. Há uma necessidade de controle de versão, com visualizações estáticas para cada alteração, sem publicação, mas para circulação interna entre custodiante e gestor do Portal de Dados, de alguns artefatos (metadados, dicionários, relacionamentos, diagramas). Exemplos:

	    - O CKAN não permite visualização intermediária durante o processo de elaboração ou edição dos metadados, caso não esteja usando a interface gráfica. Ele tabmém não possibilita visualização dos relacionamentos entre tabelas ou explicitação das chaves primárias ou estrangeiras. 

	    - O uso de google docs para a finalidade de compartilhar versões intermediárias dos dicionários de dados, por exemplo, é limitado para acertar conceitos e definições com as áreas de uma forma privativa e que sejam possíveis visualizações de todas as edições.

	b. Forma de elaboração do arquivo em formato json (documentação legível por máquina), a partir das definições estabelecidas no processo de documentação legível por pessoas: a documentação dos metadados (elaboração do datapackage) pode ser realizada pelo datapackage creator. Entretanto, essa ferramenta não exaure toda a gama necessária de descritores de metadados (datapackage creator) que a própria API do CKAN requer. Após sua criação inicial, há uma dificuldade de se editar manualmente o arquivo em formato json gerado (a começar pela escolha da ferramenta de edição).
	
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

## Enquadramento nos requisitos e premissas das normas mais recentes

### Lei Geral de Proteção de Dados

### Decreto 10.046/2019

(dispõe sobre a governança no compartilhamento de dados no âmbito da ADM Federal)

> Seção II: Do compartilhamento amplo de dados 

> Art. 11.  O compartilhamento amplo de dados dispensa autorização prévia pelo gestor de dados e será realizado pelos canais existentes para dados abertos e para transparência ativa, na forma da legislação.

> § 1º  Na hipótese de o dado de compartilhamento amplo de que trata o caput não estar disponível em formato aberto, o solicitante de dados poderá requerer sua abertura junto ao gestor de dados.

> (...)

> § 3º  A Controladoria-Geral da União e o Comitê Interministerial de Governança, de que trata o Decreto nº 9.203, de 22 de novembro de 2017, poderão recomendar, quando econômica e operacionalmente viável, a abertura dos dados de compartilhamento amplo em transparência ativa.

> § 4º  **Os solicitantes e recebedores de dados adotarão medidas para manter a integridade e a autenticidade das informações recebidas**.

> § 5º  **Os dados de compartilhamento amplo serão catalogados no Portal Brasileiro de Dados Abertos em formato aberto**.

* [^] OBS.: minuta de decreto análogo está sendo discutido pelas instâncias estaduais de governança, com alta probabilidade de replicação das definições sobre as categorias de compartilhamento de dados

# Exemplos / Pesquisa
<a href="#top">(inicio)</a>

* [Dataedo](https://dataedo.com/samples/html2/enterprise/#/doc/m99/hr/modules/hr):
    
    - Contém diagramas de relacionamento; 
     
    - permitem navegar para as tabelas de dicionário de dados a partir dos hiperlinks contidos no diagrama;
    
    - para cada tabela, além do dicionário, apresenta as chaves primária e estrangeira e os relacionamentos possíveis entre tabelas (além do método de chamada para cruzá-las)

    - exemplo: https://dataedo.com/samples/html2/enterprise/#/doc/m103t3733/procurement/tables/pur-shipment-lines

* [data.world](https://data.world/kgarrett/covid-19-open-research-dataset)

    - guia para edição de metadados: https://help.data.world/hc/en-us/articles/1260802115269-Custom-metadata

* [kaggle](https://www.kaggle.com/ajaypalsinghlo/world-happiness-report-2021)

* [dbt](https://www.getdbt.com/mrr-playbook/#!/overview)


# Dúvidas
<a href="#top">(inicio)</a>
