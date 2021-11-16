/*********************LOGIN ADMINISTRATIVO*********************/
CREATE OR REPLACE FUNCTION USER_LOGIN(USUARIO varchar(20), CLAVE varchar(30)) RETURNS integer AS $$
DECLARE
 RESULT integer;

BEGIN
	IF ((SELECT COUNT(*) FROM ADMINISTRATOR WHERE USERNAME = USUARIO AND PASSWORD = CLAVE) = 0) THEN

		RESULT := 500;
  	
  	ELSE
	
		RESULT := 200;
	
	END IF;
 	RETURN RESULT;
END;
$$ LANGUAGE plpgsql;

/**********************INICIO CRUD DE DOCENTES*********************/
/***************************AGREGAR DOCENTE************************/
CREATE OR REPLACE FUNCTION CREATE_TEACHER(MAIL varchar(100), CLAVE varchar(30), NOMBRE varchar(30), APELLIDO varchar(40), FEC date, TELF varchar(20), PAIS varchar(30)) RETURNS integer AS $$
DECLARE
 RESULT integer;

BEGIN
	IF ((SELECT COUNT(*) FROM TEACHER WHERE EMAIL = MAIL) = 1) THEN

		RESULT := 500;

	ELSE

		INSERT INTO TEACHER(EMAIL, PASSWORD, NAME, LASTNAME, BIRTHDATE, PHONE, COUNTRY, STATUS) VALUES (MAIL, CLAVE, NOMBRE, APELLIDO, FEC, TELF, PAIS, 'A');
		RESULT := 200;

	END IF;
 	RETURN RESULT;
END;
$$ LANGUAGE plpgsql;

/*********************LEER TODOS DOCENTES*************************/
CREATE OR REPLACE FUNCTION READ_ALL_TEACHER() RETURNS TABLE(EMAIL varchar(100), PASSWORD varchar(30), NAME varchar(30), LASTNAME varchar(40), BIRTHDATE date, PHONE varchar(20), COUNTRY varchar(30), STATUS varchar(1)) AS $$
DECLARE

BEGIN
	RETURN QUERY
	SELECT TEA.EMAIL, TEA.PASSWORD, TEA.NAME, TEA.LASTNAME, TEA.BIRTHDATE, TEA.PHONE, TEA.COUNTRY, TEA.STATUS
	FROM TEACHER TEA;
END;
$$ LANGUAGE plpgsql;

/********************LEER DOCENTES POR EMAIL*********************/
CREATE OR REPLACE FUNCTION READ_TEACHER(MAIL varchar(100)) RETURNS TABLE(EMAIL varchar(100), PASSWORD varchar(30), NAME varchar(30), LASTNAME varchar(40), BIRTHDATE date, PHONE varchar(20), COUNTRY varchar(30), STATUS varchar(1)) AS $$
DECLARE

BEGIN
	RETURN QUERY
	SELECT TEA.EMAIL, TEA.PASSWORD, TEA.NAME, TEA.LASTNAME, TEA.BIRTHDATE, TEA.PHONE, TEA.COUNTRY, TEA.STATUS
	FROM TEACHER TEA
	WHERE TEA.EMAIL = MAIL;
END;
$$ LANGUAGE plpgsql;

/**********************MODIFICAR DOCENTES************************/
CREATE OR REPLACE FUNCTION UPDATE_TEACHER(MAIL varchar(30), CLAVE varchar(30), NOMBRE varchar(30), APELLIDO varchar(40), FEC date, TELF varchar(20), PAIS varchar(30)) RETURNS integer AS $$
DECLARE
 RESULT integer;

BEGIN
	IF ((SELECT COUNT(*) FROM TEACHER WHERE EMAIL = MAIL) = 1) THEN

		UPDATE TEACHER SET PASSWORD = CLAVE, NAME = NOMBRE, LASTNAME = APELLIDO, BIRTHDATE = FEC, PHONE = TELF, COUNTRY = PAIS WHERE EMAIL = MAIL;
		
		RESULT := 201;
  	
  	ELSE
	
		RESULT := 204;
	
	END IF;
 	RETURN RESULT;
END;
$$ LANGUAGE plpgsql;

/**********************ELIMINAR DOCENTES***********************/
CREATE OR REPLACE FUNCTION DELETE_TEACHER(MAIL varchar(30)) RETURNS integer AS $$
DECLARE
 RESULT integer;

BEGIN
	IF ((SELECT COUNT(*) FROM TEACHER WHERE EMAIL = MAIL) = 1) THEN 

		UPDATE TEACHER SET STATUS = 'I' WHERE EMAIL = MAIL;
		
		RESULT := 200;

	ELSE

		RESULT := 204;

	END IF;
	RETURN RESULT;
END;
$$ LANGUAGE plpgsql;

/**************************LOGIN DOCENTES*************************/
CREATE OR REPLACE FUNCTION LOGIN_TEACHER(MAIL varchar(100), CLAVE varchar(30)) RETURNS integer AS $$
DECLARE
 RESULT integer;

BEGIN
	IF ((SELECT COUNT(*) FROM TEACHER WHERE EMAIL = MAIL AND PASSWORD = CLAVE) = 0) THEN

		RESULT := 500;
  	
  	ELSE
	
		RESULT := 200;
	
	END IF;
 	RETURN RESULT;
END;
$$ LANGUAGE plpgsql;
/************************FIN CRUD DE DOCENTES*********************/

/********************INICIO CRUD DE ESTUDIANTES*******************/
/************************AGREGAR ESTUDIANTES**********************/
CREATE OR REPLACE FUNCTION CREATE_STUDENT(MAIL varchar(100), CLAVE varchar(30), NOMBRE varchar(30), APELLIDO varchar(40), FEC date, TELF varchar(20), PAIS varchar(30), FK_GRADO integer) RETURNS integer AS $$
DECLARE
 RESULT integer;

BEGIN
	IF ((SELECT COUNT(*) FROM STUDENT WHERE EMAIL = MAIL) = 1) THEN

		RESULT := 500;

	ELSE

		INSERT INTO STUDENT(EMAIL, PASSWORD, NAME, LASTNAME, BIRTHDATE, PHONE, COUNTRY, FK_GRADE, STATUS) VALUES (MAIL, CLAVE, NOMBRE, APELLIDO, FEC, TELF, PAIS, FK_GRADO, 'A');
		RESULT := 200;

	END IF;
 	RETURN RESULT;
END;
$$ LANGUAGE plpgsql;

/**********************LEER TODOS ESTUDIANTES*********************/
CREATE OR REPLACE FUNCTION READ_ALL_STUDENT() RETURNS TABLE(EMAIL varchar(100), PASSWORD varchar(30), NAME varchar(30), LASTNAME varchar(40), BIRTHDATE date, PHONE varchar(20), COUNTRY varchar(30), STATUS varchar(1), FK_GRADE integer, GRADE_NAME VARCHAR(50)) AS $$
DECLARE

BEGIN
	RETURN QUERY
	SELECT STU.EMAIL, STU.PASSWORD, STU.NAME, STU.LASTNAME, STU.BIRTHDATE, STU.PHONE, STU.COUNTRY, STU.STATUS, GRA.ID, GRA.NAME
	FROM STUDENT STU, GRADE GRA
	WHERE STU.FK_GRADE = GRA.ID;
END;
$$ LANGUAGE plpgsql;

/*******************LEER ESTUDIANTES POR EMAIL*******************/
CREATE OR REPLACE FUNCTION READ_STUDENT(MAIL varchar(100)) RETURNS TABLE(EMAIL varchar(100), PASSWORD varchar(30), NAME varchar(30), LASTNAME varchar(40), BIRTHDATE date, PHONE varchar(20), COUNTRY varchar(30), STATUS varchar(1), FK_GRADE integer, GRADE_NAME VARCHAR(50)) AS $$
DECLARE

