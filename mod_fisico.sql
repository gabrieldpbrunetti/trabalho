CREATE TABLE PESSOA (
	codigo INTEGER PRIMARY KEY,
	nome VARCHAR(100),
	telefone VARCHAR(15)
);

CREATE TABLE FUNCIONARIO (
	cpf CHAR(14) PRIMARY KEY,
	email VARCHAR(100),
	salario FLOAT,
	FK_PESSOA_codigo INTEGER REFERENCES PESSOA(codigo),
	supervisor_cpf CHAR(14) REFERENCES FUNCIONARIO(cpf)
);

CREATE TABLE CLIENTE (
	cpf CHAR(14) PRIMARY KEY, 
	tipo_logradouro VARCHAR(30), 
	descricao VARCHAR(200), 
	numero_imovel VARCHAR(5), 
	cidade VARCHAR(50),
	estado VARCHAR(50),
	complemento VARCHAR(50),
	FK_PESSOA_codigo INTEGER REFERENCES PESSOA(codigo),
	logradouro VARCHAR(50)
);

CREATE TABLE ENTREGADOR (
	cpf CHAR(14) PRIMARY KEY,
	FK_PESSOA_codigo INTEGER REFERENCES PESSOA(codigo),
	cnh VARCHAR(14)
);

CREATE TABLE DISTRIBUIDORA (
	cnpj CHAR(14) PRIMARY KEY,
	email VARCHAR(100),  
	FK_PESSOA_codigo INTEGER REFERENCES PESSOA(codigo)
);

CREATE TABLE VEICULO (
	modelo_veiculo VARCHAR(20),
	tipo_veiculo VARCHAR(20),
	placa CHAR(7) PRIMARY KEY
);

CREATE TABLE PEDIDO (
	codigo INTEGER PRIMARY KEY,
	metodo_pagamento VARCHAR(20),
	dt_compra DATE,
	FK_CLIENTE_cpf CHAR(14) REFERENCES CLIENTE(cpf),
	FK_ENTREGADOR_cpf CHAR(14) REFERENCES ENTREGADOR(cpf)
);

CREATE TABLE PRODUTO (
	codigo INTEGER PRIMARY KEY,
	preco_venda INTEGER,
	preco_compra INTEGER,
	nome VARCHAR(100)
);

CREATE TABLE UTILIZA (
	FK_ENTREGADOR_cpf CHAR(14) REFERENCES ENTREGADOR(cpf),
	FK_VEICULO_placa CHAR(7) REFERENCES VEICULO(placa)
);

CREATE TABLE RESERVA (
	FK_PEDIDO_codigo INTEGER REFERENCES PEDIDO(codigo),
	FK_FUNCIONARIO_cpf CHAR(14) REFERENCES FUNCIONARIO(cpf)
);

CREATE TABLE CONTEM (
	qtd INTEGER,
	FK_PRODUTO_codigo INTEGER REFERENCES PRODUTO(codigo),
	FK_PEDIDO_codigo INTEGER REFERENCES PEDIDO(codigo)
);

CREATE TABLE FORNECE (
	FK_DISTRIBUIDORA_cnpj CHAR(14) REFERENCES DISTRIBUIDORA(cnpj),
	FK_PRODUTO_codigo INTEGER REFERENCES PRODUTO(codigo),
	qtd INTEGER
);
