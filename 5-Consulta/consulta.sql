SELECT * FROM VEICULO WHERE cpf="11111111111"

SELECT *
  FROM PROPRIETARIO
  WHERE nome LIKE('%bigode%');

-- C não feita 

SELECT COUNT(modelo) AS quantidadeDoModelo
  FROM VEICULO V
  ORDER BY quantidadeDoModelo DESC;

