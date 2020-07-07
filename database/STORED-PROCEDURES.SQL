/*********************LOGIN ADMINISTRATIVO*********************/

CREATE OR REPLACE FUNCTION USER_LOGIN(varchar(20), varchar(30)) RETURNS integer AS $$
DECLARE
 result integer;

BEGIN
	IF ((SELECT COUNT(*) FROM administrator WHERE user = $1 AND password = $2) = 0) THEN

		result := 500;
  	
  	ELSE
	
		result := 200;
	
	END IF;
 	RETURN result;
END;
$$ LANGUAGE plpgsql;

/***************************AGREGAR DOCENTE************************/

CREATE OR REPLACE FUNCTION ADD_TEACHER(varchar(100), varchar(30), varchar(30), varchar(40), date, varchar(20), varchar(30)) RETURNS integer AS $$
DECLARE
 result integer;

BEGIN
	IF ((SELECT COUNT(*) FROM teacher WHERE email = $1) = 1) THEN

		result := 500;

	ELSE

		INSERT INTO teacher(EMAIL, PASSWORD, NAME, LASTNAME, BIRTHDATE, PHONE, COUNTRY) VALUES ($1, $2, $3, $4, $5, $6, $7);
		result := 200;

	END IF;
 	RETURN result;
END;
$$ LANGUAGE plpgsql;