BEGIN
	RETURN QUERY
	SELECT STU.EMAIL, STU.PASSWORD, STU.NAME, STU.LASTNAME, STU.BIRTHDATE, STU.PHONE, STU.COUNTRY, STU.STATUS, GRA.ID, GRA.NAME
	FROM STUDENT STU, GRADE GRA
	WHERE STU.EMAIL = MAIL AND STU.FK_GRADE = GRA.ID;
END;
$$ LANGUAGE plpgsql;

/*********************MODIFICAR ESTUDIENTES**********************/
CREATE OR REPLACE FUNCTION UPDATE_STUDENT(MAIL varchar(30), CLAVE varchar(30), NOMBRE varchar(30), APELLIDO varchar(40), FEC date, TELF varchar(20), PAIS varchar(30), FK_GRADO integer) RETURNS integer AS $$
DECLARE
 RESULT integer;

BEGIN
	IF ((SELECT COUNT(*) FROM STUDENT WHERE EMAIL = MAIL) = 1) THEN

		UPDATE STUDENT SET PASSWORD = CLAVE, NAME = NOMBRE, LASTNAME = APELLIDO, BIRTHDATE = FEC, PHONE = TELF, COUNTRY = PAIS, FK_GRADE = FK_GRADO WHERE EMAIL = MAIL;
		
		RESULT := 201;
  	
  	ELSE
	
		RESULT := 204;
	
	END IF;
 	RETURN RESULT;
END;
$$ LANGUAGE plpgsql;

/*********************ELIMINAR ESTUDIANTES**********************/
CREATE OR REPLACE FUNCTION DELETE_STUDENT(MAIL varchar(30)) RETURNS integer AS $$
DECLARE
 RESULT integer;

BEGIN
	IF ((SELECT COUNT(*) FROM STUDENT WHERE EMAIL = MAIL) = 1) THEN 

		UPDATE STUDENT SET STATUS = 'I' WHERE EMAIL = MAIL;
		
		RESULT := 200;

	ELSE

		RESULT := 204;

	END IF;
	RETURN RESULT;
END;
$$ LANGUAGE plpgsql;

/************************LOGIN ESTUDIANTES***********************/
CREATE OR REPLACE FUNCTION LOGIN_STUDENT(MAIL varchar(100), CLAVE varchar(30)) RETURNS integer AS $$
DECLARE
 RESULT integer;

BEGIN
	IF ((SELECT COUNT(*) FROM STUDENT WHERE EMAIL = MAIL AND PASSWORD = CLAVE) = 0) THEN

		RESULT := 500;
  	
  	ELSE
	
		RESULT := 200;
	
	END IF;
 	RETURN RESULT;
END;
$$ LANGUAGE plpgsql;

/************************MODIFICAR GRADO**********************/
CREATE OR REPLACE FUNCTION UPDATE_GRADE_STUDENT (FK_GRADO integer, MAIL varchar (100)) RETURNS integer AS $$
DECLARE
 RESULT integer;

BEGIN
	IF ((SELECT COUNT(*) FROM STUDENT WHERE (FK_GRADE = FK_GRADO AND EMAIL = MAIL)) = 1) THEN

		UPDATE STUDENT SET FK_GRADE = FK_GRADO WHERE EMAIL = MAIL;

		RESULT := 201;

	ELSE

		RESULT := 204;

	END IF;
	RETURN RESULT;
END;
$$ LANGUAGE plpgsql;
/********************FIN CRUD DE ESTUDIANTES******************/

/*********************INICIO CRUD DE CURSOS*******************/
/*************************AGREGAR CURSOS**********************/
CREATE OR REPLACE FUNCTION CREATE_COURSE(IDE varchar(20), NOMBRE varchar(30), DESCRIPCION varchar(500), FK_GRADO integer) RETURNS integer AS $$
DECLARE
 RESULT integer;

BEGIN
	IF ((SELECT COUNT(*) FROM COURSE WHERE ID = IDE) = 1) THEN

		RESULT := 500;

	ELSE

		INSERT INTO COURSE(ID, NAME, DESCRIPTION, FK_GRADE) VALUES (IDE, NOMBRE, DESCRIPCION, FK_GRADO);
		RESULT := 200;

	END IF;
 	RETURN RESULT;
END;
$$ LANGUAGE plpgsql;

/**********************LEER TODOS LOS CURSOS*********************/
CREATE OR REPLACE FUNCTION READ_ALL_COURSE() RETURNS TABLE(ID varchar(20), NAME varchar(30), DESCRIPTION varchar(500), FK_GRADE integer, NAMEGRADE varchar(50)) AS $$
DECLARE

BEGIN
	RETURN QUERY
	SELECT COU.ID, COU.NAME, COU.DESCRIPTION, GRA.ID, GRA.NAME
	FROM COURSE COU, GRADE GRA
	WHERE COU.FK_GRADE = GRA.ID;
END;
$$ LANGUAGE plpgsql;

/***********************LEER CURSOS POR ID***********************/
CREATE OR REPLACE FUNCTION READ_COURSE(IDE varchar(20)) RETURNS TABLE(ID varchar(20), NAME varchar(30), DESCRIPTION varchar(500), FK_GRADE integer, NAMEGRADE varchar(50)) AS $$
DECLARE

BEGIN
	RETURN QUERY
	SELECT COU.ID, COU.NAME, COU.DESCRIPTION, GRA.ID, GRA.NAME
	FROM COURSE COU, GRADE GRA
	WHERE COU.ID = IDE AND COU.FK_GRADE = GRA.ID;
END;
$$ LANGUAGE plpgsql;

/***********************LEER CURSOS POR ID DE GRADO***********************/
CREATE OR REPLACE FUNCTION READ_COURSE_BY_GRADE(IDE integer) RETURNS TABLE(ID varchar(20), NAME varchar(30), DESCRIPTION varchar(500), FK_GRADE integer, NAMEGRADE varchar(50)) AS $$
DECLARE

BEGIN
	RETURN QUERY
	SELECT COU.ID, COU.NAME, COU.DESCRIPTION, GRA.ID, GRA.NAME
	FROM COURSE COU, GRADE GRA
	WHERE GRA.ID = IDE AND COU.FK_GRADE = GRA.ID;
END;
$$ LANGUAGE plpgsql;

/*************************MODIFICAR CURSO************************/
CREATE OR REPLACE FUNCTION UPDATE_COURSE(IDE varchar(20), NOMBRE varchar(30), DESCRIPCION varchar(500), FK_GRADO integer, IDEVIEJO varchar(20)) RETURNS integer AS $$
DECLARE
 RESULT integer;

BEGIN
	IF ((SELECT COUNT(*) FROM COURSE WHERE ID = IDEVIEJO) = 1) THEN

		UPDATE COURSE SET NAME = NOMBRE, DESCRIPTION = DESCRIPCION, FK_GRADE = FK_GRADO, ID = IDE WHERE ID = IDEVIEJO;

		RESULT := 201;
  	
  	ELSE
	
		RESULT := 204;
	
	END IF;
 	RETURN RESULT;
END;
$$ LANGUAGE plpgsql;

/**********************ELIMINAR CURSO*************************/
CREATE OR REPLACE FUNCTION DELETE_COURSE(IDE varchar(20)) RETURNS integer AS $$
DECLARE
 RESULT integer;

BEGIN
	IF ((SELECT COUNT(*) FROM COURSE WHERE ID = IDE) = 1) THEN 

		DELETE FROM COURSE WHERE ID = IDE;
		
		RESULT := 200;

	ELSE

		RESULT := 204;

	END IF;
	RETURN RESULT;
END;
$$ LANGUAGE plpgsql;
/***********************FIN CRUD DE CURSO*********************/

/********************INICIO CRUD DE MODULOS*******************/
/************************AGREGAR MODULO***********************/
CREATE OR REPLACE FUNCTION CREATE_SECTION(NOMBRE varchar(30), MONTO float, DESCRIPCION varchar(500), FK_CURSO varchar(20)) RETURNS integer AS $$
DECLARE
 RESULT integer;

