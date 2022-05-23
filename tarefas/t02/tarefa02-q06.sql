CREATE FUNCTION somar_milhas()
RETURNS trigger as $$
BEGIN
    UPDATE milhas SET quantidade = quantidade +
    (SELECT distancia FROM voo, cliente_voo
     WHERE new.voo = voo.codigo
    ) / 10
    WHERE cliente = new.cliente;
END;    
$$ LANGUAGE plpgsql;

CREATE TRIGGER incrementar_milhagem 
AFTER INSERT ON cliente_voo
FOR EACH ROW
EXECUTE FUNCTION somar_milhas();
