---
title: Acesso
toc: true
format:
  html:
    css: ../style.css
---

## Contexto

Atualmente, os conjuntos de dados publicados como datapackages no PdA não permitem:
- o download, por um botão, diretamente na Web GUI, como pasta zipada, com o datapackage.json e demais arquivos (resources) que o compõem. É necessário realizar o download individual de cada um dos recursos que compõem o conjunto. 
- leitura, diretamente pela URL do dataset. É necesário abrir cada arquivo na Web GUI para conhecer o endereço URL de cada resource e poder referenciá-lo em ferramentas de leitura.

## Porque

Valor está no uso, sendo assim, quanto mais fácil acessar os dados mais valor teremos

## Como

Essa demanda visa:
	- Permitir o download, com controle de versão, de conjuntos de dados como data packages zipados via botão na interface gráfica e URL dedicada.
	
	- Permitir a leitura direta, com controle de versão, de conjuntos de dados do CKAN com as ferramentas frictionless (Python, R, JS):
	

## Histórias de usuário:

-  [História 4.1](https://github.com/transparencia-mg/viz-metadados-frictionless/issues/26): 
-  [História 4.2](https://github.com/transparencia-mg/viz-metadados-frictionless/issues/27)

## Requisitos:

- O conteúdo do download deve ser do arquivo datapackage.json e arquivos de dados
- O download deve exportar uma pasta zipada com seu conteúdo para o local do usuário
- Os arquivos de dados devem estar na pasta /data para manutenção do caminho relativo `resource.path`
- Snippets na interface de usuário devem indicar como fazer a leitura com diferentes ferramentas.