BEGIN

	INSERT INTO SECTION(NAME, AMOUNT, DESCRIPTION, FK_COURSE) VALUES (NOMBRE, MONTO, DESCRIPCION, FK_CURSO);
	RESULT := 200;

 	RETURN RESULT;
END;
$$ LANGUAGE plpgsql;
/********************LEER TODOS LOS MODULOS*******************/
CREATE OR REPLACE FUNCTION READ_ALL_SECTION() RETURNS TABLE(ID integer, NAME varchar(30), AMOUNT numeric, DESCRIPTION varchar(500), FK_COURSE varchar(20), COURSE_NAME varchar(30)) AS $$
DECLARE

BEGIN
	RETURN QUERY
	SELECT SEC.ID, SEC.NAME, SEC.AMOUNT, SEC.DESCRIPTION, COU.ID, COU.NAME
	FROM SECTION SEC, COURSE COU
	WHERE SEC.FK_COURSE = COU.ID;
END;
$$ LANGUAGE plpgsql;

/*********************LEER MODULOS POR ID*********************/
CREATE OR REPLACE FUNCTION READ_SECTION_BY_COURSE(IDE varchar(20)) RETURNS TABLE(ID integer, NAME varchar(30), AMOUNT numeric, DESCRIPTION varchar(500), FK_COURSE varchar(20), COURSE_NAME varchar(30)) AS $$
DECLARE

BEGIN
	RETURN QUERY
	SELECT SEC.ID, SEC.NAME, SEC.AMOUNT, SEC.DESCRIPTION, COU.ID, COU.NAME
	FROM SECTION SEC, COURSE COU
	WHERE COU.ID = IDE AND SEC.FK_COURSE = COU.ID;
END;
$$ LANGUAGE plpgsql;

/*********************LEER MODULOS POR ID DEL CURSO*********************/
CREATE OR REPLACE FUNCTION READ_SECTION(IDE integer) RETURNS TABLE(ID integer, NAME varchar(30), AMOUNT numeric, DESCRIPTION varchar(500), FK_COURSE varchar(20), COURSE_NAME varchar(30)) AS $$
DECLARE

BEGIN
	RETURN QUERY
	SELECT SEC.ID, SEC.NAME, SEC.AMOUNT, SEC.DESCRIPTION, COU.ID, COU.NAME
	FROM SECTION SEC, COURSE COU
	WHERE SEC.ID = IDE AND SEC.FK_COURSE = COU.ID;
END;
$$ LANGUAGE plpgsql;

/**********************MODIFICAR MODULO***********************/
CREATE OR REPLACE FUNCTION UPDATE_SECTION(IDE integer, NOMBRE varchar(30), MONTO float, DESCRIPCION varchar(500), FK_CURSO varchar(20)) RETURNS integer AS $$
DECLARE
 RESULT integer;

BEGIN
	IF ((SELECT COUNT(*) FROM SECTION WHERE ID = IDE) = 1) THEN

		UPDATE SECTION SET NAME = NOMBRE, AMOUNT = MONTO, DESCRIPTION = DESCRIPCION, FK_COURSE = FK_CURSO WHERE ID = IDE;
		
		RESULT := 201;
  	
  	ELSE
	
		RESULT := 204;
	
	END IF;
 	RETURN RESULT;
END;
$$ LANGUAGE plpgsql;

/*********************ELIMINAR MODULO************************/
CREATE OR REPLACE FUNCTION DELETE_SECTION(IDE integer) RETURNS integer AS $$
DECLARE
 RESULT integer;

BEGIN
	IF ((SELECT COUNT(*) FROM SECTION WHERE ID = IDE) = 1) THEN 

		DELETE FROM SECTION WHERE ID = IDE;
		
		RESULT := 200;

	ELSE

		RESULT := 204;

	END IF;
	RETURN RESULT;
END;
$$ LANGUAGE plpgsql;
/**********************FIN CRUD DE MODULO*********************/

/********************INICIO CRUD DE TOPICOS*******************/
/************************AGREGAR TOPICO***********************/
CREATE OR REPLACE FUNCTION CREATE_TOPIC(NOMBRE varchar(200), FK_SECCION integer) RETURNS integer AS $$
DECLARE
 RESULT integer;

BEGIN

	INSERT INTO TOPIC(NAME, FK_SECTION) VALUES (NOMBRE, FK_SECCION);
	RESULT := 200;

 	RETURN RESULT;
END;
$$ LANGUAGE plpgsql;
/********************LEER TODOS LOS TOPICOS*******************/
CREATE OR REPLACE FUNCTION READ_ALL_TOPIC() RETURNS TABLE(ID integer, NAME varchar(200), FK_SECCION integer, SECCION_NAME varchar(30)) AS $$
DECLARE

BEGIN
	RETURN QUERY
	SELECT TOC.ID, TOC.NAME, SEC.ID, SEC.NAME
	FROM TOPIC TOC, SECTION SEC
	WHERE TOC.FK_SECTION = SEC.ID;
END;
$$ LANGUAGE plpgsql;

/*********************LEER TOPICO POR ID*********************/
CREATE OR REPLACE FUNCTION READ_TOPIC(IDE integer) RETURNS TABLE(ID integer, NAME varchar(200), FK_SECTION integer, SECCION_NAME varchar(30)) AS $$
DECLARE

BEGIN
	RETURN QUERY
	SELECT TOC.ID, TOC.NAME, SEC.ID, SEC.NAME
	FROM TOPIC TOC, SECTION SEC
	WHERE TOC.ID = IDE AND TOC.FK_SECTION = SEC.ID;
END;
$$ LANGUAGE plpgsql;

/*********************LEER TOPICO POR ID DE MODULO*********************/
CREATE OR REPLACE FUNCTION READ_TOPIC_BY_SECTION(IDE integer) RETURNS TABLE(ID integer, NAME varchar(200), FK_SECTION integer, SECCION_NAME varchar(30)) AS $$
DECLARE

BEGIN
	RETURN QUERY
	SELECT TOC.ID, TOC.NAME, SEC.ID, SEC.NAME
	FROM TOPIC TOC, SECTION SEC
	WHERE SEC.ID = IDE AND TOC.FK_SECTION = SEC.ID;
END;
$$ LANGUAGE plpgsql;

/**********************MODIFICAR TOPICO***********************/
CREATE OR REPLACE FUNCTION UPDATE_TOPIC(IDE integer, NOMBRE varchar(200), FK_SECCION integer) RETURNS integer AS $$
DECLARE
 RESULT integer;

BEGIN
	IF ((SELECT COUNT(*) FROM TOPIC WHERE ID = IDE) = 1) THEN

		UPDATE TOPIC SET NAME = NOMBRE, FK_SECTION = FK_SECCION WHERE ID = IDE;
		
		RESULT := 201;
  	
  	ELSE
	
		RESULT := 204;
	
	END IF;
 	RETURN RESULT;
END;
$$ LANGUAGE plpgsql;

/*********************ELIMINAR TOPICO************************/
CREATE OR REPLACE FUNCTION DELETE_TOPIC(IDE integer) RETURNS integer AS $$
DECLARE
 RESULT integer;

BEGIN
	IF ((SELECT COUNT(*) FROM TOPIC WHERE ID = IDE) = 1) THEN 

		DELETE FROM TOPIC WHERE ID = IDE;
		
		RESULT := 200;

	ELSE

		RESULT := 204;

	END IF;
	RETURN RESULT;
END;
$$ LANGUAGE plpgsql;
/**********************FIN CRUD DE TOPICO*********************/

/******************INICIO CRUD DE DOCUMENTOS******************/
/**********************AGREGAR DOCUMENTO**********************/
CREATE OR REPLACE FUNCTION CREATE_DOCUMENT(NOMBREARCHIVO varchar(30), VISIBILIDAD integer, TIPOARCHIVO varchar(15), FK_TOPICO integer, DATABINARIA bytea) RETURNS integer AS $$
DECLARE
 RESULT integer;

