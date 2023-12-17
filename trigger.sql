-- Створення тригера для таблиці Billionaire
-- Опис: Цей тригер призначений для відслідковування та логування змін в таблиці Billionaire.
--       Кожного разу, коли вставляється, оновлюється або видаляється запис, тригер викликає
--       функцію log_billionaire_changes, яка виводить повідомлення з інформацією про зміни.

CREATE OR REPLACE FUNCTION log_billionaire_changes()
RETURNS TRIGGER AS
$$
BEGIN
    RAISE NOTICE 'Був модифікований запис в таблиці Billionaire. Last Name: %, Зміни: %', NEW.lastname, NEW;
    RETURN NEW;
END;
$$
LANGUAGE plpgsql;

CREATE TRIGGER billionaire_changes_trigger
AFTER INSERT OR UPDATE OR DELETE
ON Billionaire
FOR EACH ROW
EXECUTE FUNCTION log_billionaire_changes();
