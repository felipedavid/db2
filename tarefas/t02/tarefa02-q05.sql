
CREATE FUNCTION inc_voos_piloto()
RETURNS trigger as $$
BEGIN
    UPDATE piloto SET num_voos = num_voos + 1 WHERE codigo = NEW.piloto_id;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;


CREATE TRIGGER inc_voos
AFTER INSERT ON voo
    FOR EACH ROW
    EXECUTE FUNCTION inc_voos_piloto();
