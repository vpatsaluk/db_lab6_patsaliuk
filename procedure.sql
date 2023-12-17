-- Отримання середнього віку мільярдерів у певній країні
CREATE OR REPLACE PROCEDURE get_average_age_in_country(p_country_name VARCHAR(200))
LANGUAGE plpgsql
AS $$
DECLARE
    average_age NUMERIC;
BEGIN
    SELECT AVG(age) INTO average_age
    FROM Billionaire
    WHERE name_country = p_country_name;

    RAISE NOTICE 'Середній вік мільярдерів у країні %: % років', p_country_name, COALESCE(average_age, 0);
END;
$$;

CALL get_average_age_in_country('United States');
