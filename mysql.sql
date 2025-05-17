CREATE DATABASE IF NOT EXISTS escola;
USE escola;

CREATE TABLE IF NOT EXISTS alunos (
id_aluno INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR (50) NOT NULL,
idade INT


);
CREATE TABLE IF NOT EXISTS cursos (
id_curso INT PRIMARY KEY AUTO_INCREMENT,
nome_curso VARCHAR  (50) NOT NULL,
carga_horaria INT


);

CREATE TABLE IF NOT EXISTS matriculas (
id_matricula INT PRIMARY KEY AUTO_INCREMENT,
id_aluno INT,FOREIGN KEY(id_aluno) REFERENCES alunos (id_aluno),
id_curso INT,FOREIGN KEY(id_curso) REFERENCES cursos (id_curso),
data_matricula DATE 


);
ALTER TABLE matriculas
CHANGE COLUMN data_matricula data_matricula DATE;

ALTER TABLE matriculas 
ADD CONSTRAINT fk_matriculas_aluno FOREIGN KEY (id_aluno) REFERENCES alunos(id_aluno),
ADD CONSTRAINT fk_matriculas_curso FOREIGN KEY (id_curso) REFERENCES cursos(id_curso);


CREATE TABLE IF NOT EXISTS professores (
id_professores INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(50),
endereco VARCHAR (50)
);
CREATE TABLE IF NOT EXISTS turmas (
horario_inicio TIME,
dia_da_semana ENUM ('segunda', 'terça','quarta','quinta','sexta','sábado','domingo')
);

=====================================================================
CREATE DATABASE IF NOT EXISTS escola;
USE escola;

CREATE TABLE IF NOT EXISTS alunos (
id_alunos INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR (50) NOT NULL,
cpf VARCHAR(50) UNIQUE NOT NULL,
email VARCHAR(50) NOT NULL,
senha VARCHAR (10) NOT NULL 

);

CREATE TABLE IF NOT EXISTS cursos (
id_curso INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR (50),
carga_horaria INT NOT NULL,
valor DECIMAL(4,3) NOT NULL

);


CREATE TABLE IF NOT EXISTS matricula(
id INT PRIMARY KEY AUTO_INCREMENT,
id_alunos INT , FOREIGN KEY fk_alunos(id_alunos) REFERENCES alunos (id_alunos),
id_curso INT , FOREIGN KEY fk_cursos(id_curso) REFERENCES cursos (id_curso),
data_de_criacao DATE DEFAULT(current_date())
);


INSERT INTO alunos (nome, cpf, email, senha) 
VALUES
	('Jane Doe', '456.456.456-45', 'jane@email.com', '12345678'),
	('Jane Doe', '456.456.456-45', 'jane@email.com', '12345678');

SELECT * FROM alunos;
SELECT nome FROM alunos;
SELECT nome AS nome_completo, email FROM alunos;
SELECT * FROM alunos WHERE nome = "Diego Sampaio";
SELECT * FROM alunos WHERE nome LIKE "%ieg%";


UPDATE alunos SET nome = 'Diego Sampaio Batista' WHERE id = 1;

DELETE FROM alunos WHERE cpf = '123.123.123';
