CREATE TABLE Alunos (
  ID_Aluno INT PRIMARY KEY,
  Nome_Aluno VARCHAR (250),
  Data_Nascimento DATE,
  Genero VARCHAR (50),
  Endereco VARCHAR (255),
  Telefone_Contato VARCHAR(20),
  Email_Aluno VARCHAR (255)
);

CREATE TABLE Professores (
    ID_Professor INT PRIMARY KEY,
    Nome_Professor VARCHAR(255),
    Data_Nascimento DATE,
    Genero VARCHAR(50),
    Telefone_Contato VARCHAR(20),
    Email_Professor VARCHAR(250)
);

CREATE TABLE Disciplinas (
    ID_Disciplina INT PRIMARY KEY,
    Nome_Disciplina VARCHAR(255),
  	Descricao TEXT,
  	Carga_Horaria INT,
    ID_Professor INT,
    FOREIGN KEY (ID_Professor) REFERENCES Professores(ID_Professor)
);

CREATE TABLE Turmas (
    ID_Turma INT PRIMARY KEY,
    Nome_Turma VARCHAR(255),
    Ano_Letivo INT,
    ID_Professor_Orientador INT,
    FOREIGN KEY (ID_Professor_Orientador) REFERENCES Professores(ID_Professor)
);

CREATE TABLE Turmas_Disciplinas (
  ID_Turma INT,
  ID_Disciplina INT,
  PRIMARY KEY (ID_Turma, ID_Disciplina),
  FOREIGN key (ID_Turma) REFERENCES Turmas(ID_Turma),
  FOREIGN key (ID_Disciplina) REFERENCES Disciplinas(ID_Disciplina)
);

CREATE TABLE Turmas_Alunos (
  ID_Turma INT,
  ID_Aluno INT,
  PRIMARY KEY (ID_Turma, ID_Aluno),
  FOREIGN key (ID_Turma) REFERENCES Turmas(ID_Turma),
  FOREIGN key (ID_Aluno) REFERENCES Alunos(ID_Aluno)
);

CREATE TABLE Notas (
    ID_Nota INT PRIMARY KEY,
    ID_Aluno INT,
    ID_Disciplina INT,
    Nota DECIMAL(5, 2),
    Data_Avaliacao DATE,
    FOREIGN KEY (ID_Aluno) REFERENCES Alunos(ID_Aluno),
    FOREIGN KEY (ID_Disciplina) REFERENCES Disciplinas(ID_Disciplina)
);