SET TRANSACTION ISOLATION LEVEL SERIALIZABLE;
SET TRANSACTION READ WRITE;

-- Bloqueia a sala para atualização
SELECT QUANTIDADE_MAX FROM SALA WHERE NUMERO_SALA = 101 FOR UPDATE;

-- Verifica se ainda cabe aluno (exemplo, supondo quantidade_atual)
-- Aqui, você precisaria de um campo para controlar lotação real
-- Vamos supor que você faça controle externo, só insere.

INSERT INTO ALUNO (MATRICULA_ALUNO, NOME_ALUNO, IDADE_ALUNO, NUMERO_SALA) 
VALUES ('A031', 'Paulo Henrique', 21, 101);

-- Atualiza capacidade atual (hipotético)
-- UPDATE SALA SET QUANTIDADE_ATUAL = QUANTIDADE_ATUAL + 1 WHERE NUMERO_SALA = 101;

