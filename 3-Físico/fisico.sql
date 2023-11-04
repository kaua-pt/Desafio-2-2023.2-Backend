CREATE DATABASE IF NOT EXISTS FISICOSQL

USE FISICOSQL

CREATE TABLE VEICULO (
    placa VARCHAR(8) PRIMARY KEY,
    chassi VARCHAR(17),
    corPredominante VARCHAR(10),
    modelo INT(6),
    categoria INT(2),
    anoDeFabricacao DATE,
    FK_PROPRIETARIO_cpf VARCHAR(14)
);

CREATE TABLE PROPRIETARIO (
    cpf VARCHAR(14) PRIMARY KEY,
    nome VARCHAR(150),
    endereco VARCHAR(50),
    bairro VARCHAR(30),
    cidade VARCHAR(30),
    estado VARCHAR(25),
    FK_telefones_telefones_PK INT,
    sexo CHAR,
    dataDeNascimento DATE
);

CREATE TABLE INFRACAO (
    dataDoAuto VARCHAR(14),
    hora INT(4),
    tipoDeInfracao INT(1),
    localDoAuto VARCHAR(50),
    velocidade INT(6),
    idInfracao INT(2) PRIMARY KEY,
    FK_PROPRIETARIO_cpf VARCHAR(14),
    FK_AGENTE_matricula INT(8)
);

CREATE TABLE LOCALIDADE (
    latitude INT(8),
    longitude INT(8),
    velocidadeMaxPermitida INT(6),
    PRIMARY KEY (latitude, longitude)
);

CREATE TABLE AGENTE (
    matricula INT(8) PRIMARY KEY,
    nome VARCHAR(100),
    dataDeContratacao DATE
);

CREATE TABLE telefones (
    telefones_PK INT NOT NULL PRIMARY KEY,
    telefones VARCHAR(14)
);

CREATE TABLE contem (
    fk_INFRACAO_idInfracao INT(2),
    fk_LOCAL_latitude INT(8),
    fk_LOCAL_longitude INT(8)
);
 
ALTER TABLE VEICULO ADD CONSTRAINT FK_VEICULO_2
    FOREIGN KEY (FK_PROPRIETARIO_cpf)
    REFERENCES PROPRIETARIO (cpf)
    ON DELETE RESTRICT;
 
ALTER TABLE PROPRIETARIO ADD CONSTRAINT FK_PROPRIETARIO_2
    FOREIGN KEY (FK_telefones_telefones_PK)
    REFERENCES telefones (telefones_PK)
    ON DELETE NO ACTION;
 
ALTER TABLE INFRACAO ADD CONSTRAINT FK_INFRACAO_2
    FOREIGN KEY (FK_PROPRIETARIO_cpf)
    REFERENCES PROPRIETARIO (cpf)
    ON DELETE RESTRICT;
 
ALTER TABLE INFRACAO ADD CONSTRAINT FK_INFRACAO_3
    FOREIGN KEY (FK_AGENTE_matricula)
    REFERENCES AGENTE (matricula)
    ON DELETE RESTRICT;
 
ALTER TABLE contem ADD CONSTRAINT FK_contem_1
    FOREIGN KEY (fk_INFRACAO_idInfracao)
    REFERENCES INFRACAO (idInfracao)
    ON DELETE RESTRICT;
 
ALTER TABLE contem ADD CONSTRAINT FK_contem_2
    FOREIGN KEY (fk_LOCAL_latitude, fk_LOCAL_longitude)
    REFERENCES LOCAL (latitude, longitude)
    ON DELETE RESTRICT;