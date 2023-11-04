
USE FISICOSQL

INSERT INTO LOCALIDADE (latitude, longitude,velocidadeMaxPermitida)
    VALUES
        (-20,-20,30),
        (-10,10,30),
        (-40 , 50 ,60),

INSERT INTO AGENTE (matricula,nome,dataDeContratacao)
    VALUES
        (22222222,"vei da 12",17-05-2023),
        (11111111,"Joao do bope",18-06-2022),
        (66666666,"Cegueta",19-07-2021),

INSERT INTO telefones (telefones_PK,telefones)
    VALUES
        (1,61988888888888),
        (2,88961616161616),
        (3,99564235845654),

INSERT INTO PROPRIETARIO (cpf,nome,endereco,bairro,cidade,estado,FK_telefones_telefones_PK,sexo,dataDeNascimento)
    VALUES
        (00000000000,"zezin","QQQ 07","Ceilândia norte","Ceilândia","DF",1,"M",17-05-1995),
        (11111111111,"tião","W03","Lago sul","Plano piloto","DF",2,"M",27-06-1995),
        (22222222222,"bigode","LOTE 4","Setor de mansões","Samambaia","DF",3,"M",30-05-1995),

INSERT INTO VEICULO (placa,chassi,corPredominante,modelo,categoria,anoDeFabricacao,FK_PROPRIETARIO_cpf)
        VALUES
            ("JJJ-1234","Meuchassicomnumeroseletras","Azul",123456,10,17-05-1985,00000000000),
            ("GGG-1234","Meuchassicomnumeroseletras","Vermelho",654321,11,14-09-1882,11111111111),
            ("HHH-1234","Meuchassicomnumeroseletras","Verde",987654,12,14-09-0003,22222222222),

INSERT INTO INFRACAO (dataDoAuto,hora,tipoDeInfracao,localDoAuto,velocidade,idInfracao,FK_PROPRIETARIO_cpf,FK_AGENTE_matricula)
    VALUES
        ("20-08-2023",2011,2,"Ceilândia",100,1,00000000000,22222222),
        ("21-08-2023",2014,1,"Taguatinga",110,2,11111111111,66666666),
        ("22-08-2023",2021,3,"FGA",120,3,22222222222,11111111),

INSERT INTO contem (fk_INFRACAO_idInfracao,fk_LOCAL_latitude,fk_LOCAL_longitude)
    VALUES
        (1,-40,50),
        (2,-20,-20),
        (3,-10,10),

