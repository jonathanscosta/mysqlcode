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