--------------/*CREATE DATABASE*/---------------
CREATE USER aracademy PASSWORD 'ArA.062020';
ALTER ROLE aracademy WITH SUPERUSER;
CREATE DATABASE ARAcademyDB WITH OWNER aracademy;

----------------/*CREATE USER*/----------------
CREATE TABLE ADMINISTRATOR(
	USERNAME			VARCHAR(20),
	PASSWORD			VARCHAR(30),
	CONSTRAINT PK_ADMINISTRATOR PRIMARY KEY (USER)
);

------------------/*CREATES*/------------------
CREATE TABLE GRADE(
	ID					SERIAL       NOT NULL,
	NAME		    	VARCHAR(50)  NOT NULL,
 	CONSTRAINT PK_GRADE PRIMARY KEY (ID)
);

CREATE TABLE STUDENT(
	EMAIL				VARCHAR(100) NOT NULL,
	PASSWORD		    VARCHAR(30)  NOT NULL,
	NAME				VARCHAR(30)  NOT NULL,
	LASTNAME			VARCHAR(40)  NOT NULL,
	BIRTHDATE			DATE,
	PHONE               VARCHAR(20),
	COUNTRY             VARCHAR(30),
	FK_GRADE			INTEGER      NOT NULL,
 	CONSTRAINT PK_STUDENT PRIMARY KEY (EMAIL)
);

CREATE TABLE TEACHER(
	EMAIL				VARCHAR(100) NOT NULL,
	PASSWORD		    VARCHAR(30)  NOT NULL,
	NAME				VARCHAR(30)  NOT NULL,
	LASTNAME			VARCHAR(40)  NOT NULL,
	BIRTHDATE			DATE,
	PHONE               VARCHAR(20),
	COUNTRY             VARCHAR(30),
 	CONSTRAINT PK_TEACHER PRIMARY KEY (EMAIL)
);

CREATE TABLE COURSE(
	ID					NUMERIC(30)  NOT NULL,
	NAME		    	VARCHAR(30)  NOT NULL,
	DESCRIPTION			VARCHAR(500) NOT NULL,
	FK_GRADE			INTEGER      NOT NULL,
 	CONSTRAINT PK_COURSE PRIMARY KEY (ID)
);

CREATE TABLE SECTION(
	ID					NUMERIC(30)  NOT NULL,
	NAME		    	VARCHAR(30)  NOT NULL,
	AMOUNT              NUMERIC,
	DESCRIPTION			VARCHAR(500) NOT NULL,
	FK_COURSE			INTEGER      NOT NULL,
 	CONSTRAINT PK_SECTION PRIMARY KEY (ID)
);

CREATE TABLE TOPIC(
	ID					NUMERIC(30)  NOT NULL,
	NAME		    	VARCHAR(30)  NOT NULL,
	FK_SECTION			INTEGER      NOT NULL,
 	CONSTRAINT PK_TOPIC PRIMARY KEY (ID)
);

CREATE TABLE DOCUMENT(
	ID					SERIAL       NOT NULL,
	FILENAME		    VARCHAR(50)  NOT NULL,
	VISIBILITY			INTEGER,
	FILETYPE			VARCHAR(50)  NOT NULL,
	FK_TOPIC			INTEGER      NOT NULL,
 	CONSTRAINT PK_DOCUMENT PRIMARY KEY (ID)
);

CREATE TABLE PAYMENT(
	ID					NUMERIC(30)  NOT NULL,
	PAYDATE		        DATE         NOT NULL,
	AMOUNT			    INTEGER,
	FILETYPE			VARCHAR(50)  NOT NULL,
	FK_SECTION			INTEGER      NOT NULL,
	FK_STUDENT          VARCHAR(100) NOT NULL,
	FK_TEACHER			VARCHAR(100) NOT NULL,
 	CONSTRAINT PK_PAYMENT PRIMARY KEY (ID)
);

CREATE TABLE CLASS(
	ID					SERIAL       NOT NULL,
	CLASSDATE		    DATE		 NOT NULL,
	LINK 				VARCHAR(60)  NOT NULL,
	FK_SECTION			INTEGER      NOT NULL,
	FK_TEACHER			VARCHAR(100) NOT NULL,
 	CONSTRAINT PK_CLASS PRIMARY KEY (ID)
);

CREATE TABLE CLASSLIST(
	ID					SERIAL		 NOT NULL,
	LISTDATE			DATE		 NOT NULL,
	FK_CLASS			INTEGER      NOT NULL,
	FK_STUDENT			VARCHAR(100) NOT NULL,
 	CONSTRAINT PK_CLASSLIST PRIMARY KEY (ID)
);

CREATE TABLE EDUCATE(
	ID					SERIAL		 NOT NULL,
	FK_SECTION			INTEGER      NOT NULL,
	FK_TEACHER			VARCHAR(100) NOT NULL,
 	CONSTRAINT PK_EDUCATE PRIMARY KEY (ID)
);