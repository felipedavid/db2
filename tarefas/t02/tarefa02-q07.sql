CREATE FUNCTION adc_passageiro()
RETURNS TRIGGER AS &&
BEGIN
    UPDATE voo SET num_passageiros = num_passageiros + 1
    WHERE voo.codigo = new.voo;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER add_passageiro
AFTER INSERT ON cliente_voo
FOR EACH ROW
EXECUTE FUNCTION adc_passageiro();
