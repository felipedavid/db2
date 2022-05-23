CREATE FUNCTION inserir_cartao()
RETURNS TRIGGER AS $$
BEGIN
    INSERT INTO milhas(cod_cliente, quantidade)
    VALUES(OLD.codigo, 0);
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER cartao_lul AFTER
UPDATE ON cliente
FOR EACH ROW 
EXECUTE FUNCTION inserir_cartao();
