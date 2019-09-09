DROP TABLE IF EXISTS TRATAMENTO;
DROP TABLE IF EXISTS PACIENTE;
DROP TABLE IF EXISTS QUARTO;
DROP TABLE IF EXISTS FORMACAO;
DROP TABLE IF EXISTS MEDICO;
DROP TABLE IF EXISTS ESPECIALIDADE;

CREATE TABLE QUARTO(
 num INTEGER PRIMARY KEY,
 andar INTEGER
);

CREATE TABLE ESPECIALIDADE(
 id INTEGER PRIMARY KEY,
 nome VARCHAR(255)
);


CREATE TABLE MEDICO(
 crm INTEGER PRIMARY KEY,
 nome VARCHAR(255),
 vaga INTEGER,
 idEspContratado INTEGER,
 FOREIGN KEY (idEspContratado) REFERENCES ESPECIALIDADE(id)
);

CREATE TABLE PACIENTE(
 cpf CHAR(11) PRIMARY KEY,
 nome VARCHAR(255),
 d_nasc DATE,
 crm_resp INTEGER,
 horario TIME,
 numquar INTEGER,
 FOREIGN KEY (crm_resp) REFERENCES MEDICO(crm),
 FOREIGN KEY (numquar) REFERENCES QUARTO(num)
);

CREATE TABLE TRATAMENTO(
 crm INTEGER,
 cpf CHAR(11),
 PRIMARY KEY(cpf,crm),
 FOREIGN KEY(cpf) REFERENCES PACIENTE(cpf),
 FOREIGN KEY(crm) REFERENCES MEDICO(crm)
);

CREATE TABLE FORMACAO(
 idEsp INTEGER,
 crm INTEGER,
 PRIMARY KEY(idEsp,crm),
 FOREIGN KEY (idEsp) REFERENCES ESPECIALIDADE(id),
 FOREIGN KEY (crm) REFERENCES MEDICOS(crm)
);

