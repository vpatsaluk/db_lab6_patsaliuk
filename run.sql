-- Перевірка функції
SELECT * FROM billionaire;
SELECT delete_billionaires_from_usa();
SELECT * FROM billionaire;

-- Перевірка процедури
CALL get_average_age_in_country('France');

-- Перевірка тригера
INSERT INTO billionaire(firstname, lastname, gender, age, name_country, name_org) VALUES ('Volodymyr', 'Patsaliuk', 'M', 19, 'United States', 'My Organization');
UPDATE billionaire SET firstname = 'Vova' WHERE lastname = 'Patsaliuk';
DELETE FROM billionaire WHERE lastname = 'Patsaliuk';