BEGIN

	INSERT INTO DOCUMENT(FILENAME, VISIBILITY, FILETYPE, FK_TOPIC, BYTES) VALUES (IDE, NOMBREARCHIVO, VISIBILIDAD, TIPOARCHIVO, FK_TOPICO, DATABINARIA);
	RESULT := 200;

 	RETURN RESULT;
END;
$$ LANGUAGE plpgsql;
/*******************LEER TODOS LOS DOCUMENTOS*****************/
CREATE OR REPLACE FUNCTION READ_ALL_DOCUMENT() RETURNS TABLE(ID integer, FILENAME varchar(30), VISIBILITY integer, FILETYPE varchar(15), FK_TOPIC integer, TOPIC_NAME varchar(30), BYTES bytea) AS $$
DECLARE

BEGIN
	RETURN QUERY
	SELECT DOC.ID, DOC.FILENAME, DOC.VISIBILITY, DOC.FILETYPE, TOC.ID, TOC.NAME, DOC.BYTES
	FROM DOCUMENT DOC, TOPIC TOC
	WHERE DOC.FK_TOPIC = TOC.ID;
END;
$$ LANGUAGE plpgsql;

/*********************LEER DOCUMENTO POR ID*******************/
CREATE OR REPLACE FUNCTION READ_DOCUMENT(IDE integer) RETURNS TABLE(ID integer, FILENAME varchar(30), VISIBILITY integer, FILETYPE varchar(15), FK_TOPIC integer, TOPIC_NAME varchar(30), BYTES bytea) AS $$
DECLARE

BEGIN
	RETURN QUERY
	SELECT DOC.ID, DOC.FILENAME, DOC.VISIBILITY, DOC.FILETYPE, TOC.ID, TOC.NAME, DOC.BYTES
	FROM DOCUMENT DOC, TOPIC TOC
	WHERE DOC.ID = IDE AND DOC.FK_TOPIC = TOC.ID;
END;
$$ LANGUAGE plpgsql;

/*********************LEER DOCUMENTO POR MODULO*******************/
CREATE OR REPLACE FUNCTION READ_DOCUMENT_BY_SECTION(IDE integer) RETURNS TABLE(ID integer, FILENAME varchar(30), VISIBILITY integer, FILETYPE varchar(15), BYTES bytea) AS $$
DECLARE

BEGIN
	RETURN QUERY
	SELECT DOC.ID, DOC.FILENAME, DOC.VISIBILITY, DOC.FILETYPE, DOC.BYTES
	FROM DOCUMENT DOC, TOPIC TOC, SECTION SEC
 	WHERE SEC.ID = IDE AND TOC.FK_SECTION = SEC.ID AND DOC.FK_TOPIC = TOC.ID;
END;
$$ LANGUAGE plpgsql;
/*********************MODIFICAR DOCUMENTO*********************/
CREATE OR REPLACE FUNCTION UPDATE_DOCUMENT(IDE integer, NOMBREARCHIVO varchar(30), VISIBILIDAD integer, TIPOARCHIVO varchar(15), FK_TOPICO integer, DATABINARIA bytea) RETURNS integer AS $$
DECLARE
 RESULT integer;

BEGIN
	IF ((SELECT COUNT(*) FROM DOCUMENT WHERE ID = IDE) = 1) THEN

		UPDATE DOCUMENT SET FILENAME = NOMBREARCHIVO, VISIBILITY = VISIBILIDAD, FILETYPE = TIPOARCHIVO, FK_TOPIC = FK_TOPICO, BYTES = DATABINARIA WHERE ID = IDE;
		
		RESULT := 201;
  	
  	ELSE
	
		RESULT := 204;
	
	END IF;
 	RETURN RESULT;
END;
$$ LANGUAGE plpgsql;

/*********************ELIMINAR DOCUMENTO************************/
CREATE OR REPLACE FUNCTION DELETE_DOCUMENT(IDE integer) RETURNS integer AS $$
DECLARE
 RESULT integer;

BEGIN
	IF ((SELECT COUNT(*) FROM DOCUMENT WHERE ID = IDE) = 1) THEN 

		DELETE FROM DOCUMENT WHERE ID = IDE;
		
		RESULT := 200;

	ELSE

		RESULT := 204;

	END IF;
	RETURN RESULT;
END;
$$ LANGUAGE plpgsql;
/********************FIN CRUD DE DOCUMENTO******************/

/*******************INICIO CRUD DE PAGO*********************/
/***********************AGREGAR PAGO************************/
CREATE OR REPLACE FUNCTION CREATE_PAYMENT(DIAPAGO date, FECHAEXPIRACION date, PAYPAL_ID varchar(100), MONTO numeric, CLASESRESTANTES integer, FK_SECCION integer, FK_ESTUDIANTE varchar(100)) RETURNS integer AS $$
DECLARE
 RESULT integer;

BEGIN
		INSERT INTO PAYMENT(PAYDATE, EXPIRATIONDATE, PPTRANSACTIONID, AMOUNT, REMAINING_CLASSES, FK_SECTION, FK_STUDENT) VALUES (DIAPAGO, FECHAEXPIRACION, PAYPAL_ID, MONTO, CLASESRESTANTES, FK_SECCION, FK_ESTUDIANTE);
		RESULT := 200;
 	RETURN RESULT;
END;
$$ LANGUAGE plpgsql;
/*******************LEER TODOS LOS PAGOS*****************/
CREATE OR REPLACE FUNCTION READ_ALL_PAYMENT() RETURNS TABLE(ID integer, PAYDATE date, EXPIRATIONDATE date, PPTRANSACTIONID varchar(100), AMOUNT integer, REMAINING_CLASSES integer, FK_SECTION integer, SEC_NAME varchar(30), FK_STUDENT varchar(100), STU_NAME varchar(30), STU_LASTNAME varchar(40)) AS $$
DECLARE

BEGIN
	RETURN QUERY
	SELECT PAY.ID, PAY.PAYDATE, PAY.EXPIRATIONDATE, PAY.PPTRANSACTIONID, PAY.AMOUNT, PAY.REMAINING_CLASSES, SEC.ID, SEC.NAME, STU.EMAIL, STU.NAME, STU.LASTNAME
	FROM PAYMENT PAY, SECTION SEC, STUDENT STU
	WHERE PAY.FK_SECTION = SEC.ID AND PAY.FK_STUDENT = STU.EMAIL;
END;
$$ LANGUAGE plpgsql;

/*********************LEER PAGO POR ID*******************/
CREATE OR REPLACE FUNCTION READ_PAYMENT(IDE integer) RETURNS TABLE(ID integer, PAYDATE date, EXPIRATIONDATE date, PPTRANSACTIONID varchar(100), AMOUNT integer, REMAINING_CLASSES integer, FK_SECTION integer, FK_STUDENT varchar(100)) AS $$
DECLARE

BEGIN
	RETURN QUERY
	SELECT PAY.ID, PAY.PAYDATE, PAY.EXPIRATIONDATE, PAY.PPTRANSACTIONID, PAY.AMOUNT, PAY.REMAINING_CLASSES, SEC.ID, STU.EMAIL
	FROM PAYMENT PAY, SECTION SEC, STUDENT STU
	WHERE PAY.ID = IDE AND PAY.FK_SECTION = SEC.ID;
END;
$$ LANGUAGE plpgsql;

/***********LISTAR PAGOS POR ID DE MODULO************/
CREATE OR REPLACE FUNCTION READ_PAYMENT_BY_SECTION(IDE integer) RETURNS TABLE(ID integer, PAYDATE date, EXPIRATIONDATE date, PPTRANSACTIONID varchar(100), AMOUNT integer, REMAINING_CLASSES integer, FK_SECTION integer, FK_STUDENT varchar(100)) AS $$
DECLARE

