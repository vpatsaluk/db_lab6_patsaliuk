-- Видалення всіх мільярдерів, які зареєстровані в США

DROP FUNCTION IF EXISTS delete_billionaires_from_usa();
CREATE OR REPLACE FUNCTION delete_billionaires_from_usa()
RETURNS VOID AS
$$
BEGIN
    DELETE FROM Billionaire
    WHERE name_country = 'United States';
END;
$$
LANGUAGE plpgsql;

-- SELECT delete_billionaires_from_usa();
-- SELECT * FROM billionaire;