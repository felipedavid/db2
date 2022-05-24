CREATE FUNCTION delete_passageiros()
RETURNS TRIGGER AS $$
BEGIN
    DELETE FROM cliente_voo WHERE cliente = old.voo;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE FUNCTION delete_piloto()
RETURNS TRIGGER AS $$
BEGIN
    DELETE FROM piloto WHERE codigo = old.piloto_id;
    RETURN NEW;
END
$$ LANGUAGE plpgsql;

CREATE TRIGGER deletar_passageiros
AFTER DELETE ON voo
FOR EACH ROW
EXECUTE FUNCTION delete_passageiros();

CREATE TRIGGER deletar_piloto
BEFORE DELETE ON voo
FOR EACH ROW
EXECUTE FUNCTION delete_piloto();