BEGIN
	RETURN QUERY
	SELECT PAY.ID, PAY.PAYDATE, PAY.EXPIRATIONDATE, PAY.PPTRANSACTIONID, PAY.AMOUNT, PAY.REMAINING_CLASSES, SEC.ID, STU.EMAIL
	FROM PAYMENT PAY, SECTION SEC, STUDENT STU
	WHERE PAY.FK_SECTION = SEC.ID;
END;
$$ LANGUAGE plpgsql;

/***********LISTAR PAGOS POR ESTUDIANTE************/
CREATE OR REPLACE FUNCTION READ_PAYMENT_BY_STUDENT(FK_ESTUDIANTE varchar) RETURNS TABLE(ID integer, PAYDATE date, EXPIRATIONDATE date, PPTRANSACTIONID varchar(100), AMOUNT numeric, REMAINING_CLASSES integer, FK_SECTION integer, FK_STUDENT varchar(100)) AS $$
DECLARE

BEGIN
	RETURN QUERY
	SELECT PAY.ID, PAY.PAYDATE, PAY.EXPIRATIONDATE, PAY.PPTRANSACTIONID, PAY.AMOUNT, PAY.REMAINING_CLASSES, SEC.ID, STU.EMAIL
	FROM PAYMENT PAY, SECTION SEC, STUDENT STU
	WHERE PAY.FK_STUDENT = STU.EMAIL AND PAY.FK_SECTION = SEC.ID AND PAY.FK_STUDENT = FK_ESTUDIANTE;
END;
$$ LANGUAGE plpgsql;

/*********************MODIFICAR PAGO*********************/
CREATE OR REPLACE FUNCTION UPDATE_PAYMENT(IDE integer, DIAPAGO date, FECHAEXPIRACION date, PAYPAL_ID varchar(100), MONTO integer, REMAINING_CLASSES integer, FK_SECCION integer, FK_ESTUDIANTE varchar(100)) RETURNS integer AS $$
DECLARE
 RESULT integer;

BEGIN
	IF ((SELECT COUNT(*) FROM PAYMENT WHERE ID = IDE) = 1) THEN

		UPDATE PAYMENT SET PAYDATE = DIAPAGO, EXPIRATIONDATE = FECHAEXPIRACION, PPTRANSACTIONID = PAYPAL_ID, AMOUNT = MONTO, REMAINING_CLASSES = CLASES_RESTANTES, FK_SECTION = FK_SECCION, FK_STUDENT = FK_ESTUDIANTE WHERE ID = IDE;
		
		RESULT := 201;
  	
  	ELSE
	
		RESULT := 204;
	
	END IF;
 	RETURN RESULT;
END;
$$ LANGUAGE plpgsql;

/************MODIFICAR CLASES RESTANTES DEL ALUMNO***************/
CREATE OR REPLACE FUNCTION UPDATE_REMAINING_CLASSES(IDE             integer,
	                                                CLASESRESTANTES integer   )
RETURNS integer AS $$
DECLARE
 RESULT integer;

BEGIN
	IF ((SELECT COUNT(*) FROM PAYMENT WHERE ID = IDE) = 1) THEN
		
		UPDATE PAYMENT SET REMAINING_CLASSES = CLASESRESTANTES  
		             WHERE              ID = IDE;

		RESULT := 201;
  	
  	ELSE
	
		RESULT := 204;
	
	END IF;
 	RETURN RESULT;
END;
$$ LANGUAGE plpgsql;

/*********************ELIMINAR PAGO************************/
CREATE OR REPLACE FUNCTION DELETE_PAYMENT(IDE integer) RETURNS integer AS $$
DECLARE
 RESULT integer;

BEGIN
	IF ((SELECT COUNT(*) FROM PAYMENT WHERE ID = IDE) = 1) THEN 

		DELETE FROM PAYMENT WHERE ID = IDE;
		
		RESULT := 200;

	ELSE

		RESULT := 204;

	END IF;
	RETURN RESULT;
END;
$$ LANGUAGE plpgsql;
/**********************FIN CRUD DE PAGO*********************/

/********************INICIO CRUD DE CLASE*******************/
/***********************AGREGAR CLASE***********************/
CREATE OR REPLACE FUNCTION CREATE_CLASS(IDE varchar(50), IDEUU varchar(50), IDE_HOST varchar(50), EMAIL_HOST varchar(60), TOPICO varchar(30), TIPO integer, ESTADO varchar(20), HORA_INICIO timestamp, DURACION integer, ZONAHORARIA varchar(50), AGENDAZOOM varchar(20), 
	FEC_CREACION timestamp, LINK_INICIO varchar(800), LINK_REUNION varchar(100), CLAVE varchar(20), CLAVE_H323 varchar(20), CLAVE_PSTN varchar(20), CLAVE_ENCRIPTADA varchar(60), COMENTARIO varchar(500), FK_SECCION integer, FK_PROFESOR varchar(100)) RETURNS integer AS $$
DECLARE
 RESULT integer;

BEGIN
	IF ((SELECT COUNT(*) FROM CLASS WHERE ID = IDE) = 1) THEN

		RESULT := 500;

	ELSE

		INSERT INTO CLASS(ID                ,
			              UUID              , 
			              HOST_ID           , 
			              HOST_EMAIL        , 
			              TOPIC             , 
			              TYPE              , 
			              STATUS            , 
			              START_TIME        , 
			              DURATION          , 
			              TIMEZONE          , 
			              AGENDA            , 
			              CREATED_AT        , 
			              START_URL         , 
			              JOIN_URL          ,
			              PASSWORD          , 
			              H323_PASSWORD     , 
			              PSTN_PASSWORD     , 
			              ENCRYPTED_PASSWORD,
			              COMMENT           ,
			              FK_SECTION        , 
			              FK_TEACHER        )
		     VALUES      (IDE               , 
		     	          IDEUU             , 
		     	          IDE_HOST          , 
		     	          EMAIL_HOST        , 
		     	          TOPICO            , 
		     	          TIPO              , 
		     	          ESTADO            , 
		     	          HORA_INICIO       , 
		     	          DURACION          , 
		     	          ZONAHORARIA       , 
		     	          AGENDAZOOM        , 
		     	          FEC_CREACION      , 
		     	          LINK_INICIO       ,
		     	          LINK_REUNION      ,
		     	          CLAVE             ,
		     	          CLAVE_H323        ,
		     	          CLAVE_PSTN        ,
		     	          CLAVE_ENCRIPTADA  ,
		     	          COMENTARIO        ,
		     	          FK_SECCION        , 
		     	          FK_PROFESOR       );
		RESULT := 200;

	END IF;
 	RETURN RESULT;
END;
$$ LANGUAGE plpgsql;
/*******************LEER TODAS LAS CLASES ********************/
CREATE OR REPLACE FUNCTION READ_ALL_CLASS() 
                            RETURNS TABLE(ID                 varchar(50) , 
                            	          UUID               varchar(50) ,
                            	          HOST_ID            varchar(50) ,
                            	          HOST_EMAIL         varchar(60) ,
                            	          TOPIC              varchar(30) ,
                            	          TYPE               integer     ,
                            	          STATUS             varchar(20) ,
                            	          START_TIME         timestamp   ,
                            	          DURATION           integer     ,
                            	          TIMEZONE           varchar(50) ,
                            	          AGENDA             varchar(20) , 
	                                      CREATED_AT         timestamp   ,
	                                      START_URL          varchar(800),
	                                      JOIN_URL           varchar(100),
	                                      PASSWORD           varchar(20) ,
	                                      H323_PASSWORD      varchar(20) , 
	                                      PSTN_PASSWORD      varchar(20) ,
	                                      ENCRYPTED_PASSWORD varchar(60) , 
	                                      COMMENT            varchar(500),
	                                      FK_SECTION         integer     ,
	                                      SEC_NAME           varchar(30) , 
	                                      FK_TEACHER         varchar(100), 
	                                      TEA_NAME           varchar(30) , 
	                                      TEA_LASTNAME       varchar(40)) AS $$
DECLARE

