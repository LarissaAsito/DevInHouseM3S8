CREATE OR REPLACE VIEW Apenas_Leitura_Produto_Preco
AS
    SELECT ID FROM PRODUTO WITH READ ONLY;
    
select * from Apenas_Leitura_Produto_Preco;