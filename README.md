# TRABALHO 01:  Título do Trabalho
Trabalho desenvolvido durante a disciplina de Banco de dados

# Sumário

### 1. COMPONENTES<br>
Integrantes do grupo<br>
Gabriel de Paula Brunetti: gabrieldpbrunetti@gmail.com<br>
Halisson Julio Lopes Pereira: halissonjulio@gmail.com<br>
Pedro Antônio Barcelos de Oliveira: pedrocec@gmail.com<br>

### 2.INTRODUÇÃO E MOTIVAÇÃO<br>
Este documento contém a especificação do projeto do banco de dados <nome do projeto> 
<br>e motivação da escolha realizada. <br>

> A empresa Far a Whey propõe um modelo de delivery de suplementos, um mercado muito pouco explorado e com muito potencial de crescimento, haja a visto a recente explosão de material, conteúdo e interesse a respeito da área. O modelo proposto busca simplificar todo o processo de fornecimento dos produtos até à entrega para o cliente, visando proporcionar uma boa experiência para os consumidores.
 

### 3.MINI-MUNDO<br>

Descrever o mini-mundo! (Não deve ser maior do que 30 linhas, se necessário resumir para justar) <br>
Entrevista com o usuário e identificação dos requisitos.(quando for o caso de sistemas com cliente  real)<br>
Descrição textual das regras de negócio definidas como um  subconjunto do mundo real 
cujos elementos são propriedades que desejamos incluir, processar, armazenar, 
gerenciar, atualizar, e que descrevem a proposta/solução a ser desenvolvida.

>Uma empresa de venda de suplementos alimentares, a Far A Whey, deseja ter controle sobre as entregas de seus pedidos e sobre o fornecimento de seus produtos. Para isso deseja armazenar de PESSOA dados como: codigo, nome e telefone. É importante destacar que PESSOA é um supertipo. Do FUNCIONARIO se armazena dados como: cpf, email e salario; É importante destacar que um Funcionário pode reservar um ou vários pedidos e um ou vários pedidos podem ser reservados por um ou vários funcionários.  Do CLIENTE se armazena: cpf e endereco (logradouro, descricao, numero_imovel, cidade, unidade_federativa, complemento) ; É importante destacar que um cliente pode comprar um ou vários pedidos; Do ENTREGADOR o: cpf e cnh; um ou vários Entregadores podem entregar nenhum ou vários pedidos e um ou vários entregadores podem utilizar um ou vários veículos; Da DISTRIBUIDORA se armazena: cnpj e email; A Distribuidora fornece um ou vários produtos e são fornecidos um ou vários produtos pela distribuidora, computando a qtd; Do PEDIDO: codigo, dt_compra e metodo_pagamento; Um pedido contém um ou vários produtos e um produto contém nenhum ou vários pedidos; Do VEICULO: placa, modelo, tipo; Do  PRODUTO: codigo, nome, preco_venda, preco_compra; E por fim, relações como Contem e Fornece armazenam qtd.

### 4.PERGUNTAS A SEREM RESPONDIDAS E TABELA DE DADOS<br>
#### 4.1 QUAIS PERGUNTAS PODEM SER RESPONDIDAS COM O SISTEMA PROPOSTO?
    a) O sistema proposto poderá fornecer quais tipos de relatórios e informaçes? 
    b) Crie uma lista com os 5 principais relatórios que poderão ser obtidos por meio do sistema proposto!
    
> a) A empresa Far a Whey poderá entregar relatórios e informações como, o lucro total obtido na venda dos produtos, os produtos que mais são vendidos bem como as distribuidoras que mais vendem, além de dados mais técnicos como por exemplo a quantidade de vezes que um veículo foi alocado por um entregador, assim controlando o desgaste do veículo, os funcionários que estão com mais pedidos sob sua responsabilidade de reserva etc.
* Relatório que informa o lucro da empresa, através da soma do preço de venda dos produtos de todos os pedidos, seguido da subtração do preço de compra
* Relatório que informa os produtos e os tipos de produtos que mais vendem na empresa.
* Relatório dos veículos mais utilizados nas entregas, a fim de evitar que um veículo seja desgastado em excesso.
* Relatório que compara os preços dos produtos que cada distribuidora vende.
* Relatório que mostre em quantos pedidos um funcionário está alocado para efetuar a reserva dos produtos.

 ### 5.MODELO CONCEITUAL<br>
    A) Utilizar a Notação adequada (Preferencialmente utilizar o BR Modelo 3)
    B) O mínimo de entidades do modelo conceitual pare este trabalho será igual a 5 e o Máximo 7.
        * informe quais são as 3 principais entidades do sistema em densenvolvimento<br>(se houverem mais de 3 entidades, pense na importância da entidade para o sistema)       
    C) Principais fluxos de informação/entidades do sistema (mínimo 3). <br>Dica: normalmente estes fluxos estão associados as tabelas que conterão maior quantidade de dados 
    D) Qualidade e Clareza
        Garantir que a semântica dos atributos seja clara no esquema (nomes coerentes com os dados).
        Criar o esquema de forma a garantir a redução de informação redundante, possibilidade de valores null, 
        e tuplas falsas (Aplicar os conceitos de normalização abordados).   
        