BEGIN
	RETURN QUERY
	SELECT CLA.ID                ,
	       CLA.UUID              , 
	       CLA.HOST_ID           , 
	       CLA.HOST_EMAIL        , 
	       CLA.TOPIC             , 
	       CLA.TYPE              , 
	       CLA.STATUS            , 
	       CLA.START_TIME        , 
	       CLA.DURATION          , 
	       CLA.TIMEZONE          , 
	       CLA.AGENDA            , 
	       CLA.CREATED_AT        , 
	       CLA.START_URL         , 
	       CLA.JOIN_URL          , 
	       CLA.PASSWORD          , 
	       CLA.H323_PASSWORD     ,
	       CLA.PSTN_PASSWORD     , 
	       CLA.ENCRYPTED_PASSWORD, 
	       CLA.COMMENT           ,
	       SEC.ID                , 
	       SEC.NAME              , 
	       TEA.EMAIL             , 
	       TEA.NAME              , 
	       TEA.LASTNAME
	FROM CLASS CLA, SECTION SEC, TEACHER TEA
	WHERE CLA.FK_SECTION = SEC.ID 
	  AND CLA.FK_TEACHER = TEA.EMAIL;
END;
$$ LANGUAGE plpgsql;

/********************LEER CLASE POR ID**********************/
CREATE OR REPLACE FUNCTION READ_CLASS(IDE integer) 
                        RETURNS TABLE(ID                 varchar(50) , 
                            	      UUID               varchar(50) ,
                                      HOST_ID            varchar(50) ,
                          	          HOST_EMAIL         varchar(60) ,
                           	          TOPIC              varchar(30) ,
                           	          TYPE               integer     ,
                           	          STATUS             varchar(20) ,
                           	          START_TIME         timestamp   ,
                           	          DURATION           integer     ,
                           	          TIMEZONE           varchar(50) ,
                           	          AGENDA             varchar(20) , 
	                                  CREATED_AT         timestamp   ,
	                                  START_URL          varchar(800),
	                                  JOIN_URL           varchar(100),
	                                  PASSWORD           varchar(20) ,
	                                  H323_PASSWORD      varchar(20) , 
	                                  PSTN_PASSWORD      varchar(20) ,
	                                  ENCRYPTED_PASSWORD varchar(60) , 
	                                  COMMENT            varchar(500),
                        	          FK_SECTION         integer     ,
                        	          SEC_NAME           varchar(30) ,
                        	          FK_TEACHER         varchar(100),
                        	          TEA_NAME           varchar(30) ,
                        	          TEA_LASTNAME       varchar(40)) AS $$
DECLARE

BEGIN
	RETURN QUERY
	SELECT CLA.ID                ,
	       CLA.UUID              , 
	       CLA.HOST_ID           , 
	       CLA.HOST_EMAIL        , 
	       CLA.TOPIC             , 
	       CLA.TYPE              , 
	       CLA.STATUS            , 
	       CLA.START_TIME        , 
	       CLA.DURATION          , 
	       CLA.TIMEZONE          , 
	       CLA.AGENDA            , 
	       CLA.CREATED_AT        , 
	       CLA.START_URL         , 
	       CLA.JOIN_URL          , 
	       CLA.PASSWORD          , 
	       CLA.H323_PASSWORD     ,
	       CLA.PSTN_PASSWORD     , 
	       CLA.ENCRYPTED_PASSWORD, 
	       CLA.COMMENT           ,
	       SEC.ID                , 
	       SEC.NAME              , 
	       TEA.EMAIL             , 
	       TEA.NAME              , 
	       TEA.LASTNAME
	FROM CLASS CLA, SECTION SEC, TEACHER TEA
	WHERE CLA.ID         = IDE 
	  AND CLA.FK_SECTION = SEC.ID 
	  AND CLA.FK_TEACHER = TEA.EMAIL;
END;
$$ LANGUAGE plpgsql;

/**********************MODIFICAR CLASE**********************/
CREATE OR REPLACE FUNCTION UPDATE_CLASS(IDE               varchar(50) , 
	                                    IDEUU             varchar(50) ,
	                                    IDE_HOST          varchar(50) ,
	                                    EMAIL_HOST        varchar(60) ,
	                                    TOPICO            varchar(30) ,
	                                    TIPO              integer     ,
	                                    ESTADO            varchar(20) ,
	                                    HORA_INICIO       timestamp   ,
	                                    DURACION          integer     ,
	                                    ZONAHORARIA       varchar(50) ,
	                                    AGENDAZOOM        varchar(20) , 
	                                    FEC_CREACION      timestamp   ,
	                                    LINK_INICIO       varchar(800),
	                                    LINK_REUNION      varchar(100),
	                                    CLAVE             varchar(20) ,
	                                    CLAVE_H323        varchar(20) ,
	                                    CLAVE_PSTN        varchar(20) ,
	                                    CLAVE_ENCRIPTADA  varchar(60) ,
	                                    COMENTARIO        varchar(500),
	                                    FK_SECCION        integer     ,
	                                    FK_PROFESOR       varchar(100)) 
RETURNS integer AS $$
DECLARE
 RESULT integer;

BEGIN
	IF ((SELECT COUNT(*) FROM CLASS WHERE ID = IDE) = 1) THEN
		
		UPDATE CLASS SET UUID               = IDEUU           ,
		                 HOST_ID            = IDE_HOST        , 
		                 HOST_EMAIL         = EMAIL_HOST      ,
		                 TOPIC              = TOPICO          ,
		                 TYPE               = TIPO            ,
		                 STATUS             = ESTADO          ,
		                 START_TIME         = HORA_INICIO     ,
		                 DURATION           = DURACION        ,
		                 TIMEZONE           = ZONAHORARIA     ,
		                 AGENDA             = AGENDAZOOM      ,
		                 CREATED_AT         = FEC_CREACION    ,
		                 START_URL          = LINK_INICIO     ,
		                 JOIN_URL           = LINK_REUNION    ,
		                 PASSWORD           = CLAVE           ,
		                 H323_PASSWORD      = CLAVE_H323      ,
		                 PSTN_PASSWORD      = CLAVE_PSTN      ,
		                 ENCRYPTED_PASSWORD = CLAVE_ENCRIPTADA,
		                 COMMENT            = COMENTARIO      ,
		                 FK_SECTION         = FK_SECCION      ,
		                 FK_TEACHER         = FK_PROFESOR
		          WHERE ID = IDE;
		
		RESULT := 201;
  	
  	ELSE
	
		RESULT := 204;
	
	END IF;
 	RETURN RESULT;
END;
$$ LANGUAGE plpgsql;

/************MODIFICAR COMENTARIO DE LA CLASE***************/
CREATE OR REPLACE FUNCTION UPDATE_CLASS_COMMENT(IDE        varchar(50),
	                                            COMENTARIO varchar(500))
RETURNS integer AS $$
DECLARE
 RESULT integer;

BEGIN
	IF ((SELECT COUNT(*) FROM CLASS WHERE ID = IDE) = 1) THEN
		
		UPDATE CLASS SET   COMMENT = COMENTARIO      
		             WHERE      ID = IDE;

		RESULT := 201;
  	
  	ELSE
	
		RESULT := 204;
	
	END IF;
 	RETURN RESULT;
END;
$$ LANGUAGE plpgsql;

/**************MODIFICAR PROFESOR DE LA CLASE***************/
CREATE OR REPLACE FUNCTION UPDATE_CLASS_TEACHER(IDE         varchar(50),
	                                            FK_PROFESOR varchar(100))
RETURNS integer AS $$
DECLARE
 RESULT integer;

BEGIN
	IF ((SELECT COUNT(*) FROM CLASS WHERE ID = IDE) = 1) THEN
		
		UPDATE CLASS SET   FK_TEACHER = FK_PROFESOR      
		             WHERE         ID = IDE;

		RESULT := 201;
  	
  	ELSE
	
		RESULT := 204;
	
	END IF;
 	RETURN RESULT;
