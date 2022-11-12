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

>Neste modelo existe uma tabela PESSOA, a qual armazena um código e o nome da pessoa, existe também a tabela CONTATO que por sua vez guarda o tipo de contato e o contato em si, uma PESSOA pode ter 1 ou vários CONTATOS, mas um CONTATO só pode pertencer a uma pessoa. A tabela PESSOA é supertipo de duas outras tabelas, PESSOA JURÍDICA e PESSOA FÍSICA, estas por sua vez armazenam respectivamente cnpj e cpf. Uma PESSOA FÍSICA pode possuir nenhum ou apenas um endereço e um endereço pertence a apenas uma PESSOA FÍSICA, sendo que ENDEREÇO armazena os seguintes atributos: código, cep, tipo de logradouro, logradouro,  bairro, cidade, unidade federativa, numero do imóvel e complemento. Uma PESSOA FÍSICA pode fazer nenhum ou vários pedidos e um pedido é feito por apenas uma PESSOA FÍSICA , ao mesmo tempo que uma PESSOA FÍSICA pode reservar nenhum ou vários pedidos, assim como um pedido é reservado por uma ou várias PESSOAS FÍSICAS . A tabela PEDIDO armazena um código, o método de pagamento e a data de compra. Uma PESSOA FÍSICA também pode utilizar nenhum ou vários VEÍCULOS e um VEÍCULO é utilizado por nenhum ou várias PESSOAS FÍSICAS, sendo que VEÍCULO armazena o tipo do veículo, o nome do veículo e placa. Já a PESSOA JURÍDICA pode fornecer 1 ou vários PRODUTOS e um PRODUTO pode ser fornecido por 1 ou várias PESSOAS JURÍDICAS, PRODUTO por sua vez armazena: código, preço pelo qual foi comprado, preço pelo qual será vendido além do nome do produto. Por fim a tabela PEDIDO pode conter 1 ou vários PRODUTOS e um PRODUTO pode estar em nenhum ou vários PEDIDOS.

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
        
![Alt text](https://github.com/gabrieldpbrunetti/trabalho/blob/main/conceitual_grupo_moises_atualizado.png)
    
    
        
    
#### 5.1 Validação do Modelo Conceitual
    [Grupo01]: [Gustavo, Rafael]
    [Grupo02]: [Caio, Paulo Vitor]

#### 5.2 Descrição dos dados 
    [objeto]: [descrição do objeto]
  
  ---TABELA PESSOA---<br>
  PESSOA: tabela de generalização, sendo supertipo de PESSOA FÍSICA e PESSOA JURÍDICA.<br>
  CODIGO: atributo que armazena um inteiro que será a chave primária da tabela.<br>
  NOME: atributo que armazena o nome da pessoa ou produto.<br>
 
 ---TABELA PESSOA_FISICA---<br>
 PESSOA_FISICA: tabela que armazena os dados de uma pessoa física.<br>
 CPF: armazena o cpf(cadastro de pessoa física) referente a uma pessoa física.<br>
 
 ---TABELA PESSOA_JURIDICA---<br>
 PESSOA_JURIDICA: tabela que armazena os dados de uma pessoa jurídica.<br>
 CNPJ: armazena o cnpj(cadastro nacional de pessoa jurídica) referente a uma pessoa.<br>
 
  ---TABELA VEICULO---<br>
  VEICULO: tabela que armazena os dados referentes a um veículo da empresa.<br>
  PLACA: atributo que armazena a placa do veículo, é a chave primária da tabela.<br>
  TIPO: atributo que armazena o tipo do veículo, ex: moto.<br>
  MODELO: atributo que armazena o modelo do veículo.<br>
 
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
  
  ---TABELA ENDERECO---<br>
  ENDERECO: tabela que armazena todos os dados de um endereço.<br>
  CODIGO: armazena um codigo de identificação.<br>
  CEP: armazena o cep do endereço.<br>
  TIPO_LOGRADOURO: armazena o tipo de logradouro do endereço.<br>
  LOGRADOURO: armazena a descricao do logradouro.<br>
  CIDADE: armazena a cidade do endereço.<br>
  UF: armazena a unidade federativa do endereço.<br>
  NUMERO_IMOVEL: armazena o numero do imóvel do endereço.<br>
  COMPLEMENTO: armazena o complemento do imóvel do endereço.<br>
  
  ---TABELA CONTATO---<br>
  CONTATO: armazena os contatos de uma pessoa.<br>
  TIPO_CONTATO: armazena o tipo do contato armazenado.<br>
  CONTATO: armazena o contato em si.<br>
  
  
  


### 6	MODELO LÓGICO<br>
        a) inclusão do esquema lógico do banco de dados
        b) verificação de correspondencia com o modelo conceitual 
        (não serão aceitos modelos que não estejam em conformidade)
 ![Alt text](https://github.com/gabrieldpbrunetti/trabalho/blob/main/logico_grupo_moises_atualizado.png)

### 7	MODELO FÍSICO<br>
        a) inclusão das instruções de criacão das estruturas em SQL/DDL 
        (criação de tabelas, alterações, etc..)
Link do modelo físico: https://raw.githubusercontent.com/gabrieldpbrunetti/trabalho/main/mod_fisico.sql
<br>
        
       
### 8	INSERT APLICADO NAS TABELAS DO BANCO DE DADOS<br>
        a) inclusão das instruções de inserção dos dados nas tabelas criadas pelo script de modelo físico
        (Drop para exclusão de tabelas + create definição de para tabelas e estruturas de dados + insert para dados a serem inseridos)
        b) Criar um novo banco de dados para testar a restauracao 
        (em caso de falha na restauração o grupo não pontuará neste quesito)
        c) formato .SQL

Link dos inserts: https://raw.githubusercontent.com/gabrieldpbrunetti/trabalho/main/BD_INSERT_GRUPO_MOISES.sql


### 9	TABELAS E PRINCIPAIS CONSULTAS<br>
    https://colab.research.google.com/drive/1CtJPv5HX6Zr0VX7vr2p20nrTGeuu099l?usp=sharing#scrollTo=F0-FEmeYzfGw
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
    https://colab.research.google.com/drive/1NDkvTkNn-Wm9eH-5PkVenHi39T9NgvG6#scrollTo=KzV33Vjxir6Z

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