![Alt text](https://github.com/gabrieldpbrunetti/trabalho/blob/main/conceitual_grupo.png)
    
    
        
    
#### 5.1 Validação do Modelo Conceitual
    [Grupo01]: [Nomes dos que participaram na avaliação]
    [Grupo02]: [Nomes dos que participaram na avaliação]

#### 5.2 Descrição dos dados 
    [objeto]: [descrição do objeto]
  
  ---TABELA PESSOA---<br>
  PESSOA: tabela de generalização, armazena às informações comuns à qualquer tipo de pessoa, jurídica ou física, sendo o supertipo de funcionario, cliente, entregador e distribuidora.<br>
  CODIGO: atributo que armazena um inteiro que será a chave primária da tabela.<br>
  NOME: atributo que armazena o nome da pessoa ou produto.<br>
  TELEFONE: atributo que armazena o telenofe da pessoa.<br>
 
  ---TABELA CLIENTE---<br>
  CLIENTE: tabela que armazena as informações relativas à um cliente.<br>
  CPF: atributo que armazena os dados referentes ao cadastro de pessoa física de uma pessoa, é a chave primária da tabela.<br>
  ENDERECO: atributo composto que armazena todos os dados referentes ao endereço do cliente(tipo de logradouro, descrião do logradouro, numero do imóvel, cidade, unidade federativa e complemento).<br>
 
  ---TABELA FUNCIONARIO---<br>
  FUNCIONARIO: tabela que armazena os dados referentes aos funcionários da empresa.<br>
  CPF: atributo que armazena os dados referentes ao cadastro de pessoa física de uma pessoa, é a chave primária da tabela.<br>
  SALARIO: atributo que aramzena um número real referente ao salário do funcionário.<br>
  EMAIL: atributo que armazena o email de um funcionário ou distribuídora.<br>
 
  ---TABELA ENTREGADOR---<br>
  ENTREGADOR: tabela que armazena os dados referentes à um entregador.<br>
  CPF: atributo que armazena os dados referentes ao cadastro de pessoa física de uma pessoa, é a chave primária da tabela.<br>
  CNH: atributo que armazena os dados refetentes à Carteira Nacional de Habilitação de um entregador.<br>
 
  ---TABELA VEICULO---<br>
  VEICULO: tabela que armazena os dados referentes a um veículo da empresa.<br>
  PLACA: atributo que armazena a placa do veículo, é a chave primária da tabela.<br>
  TIPO: atributo que armazena o tipo do veículo, ex: moto.<br>
  MODELO: atributo que armazena o modelo do veículo.<br>
 
  ---TABELA DISTRIBUIDORA---<br>
  DISTRIBUIDORA: tabela que armazena os dados referentes à uma distribuidora.<br>
  CNPJ: atributo que armazena o Cadastro Nacional de Pessoa Jurídica de uma distribuidora, é a chave primária da tabela.<br>
  EMAIL: atributo que armazena o email de um funcionário ou distribuídora.<br>
 
  ---TABELA PEDIDO---<br>
  PEDIDO: tabela que armazena os dados de um pedido.<br>
  DT_COMPRA: atributo que armazena a data de compra de um pedido.
  CODIGO: atributo que armazena um inteiro que será a chave primária da tabela.<br>
  METODO_PAGAMENTO: atributo que armazena o metodo de pagamento de um pedido.<br>
 
  ---TABELA PRODUTO---<br>
  PRODUTO: tabela que armazena os dados de um produto.<br>
  CODIGO: atributo que armazena um inteiro que será a chave primária da tabela.<br> 
  NOME: atributo que armazena o nome do produto.<br
  PRECO_VENDA: atributo que armazena o preço que o produto é vendido pela empresa.<br>
  PRECO_COMPRA: atributo que armazeza o preço que o produto é comprado pela empresa.<br>
  
  
  


### 6	MODELO LÓGICO<br>
        a) inclusão do esquema lógico do banco de dados
        b) verificação de correspondencia com o modelo conceitual 
        (não serão aceitos modelos que não estejam em conformidade)
 ![Alt text](https://github.com/gabrieldpbrunetti/trabalho/blob/main/conceitual_grupo.png)

### 7	MODELO FÍSICO<br>
        a) inclusão das instruções de criacão das estruturas em SQL/DDL 
        (criação de tabelas, alterações, etc..) 
        
       
### 8	INSERT APLICADO NAS TABELAS DO BANCO DE DADOS<br>
        a) inclusão das instruções de inserção dos dados nas tabelas criadas pelo script de modelo físico
        (Drop para exclusão de tabelas + create definição de para tabelas e estruturas de dados + insert para dados a serem inseridos)
        b) Criar um novo banco de dados para testar a restauracao 
        (em caso de falha na restauração o grupo não pontuará neste quesito)
        c) formato .SQL


### 9	TABELAS E PRINCIPAIS CONSULTAS<br>
    OBS: Usar o colab para apresentar os resultados que devem incluir as instruções SQL + resultados em forma de tabela.<br>
