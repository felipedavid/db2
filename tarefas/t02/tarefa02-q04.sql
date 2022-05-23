CREATE FUNCTION inserir_cartao_milhas()
RETURNS trigger AS $$
BEGIN
    INSERT INTO milhas VALUES(NEW.codigo, 0)
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;


CREATE TRIGGER criar_cartao_cliente
AFTER INSERT ON cliente
    FOR EACH ROW
    EXECUTE FUNCTION inserir_cartao_milhas();