END;
$$ LANGUAGE plpgsql;

/*********************ELIMINAR CLASS************************/
CREATE OR REPLACE FUNCTION DELETE_CLASS(IDE varchar(50)) RETURNS integer AS $$
DECLARE
 RESULT integer;

BEGIN
	IF ((SELECT COUNT(*) FROM CLASS WHERE ID = IDE) = 1) THEN 

		DELETE FROM CLASS WHERE ID = IDE;
		
		RESULT := 200;

	ELSE

		RESULT := 204;

	END IF;
	RETURN RESULT;
END;
$$ LANGUAGE plpgsql;
/*********************FIN CRUD DE CLASE*********************/

/***************INICIO CRUD DE LISTA DE CLASE***************/
/******************AGREGAR LISTA DE CLASE*******************/
CREATE OR REPLACE FUNCTION CREATE_CLASSLIST(FK_CLASE varchar(50), FK_ESTUDIANTE varchar(100)) RETURNS integer AS $$
DECLARE
 RESULT integer;

BEGIN

	INSERT INTO CLASSLIST(FK_CLASS, FK_STUDENT) VALUES (FK_CLASE, FK_ESTUDIANTE);
	RESULT := 200;

 	RETURN RESULT;
END;
$$ LANGUAGE plpgsql;
/***********LEER LISTA DE CLASE POR ID DE CLASE************/
CREATE OR REPLACE FUNCTION READ_CLASSLIST_BY_CLASS_ID(IDE varchar(50)) RETURNS TABLE(ID integer, FK_CLASS varchar(50), START_TIME timestamp, JOIN_URL varchar(60), CLASS_COMMENT varchar(500), FK_STUDENT varchar(100), STU_NAME varchar(30), STU_LASTNAME varchar(40)) AS $$
DECLARE

BEGIN
	RETURN QUERY
	SELECT LIS.ID, CLA.ID, CLA.START_TIME, CLA.JOIN_URL, CLA.COMMENT, STU.EMAIL, STU.NAME, STU.LASTNAME
	FROM CLASS CLA, STUDENT STU, CLASSLIST LIS
	WHERE CLA.ID = IDE AND LIS.FK_CLASS = CLA.ID AND LIS.FK_STUDENT = STU.EMAIL;
END;
$$ LANGUAGE plpgsql;
/*****************MODIFICAR LISTA DE CLASE*****************/
CREATE OR REPLACE FUNCTION UPDATE_CLASSLIST(IDE integer, FK_CLASE varchar(50), FK_ESTUDIANTE varchar(100)) RETURNS integer AS $$
DECLARE
 RESULT integer;

BEGIN
	IF ((SELECT COUNT(*) FROM CLASSLIST WHERE ID = IDE) = 1) THEN

		UPDATE CLASSLIST SET FK_CLASS = FK_CLASE, FK_STUDENT = FK_ESTUDIANTE WHERE ID = IDE;
		
		RESULT := 201;
  	
  	ELSE
	
		RESULT := 204;
	
	END IF;
 	RETURN RESULT;
END;
$$ LANGUAGE plpgsql;
/*****************ELIMINAR LISTA DE CLASE*****************/
CREATE OR REPLACE FUNCTION DELETE_CLASSLIST(IDE integer) RETURNS integer AS $$
DECLARE
 RESULT integer;

BEGIN
	IF ((SELECT COUNT(*) FROM CLASSLIST WHERE ID = IDE) = 1) THEN 

		DELETE FROM CLASSLIST WHERE ID = IDE;
		
		RESULT := 200;

	ELSE

		RESULT := 204;

	END IF;
	RETURN RESULT;
END;
$$ LANGUAGE plpgsql;
/****************FIN CRUD DE LISTA DE CLASE***************/

/*******************INICIO CRUD DE EDUCA******************/
/***************AGREGAR MODULO A UN PROFESOR**************/
CREATE OR REPLACE FUNCTION CREATE_EDUCATE(FK_SECCION integer, FK_PROFESOR varchar(100)) RETURNS integer AS $$
DECLARE
 RESULT integer;

BEGIN

	INSERT INTO EDUCATE(FK_SECTION, FK_TEACHER) VALUES (FK_SECCION, FK_PROFESOR);
	RESULT := 200;

 	RETURN RESULT;
END;
$$ LANGUAGE plpgsql;
/*************LISTAR MODULOS POR ID DE PROFESOR************/
CREATE OR REPLACE FUNCTION READ_EDUCATE_BY_TEACHER_EMAIL(MAIL varchar(100)) RETURNS TABLE(ID integer, FK_TEACHER varchar(100), TEA_NAME varchar(30), TEA_LASTNAME varchar(40), FK_SECTION integer, SEC_NAME varchar(30)) AS $$
DECLARE

BEGIN
	RETURN QUERY
	SELECT EDU.ID, TEA.EMAIL, TEA.NAME, TEA.LASTNAME, SEC.ID, SEC.NAME
	FROM EDUCATE EDU, TEACHER TEA, SECTION SEC
	WHERE TEA.EMAIL = MAIL AND EDU.FK_SECTION = SEC.ID AND EDU.FK_TEACHER = TEA.EMAIL;
END;
$$ LANGUAGE plpgsql;
/***********LISTAR PROFESORES POR ID DE MODULO************/
CREATE OR REPLACE FUNCTION READ_TEACHER_BY_SECTION_ID(IDE integer) RETURNS TABLE(MAIL VARCHAR(100), TEA_NAME varchar(30), TEA_LASTNAME varchar(40)) AS $$
DECLARE

BEGIN
	RETURN QUERY
	SELECT TEA.EMAIL, TEA.NAME, TEA.LASTNAME
	FROM EDUCATE EDU, TEACHER TEA, SECTION SEC
	WHERE SEC.ID = IDE AND TEA.EMAIL = EDU.FK_TEACHER AND EDU.FK_SECTION = SEC.ID;
END;
$$ LANGUAGE plpgsql;
/********************MODIFICAR EDUCATE********************/
CREATE OR REPLACE FUNCTION UPDATE_EDUCATE(IDE integer, FK_SECCION integer, FK_PROFESOR varchar(100)) RETURNS integer AS $$
DECLARE
 RESULT integer;

BEGIN
	IF ((SELECT COUNT(*) FROM EDUCATE WHERE ID = IDE) = 1) THEN

		UPDATE EDUCATE SET FK_SECTION = FK_SECTION, FK_TEACHER = FK_PROFESOR WHERE ID = IDE;
		
		RESULT := 201;
  	
  	ELSE
	
		RESULT := 204;
	
	END IF;
 	RETURN RESULT;
END;
$$ LANGUAGE plpgsql;
/*****************ELIMINAR EDUCA*****************/
CREATE OR REPLACE FUNCTION DELETE_EDUCATE(IDE integer) RETURNS integer AS $$
DECLARE
 RESULT integer;

BEGIN
	IF ((SELECT COUNT(*) FROM EDUCATE WHERE ID = IDE) = 1) THEN 

		DELETE FROM EDUCATE WHERE ID = IDE;
		
		RESULT := 200;

	ELSE

		RESULT := 204;

	END IF;
	RETURN RESULT;
END;
$$ LANGUAGE plpgsql;
/****************FIN CRUD DE EDUCATE***************/
/********************LEER TODOS LOS GRADOS*******************/
CREATE OR REPLACE FUNCTION READ_ALL_GRADE() RETURNS TABLE(ID integer, NAME varchar(50)) AS $$
DECLARE

BEGIN
	RETURN QUERY
	SELECT GRA.ID, GRA.NAME
	FROM GRADE GRA;
END;
$$ LANGUAGE plpgsql;
/***********************INICIO PLS DE REPORTES*********************/
/************************LISTADO DE PAYMENTS***********************/
CREATE OR REPLACE FUNCTION PAYMENTS_LIST(FECHAINI date, FECHAFIN date) RETURNS TABLE(ID integer, PAYDATE date, EXPIRATIONDATE date, PPTRANSACTIONID varchar(100), AMOUNT numeric, REMAINING_CLASSES integer, FK_SECTION integer, FK_STUDENT varchar(100)) AS $$
DECLARE

