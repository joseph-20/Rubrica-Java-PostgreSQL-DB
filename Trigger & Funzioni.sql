-- Funzione e trigger per la cancellazione automatica di un gruppo quando il numero di componenti è zero

CREATE OR REPLACE FUNCTION cancella_gruppo() RETURNS TRIGGER AS $$
    DECLARE
        partecipanti    INTEGER;
    BEGIN
        SELECT count(*) INTO partecipanti
        FROM partecipazione
        WHERE nome_gruppo = old.nome_gruppo;

        IF partecipanti = 0 THEN
            DELETE FROM gruppo
            WHERE nome = old.nome_gruppo;
        END IF;

        RETURN NULL;
    END
$$ LANGUAGE plpgsql;

CREATE TRIGGER check_gruppo
    AFTER DELETE ON partecipazione
    FOR EACH ROW
    EXECUTE FUNCTION cancella_gruppo()
    
-- Funzione e trigger per individuare e bloccare un numero mobile già presente nei numeri fissi e viceversa

CREATE OR REPLACE FUNCTION check_equal() RETURNS TRIGGER AS $$
    BEGIN
        IF tg_name = 'check_equal_fisso' THEN
            IF EXISTS (
                SELECT *
                FROM numero_mobile
                WHERE numero_mobile.prefisso = new.prefisso
                    AND numero_mobile.numero = new.numero
               ) THEN
                RAISE EXCEPTION 'Il numero è già presente nella tabella dei numeri mobili';
            END IF;
        ELSIF tg_name = 'check_equal_mobile' THEN
            IF EXISTS (
                SELECT *
                FROM numero_fisso
                WHERE numero_fisso.prefisso = new.prefisso
                    AND numero_fisso.numero = new.numero
                ) THEN
                RAISE EXCEPTION 'Il numero è già presente nella tabella dei numeri fissi';
            END IF;
        END IF;
        RETURN NEW;
    END
$$ LANGUAGE plpgsql;

CREATE TRIGGER check_equal_mobile
	BEFORE INSERT ON numero_mobile
    FOR EACH ROW
	EXECUTE FUNCTION check_equal();
	
CREATE TRIGGER check_equal_fisso
	BEFORE INSERT ON numero_fisso
    FOR EACH ROW
	EXECUTE FUNCTION check_equal();

-- Funzione e trigger per indirizzo secondario è già presente come indirizzo principale della stessa persona

CREATE OR REPLACE FUNCTION check_indirizzo() RETURNS TRIGGER AS $$
    BEGIN
        IF EXISTS  (
            SELECT *
            FROM indirizzo_principale
            WHERE id_contatto = new.id_contatto
                AND via = new.via
                AND civico = new.civico
                AND citta = new.citta
                AND cap = new.cap
                AND nazione = new.nazione
        ) THEN
        RAISE EXCEPTION 'Questo indirizzo è già presente come indirizzo principale per la stessa persona';
        END IF;
        RETURN NEW;
    END
$$ LANGUAGE plpgsql;

CREATE TRIGGER check_indirizzo_principale
    BEFORE INSERT ON indirizzo_principale
    FOR EACH ROW
    EXECUTE FUNCTION check_indirizzo()

-- Funzione e trigger per far si che ogni contatto abbia solo un indirizzo principale

CREATE OR REPLACE FUNCTION check_unico() RETURNS TRIGGER AS $$
    BEGIN
        IF EXISTS (
            SELECT *
            FROM indirizzo_principale
            WHERE id_contatto = new.id_contatto
            ) THEN
            RAISE EXCEPTION 'È già presente un indirizzo principale per la persona specIFicata';
        END IF;
        RETURN new;
    END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER check_indirizzo_unico
    BEFORE INSERT ON indirizzo_principale
    FOR EACH ROW
    EXECUTE FUNCTION check_unico()

-- Eliminazione di tutte le informazioni di un contatto

CREATE OR REPLACE FUNCTION cancella_contatto_cascade() RETURNS TRIGGER AS $$
    BEGIN
        IF EXISTS (
            SELECT *
            FROM email
            WHERE id_contatto = old.id
            ) THEN
            DELETE FROM email
            WHERE id_contatto = old.id;
        END IF;

        IF EXISTS(
            SELECT *
            FROM indirizzo_principale
            WHERE id_contatto = old.id
            )THEN
            DELETE FROM indirizzo_principale
            WHERE id_contatto = old.id;
        END IF;

        IF EXISTS (
            SELECT *
            FROM indirizzo_secondario
            WHERE id_contatto = old.id
            ) THEN
            DELETE FROM indirizzo_secondario
            WHERE id_contatto = old.id;
        END IF;

        IF EXISTS (
            SELECT *
            FROM reindirizzamento
            WHERE id_contatto_fisso = old.id
            ) THEN
            DELETE FROM reindirizzamento
            WHERE id_contatto_fisso = old.id;
        END IF;

        IF EXISTS (
            SELECT *
            FROM numero_fisso
            WHERE id_contatto = old.id
            ) THEN
            DELETE FROM numero_fisso
            WHERE id_contatto = old.id;
        END IF;

        IF EXISTS (
            SELECT *
            FROM numero_mobile
            WHERE id_contatto = old.id
            ) THEN
            DELETE FROM numero_mobile
            WHERE id_contatto = old.id;
        END IF;

        IF EXISTS (
            SELECT *
            FROM partecipazione
            WHERE id_contatto = old.id
            ) THEN
            DELETE FROM partecipazione
            WHERE id_contatto = old.id;
        END IF;

        IF EXISTS (
            SELECT *
            FROM sistema_di_messaging
            WHERE id_contatto = old.id
            ) THEN
            DELETE FROM sistema_di_messaging
            WHERE id_contatto = old.id;
            END IF;

        RETURN OLD;
    END
$$ LANGUAGE plpgsql;

CREATE TRIGGER cancella_contatto
    BEFORE DELETE ON contatto
    FOR EACH ROW
    EXECUTE FUNCTION cancella_contatto_cascade()