#### 9.1	CONSULTAS DAS TABELAS COM TODOS OS DADOS INSERIDOS (Todas) <br>

># Marco de Entrega 01: Do item 1 até o item 9.1<br>

#### 9.2	CONSULTAS DAS TABELAS COM FILTROS WHERE (Mínimo 4)<br>
#### 9.3	CONSULTAS QUE USAM OPERADORES LÓGICOS, ARITMÉTICOS E TABELAS OU CAMPOS RENOMEADOS (Mínimo 11)
    a) Criar 5 consultas que envolvam os operadores lógicos AND, OR e Not
    b) Criar no mínimo 3 consultas com operadores aritméticos 
    c) Criar no mínimo 3 consultas com operação de renomear nomes de campos ou tabelas

#### 9.4	CONSULTAS QUE USAM OPERADORES LIKE E DATAS (Mínimo 12) <br>
    a) Criar outras 5 consultas que envolvam like ou ilike
    b) Criar uma consulta para cada tipo de função data apresentada.

#### 9.5	INSTRUÇÕES APLICANDO ATUALIZAÇÃO E EXCLUSÃO DE DADOS (Mínimo 6)<br>
    a) Criar minimo 3 de exclusão
    b) Criar minimo 3 de atualização

#### 9.6	CONSULTAS COM INNER JOIN E ORDER BY (Mínimo 6)<br>
    a) Uma junção que envolva todas as tabelas possuindo no mínimo 2 registros no resultado
    b) Outras junções que o grupo considere como sendo as de principal importância para o trabalho

#### 9.7	CONSULTAS COM GROUP BY E FUNÇÕES DE AGRUPAMENTO (Mínimo 6)<br>
    a) Criar minimo 2 envolvendo algum tipo de junção

#### 9.8	CONSULTAS COM LEFT, RIGHT E FULL JOIN (Mínimo 4)<br>
    a) Criar minimo 1 de cada tipo

#### 9.9	CONSULTAS COM SELF JOIN E VIEW (Mínimo 6)<br>
        a) Uma junção que envolva Self Join (caso não ocorra na base justificar e substituir por uma view)
        b) Outras junções com views que o grupo considere como sendo de relevante importância para o trabalho

#### 9.10	SUBCONSULTAS (Mínimo 4)<br>
     a) Criar minimo 1 envolvendo GROUP BY
     b) Criar minimo 1 envolvendo algum tipo de junção

># Marco de Entrega 02: Do item 9.2 até o ítem 9.10<br>

### 10 RELATÓRIOS E GRÁFICOS (Usar template disponibilizado)
[Template de relatórios](https://github.com/discipbdint/public_samples/blob/main/BD_Exemplo_Relatorios_Empresa_VA.ipynb "Template relatórios")

#### a) análises e resultados provenientes do banco de dados desenvolvido (usar modelo disponível)
#### b) link com exemplo de relatórios será disponiblizado pelo professor no AVA
#### OBS: Esta é uma atividade de grande relevância no contexto do trabalho. Mantenha o foco nos 5 principais relatórios/resultados visando obter o melhor resultado possível.

    

### 11	AJUSTES DA DOCUMENTAÇÃO, CRIAÇÃO DOS SLIDES E VÍDEO PARA APRESENTAÇAO FINAL <br>

#### a) Modelo (pecha kucha)<br>
#### b) Tempo de apresentação 6:40 

># Marco de Entrega 03: Itens 10 e 11<br>
<br>
<br>
<br> 



### 12 FORMATACAO NO GIT:<br> 
https://help.github.com/articles/basic-writing-and-formatting-syntax/
<comentario no git>
    
##### About Formatting
    https://help.github.com/articles/about-writing-and-formatting-on-github/
    
##### Basic Formatting in Git
    
    https://help.github.com/articles/basic-writing-and-formatting-syntax/#referencing-issues-and-pull-requests
    
    
##### Working with advanced formatting
    https://help.github.com/articles/working-with-advanced-formatting/
#### Mastering Markdown
    https://guides.github.com/features/mastering-markdown/

    
### OBSERVAÇÕES IMPORTANTES

#### Todos os arquivos que fazem parte do projeto (Imagens, pdfs, arquivos fonte, etc..), devem estar presentes no GIT. Os arquivos do projeto vigente não devem ser armazenados em quaisquer outras plataformas.
1. <strong>Caso existam arquivos com conteúdos sigilosos<strong>, comunicar o professor que definirá em conjunto com o grupo a melhor forma de armazenamento do arquivo.

#### Todos os grupos deverão fazer Fork deste repositório e dar permissões administrativas ao usuário do git "profmoisesomena", para acompanhamento do trabalho.

#### Os usuários criados no GIT devem possuir o nome de identificação do aluno (não serão aceitos nomes como Eu123, meuprojeto, pro456, etc). Em caso de dúvida comunicar o professor.


Link para BrModelo:<br>
http://www.sis4.com/brModelo/download.html
<br>


Link para curso de GIT<br>
![https://www.youtube.com/curso_git](https://www.youtube.com/playlist?list=PLo7sFyCeiGUdIyEmHdfbuD2eR4XPDqnN2?raw=true "Title")


