/*1) Crie uma tabela chamada funcionarios com as seguintes colunas: id (int, chave primária), nome (varchar(100)), departamento (varchar(100)) e salario (float). Em seguida, insira os seguintes registros de funcionários na tabela:*/
/*Criando a tabela*/ 
CREATE TABLE funcionarios (
	ID_funcionarios INT PRIMARY KEY,
  	nome VARCHAR(100),
    departamento VARCHAR(100),
  	salario FLOAT
); 

/*INSERINDO OS DADOS*/
INSERT INTO funcionarios(
	ID_funcionarios,
  	nome,
    departamento,
  	salario
)
VALUES
('1', 'Heitor Vieira', 'Financeiro', '4959.22'),
('2', 'Daniel Campos', 'Vendas', '3884.44'),
('3', 'Luiza Dias', 'TI', '8205.78'),
('4', 'Davi Lucas Moraes', 'Financeiro', '8437.02'),
('5', 'Pietro Cavalcanti', 'TI', '4946.88'),
('6', 'Evelyn da Mata', 'Vendas', '5278.88'),
('7', 'Isabella Rocha', 'Marketing', '4006.03'),
('8', 'Sra. Manuela Azevedo', 'Vendas', '6101.88'),
('9', 'Brenda Cardoso', 'TI', '8853.34'),
('10', 'Danilo Souza', 'TI', '8242.14');

/*2) Selecione todos os campos de todos os registros na tabela funcionarios.*/
SELECT * FROM funcionarios;

/*3)Na tabela funcionarios, selecione os nomes dos funcionários que trabalham no departamento de "Vendas".    */
SELECT nome, departamento FROM funcionarios
WHERE departamento 'Vendas';

/*4) Selecione os funcionários da tabela funcionarios cujo salário seja maior que 5000.*/
SELECT nome, salario FROM funcionarios
WHERE salario > 5000;

/*5) Na tabela funcionarios, selecione todos os departamentos distintos.*/
SELECT DISTINCT departamento FROM funcionarios;

/*6) Atualize o salário dos funcionários do departamento de "TI" para 7500 na tabela funcionarios.*/
UPDATE funcionarios SET salario = 7500
WHERE departamento = 'TI';

/*7) Delete da tabela funcionarios todos os registros de funcionários que ganham menos de 4000.*/
DELETE FROM funcionarios
WHERE salario < 4000;

/*8) Selecione os nomes e salários dos funcionários que trabalham no departamento de "Vendas" e cujo salário seja maior ou igual a 6000.*/
SELECT nome, salario FROM funcionarios
WHERE departamento = 'Vendas' 
AND salario >= 6000;

/*9) Crie uma tabela chamada projetos com as colunas: id_projeto (int, chave primária), nome_projeto (varchar(100)), id_gerente (int, referência a id na tabela funcionarios). Insira 3 registros na tabela projetos e, em seguida, selecione todos os projetos cujo id_gerente seja igual a 2.*/
CREATE TABLE projetos (
	ID_projeto INT PRIMARY KEy,
  	nome_projeto VARCHAR(100),
  	id_gerente INT,
  	FOREIGN KEY (id_gerente) REFERENCES funcionarios(ID_funcionarios)
);
INSERT INTO projetos(
	ID_projetos,
  	nome_projeto
	id_gerente
)
VALUES
()
/*10) Remova a tabela funcionarios do banco de dados.*/
DROP TABLE funcionarios