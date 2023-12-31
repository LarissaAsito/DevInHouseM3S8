CREATE OR REPLACE VIEW Buscar_Produto
AS
    SELECT P.ID, P.Descricao, PP.VALOR
    FROM PRODUTO P, PRODUTO_PRECO PP
    WHERE P.ID = PP.ID_PRODUTO
    AND PP.STATUS = 1
    AND (Valor < 100 OR Valor > 200)
    WITH CHECK OPTION;
    
SELECT * FROM Buscar_Produto;

UPDATE BUSCAR_PRODUTO
SET VALOR = 128
WHERE ID = 2;