BEGIN
	RETURN QUERY
	SELECT PAY.ID, PAY.PAYDATE, PAY.EXPIRATIONDATE, PAY.PPTRANSACTIONID, PAY.AMOUNT, PAY.REMAINING_CLASSES, SEC.ID, STU.EMAIL
	FROM PAYMENT PAY, SECTION SEC, STUDENT STU
	WHERE PAY.PAYDATE BETWEEN FECHAINI AND FECHAFIN
	  AND PAY.FK_STUDENT = STU.EMAIL
	  AND PAY.FK_SECTION = SEC.ID;
END;
$$ LANGUAGE plpgsql;
/************************CANTIDAD DE PAYMENTS***********************/
CREATE OR REPLACE FUNCTION PAYMENTS_COUNT(FECHAINI date, FECHAFIN date) RETURNS integer AS $$
DECLARE
 RESULT integer;

BEGIN
	SELECT COUNT(*)
	FROM PAYMENT PAY
	WHERE PAY.PAYDATE BETWEEN FECHAINI AND FECHAFIN;
END;
$$ LANGUAGE plpgsql;
/*******************LISTADO DE PAYMENTS POR MODULO******************/
CREATE OR REPLACE FUNCTION PAYMENTS_LIST_BY_SECTION(FK_SECCION integer) RETURNS TABLE(ID integer, PAYDATE date, EXPIRATIONDATE date, PPTRANSACTIONID varchar(100), AMOUNT numeric, REMAINING_CLASSES integer, FK_SECTION integer, FK_STUDENT varchar(100)) AS $$
DECLARE

BEGIN
	RETURN QUERY
	SELECT PAY.ID, PAY.PAYDATE, PAY.EXPIRATIONDATE, PAY.PPTRANSACTIONID, PAY.AMOUNT, PAY.REMAINING_CLASSES, SEC.ID, STU.EMAIL
	FROM PAYMENT PAY, SECTION SEC, STUDENT STU
	WHERE SEC.ID = FK_SECCION
	  AND PAY.FK_SECTION = SEC.ID
	  AND PAY.FK_STUDENT = STU.EMAIL;
END;
$$ LANGUAGE plpgsql;
/**************LISTADO DE CLASSES POR PROFESOR Y FECHA**************/
CREATE OR REPLACE FUNCTION READ_CLASS_BY_TEACHER_PERIOD(FECHAINI timestamp, FECHAFIN timestamp, IDE varchar(100)) 
                        RETURNS TABLE(ID                 varchar(50) , 
                            	      UUID               varchar(50) ,
                                      HOST_ID            varchar(50) ,
                          	          HOST_EMAIL         varchar(60) ,
                           	          TOPIC              varchar(30) ,
                           	          TYPE               integer     ,
                           	          STATUS             varchar(20) ,
                           	          START_TIME         timestamp   ,
                           	          DURATION           integer     ,
                           	          TIMEZONE           varchar(50) ,
                           	          AGENDA             varchar(20) , 
	                                  CREATED_AT         timestamp   ,
	                                  START_URL          varchar(800),
	                                  JOIN_URL           varchar(100),
	                                  PASSWORD           varchar(20) ,
	                                  H323_PASSWORD      varchar(20) , 
	                                  PSTN_PASSWORD      varchar(20) ,
	                                  ENCRYPTED_PASSWORD varchar(60) , 
	                                  COMMENT            varchar(500),
                        	          FK_SECTION         integer     ,
                        	          SEC_NAME           varchar(30) ,
                        	          FK_TEACHER         varchar(100),
                        	          TEA_NAME           varchar(30) ,
                        	          TEA_LASTNAME       varchar(40)) AS $$
DECLARE

BEGIN
	RETURN QUERY
	SELECT CLA.ID                ,
	       CLA.UUID              , 
	       CLA.HOST_ID           , 
	       CLA.HOST_EMAIL        , 
	       CLA.TOPIC             , 
	       CLA.TYPE              , 
	       CLA.STATUS            , 
	       CLA.START_TIME        , 
	       CLA.DURATION          , 
	       CLA.TIMEZONE          , 
	       CLA.AGENDA            , 
	       CLA.CREATED_AT        , 
	       CLA.START_URL         , 
	       CLA.JOIN_URL          , 
	       CLA.PASSWORD          , 
	       CLA.H323_PASSWORD     ,
	       CLA.PSTN_PASSWORD     , 
	       CLA.ENCRYPTED_PASSWORD, 
	       CLA.COMMENT           ,
	       SEC.ID                , 
	       SEC.NAME              , 
	       TEA.EMAIL             , 
	       TEA.NAME              , 
	       TEA.LASTNAME
	FROM CLASS CLA, SECTION SEC, TEACHER TEA
	WHERE CLA.START_TIME BETWEEN FECHAINI AND FECHAFIN
	  AND CLA.FK_TEACHER = IDE
	  AND CLA.FK_SECTION = SEC.ID
	  AND CLA.FK_TEACHER = TEA.EMAIL;
END;
$$ LANGUAGE plpgsql;
/**************TOTAL DE HORAS POR PROFESOR Y FECHA**************/
CREATE OR REPLACE FUNCTION TOTAL_HOURS_TEACHER(FECHAINI date, FECHAFIN date) RETURNS TABLE(SALARIO bigint, EMAIL varchar(100), NAME varchar(30), LASTNAME varchar(40)) AS $$
DECLARE

BEGIN
    RETURN QUERY
	SELECT SUM(CLA.DURATION)*4 AS SALARY, TEA.EMAIL, TEA.NAME, TEA.LASTNAME
	FROM TEACHER TEA, CLASS CLA
	WHERE CLA.START_TIME BETWEEN FECHAINI and FECHAFIN
	  AND CLA.FK_TEACHER = TEA.EMAIL
	GROUP BY TEA.EMAIL;
END;
$$ LANGUAGE plpgsql;

/*******CANTIDAD DE ESTUDIANTES POR MODULO EN UNA FECHA*******/
CREATE OR REPLACE FUNCTION COUNT_STUDENTS_BY_SECTION_PERIOD(FECHAINI date, FECHAFIN date, FK_SECCION integer) RETURNS integer AS $$
DECLARE
 RETURN integer;

BEGIN
	SELECT COUNT(*)
	FROM STUDENT STU, SECTION SEC, PAYMENT PAY
	WHERE PAY.FK_STUDENT = STU.EMAIL
	  AND PAY.FK_SECTION = SEC.ID
	  AND SEC.ID         = IDE
	  AND PAY.PAYDATE BETWEEN FECHAINI AND FECHAFIN;
END;
$$ LANGUAGE plpgsql;

/**************STUDENTS BY SECTION IN A PERIOD**************/
CREATE OR REPLACE FUNCTION READ_STUDENTS_BY_SECTION_PERIOD(FECHAINI date, FECHAFIN date, FK_SECCION integer) RETURNS TABLE(EMAIL varchar(100), PASSWORD varchar(30), NAME varchar(30), LASTNAME varchar(40), BIRTHDATE date, PHONE varchar(20), COUNTRY varchar(30), STATUS varchar(1)) AS $$
DECLARE

BEGIN
	RETURN QUERY
	SELECT STU.EMAIL, STU.PASSWORD, STU.NAME, STU.LASTNAME, STU.BIRTHDATE, STU.PHONE, STU.COUNTRY, STU.STATUS
	FROM STUDENT STU, SECTION SEC, PAYMENT PAY
	WHERE PAY.FK_STUDENT = STU.EMAIL
	  AND PAY.FK_SECTION = SEC.ID
	  AND SEC.ID         = IDE
	  AND PAY.PAYDATE BETWEEN FECHAINI AND FECHAFIN;
END;
$$ LANGUAGE plpgsql;