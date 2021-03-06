--------------/*CREATE DATABASE*/---------------
CREATE USER aracademy PASSWORD 'ArA.062020';
ALTER ROLE aracademy WITH SUPERUSER;
CREATE DATABASE ARAcademyDB WITH OWNER aracademy;

----------------/*CREATE USER*/----------------
CREATE TABLE ADMINISTRATOR(
	USERNAME			VARCHAR(20),
	PASSWORD			VARCHAR(30),
	CONSTRAINT PK_ADMINISTRATOR PRIMARY KEY (USERNAME)
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
	STATUS              VARCHAR(1)   NOT NULL,
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
	STATUS              VARCHAR(1)   NOT NULL,
 	CONSTRAINT PK_TEACHER PRIMARY KEY (EMAIL)
);

CREATE TABLE COURSE(
	ID					VARCHAR(20)  NOT NULL,
	NAME		    	VARCHAR(30)  NOT NULL,
	DESCRIPTION			VARCHAR(500) NOT NULL,
	FK_GRADE			INTEGER      NOT NULL,
 	CONSTRAINT PK_COURSE PRIMARY KEY (ID)
);

CREATE TABLE SECTION(
	ID					SERIAL       NOT NULL,
	NAME		    	VARCHAR(30)  NOT NULL,
	AMOUNT              NUMERIC,
	DESCRIPTION			VARCHAR(500) NOT NULL,
	FK_COURSE			VARCHAR(20)  NOT NULL,
 	CONSTRAINT PK_SECTION PRIMARY KEY (ID)
);

CREATE TABLE TOPIC(
	ID					SERIAL       NOT NULL,
	NAME		    	VARCHAR(200) NOT NULL,
	FK_SECTION			INTEGER      NOT NULL,
 	CONSTRAINT PK_TOPIC PRIMARY KEY (ID)
);

CREATE TABLE DOCUMENT(
	ID					SERIAL       NOT NULL,
	FILENAME		    VARCHAR(200) NOT NULL,
	VISIBILITY			INTEGER,
	FILETYPE			VARCHAR(15)  NOT NULL,
	FK_TOPIC			INTEGER      NOT NULL,
	BYTES				BYTEA        NOT NULL,
 	CONSTRAINT PK_DOCUMENT PRIMARY KEY (ID)
);

CREATE TABLE PAYMENT(
	ID					SERIAL	     NOT NULL,
	PAYDATE		        DATE         NOT NULL,
	EXPIRATIONDATE		DATE         NOT NULL,
	PPTRANSACTIONID     VARCHAR(100) NOT NULL,
	AMOUNT			    NUMERIC              ,
	REMAINING_CLASSES   INTEGER      NOT NULL,
	FK_SECTION			INTEGER      NOT NULL,
	FK_STUDENT          VARCHAR(100) NOT NULL,
 	CONSTRAINT PK_PAYMENT PRIMARY KEY (ID)
);

CREATE TABLE CLASS(
	ID					VARCHAR(50)  NOT NULL,
	UUID                VARCHAR(50)  NOT NULL,
	HOST_ID             VARCHAR(50)  NOT NULL,
	HOST_EMAIL          VARCHAR(60)  NOT NULL,
	TOPIC               VARCHAR(30)  NOT NULL,
	TYPE                INTEGER      NOT NULL,
	STATUS              VARCHAR(20)  NOT NULL,
	START_TIME          TIMESTAMP    NOT NULL,
	DURATION            INTEGER      NOT NULL,
	TIMEZONE            VARCHAR(50)  NOT NULL,
    AGENDA              VARCHAR(20)  NOT NULL,
    CREATED_AT          TIMESTAMP    NOT NULL,
    START_URL           VARCHAR(800) NOT NULL,
    JOIN_URL            VARCHAR(100) NOT NULL,
    PASSWORD            VARCHAR(20)  NOT NULL,
    H323_PASSWORD       VARCHAR(20)  NOT NULL,
    PSTN_PASSWORD       VARCHAR(20)  NOT NULL,
    ENCRYPTED_PASSWORD  VARCHAR(60)  NOT NULL,
	COMMENT             VARCHAR(500) NOT NULL,
	FK_SECTION			INTEGER      NOT NULL,
	FK_TEACHER			VARCHAR(100),
 	CONSTRAINT PK_CLASS PRIMARY KEY (ID)
);

CREATE TABLE CLASSLIST(
	ID					SERIAL		 NOT NULL,
	FK_CLASS			VARCHAR(50)  NOT NULL,
	FK_STUDENT			VARCHAR(100) NOT NULL,
 	CONSTRAINT PK_CLASSLIST PRIMARY KEY (ID)
);

CREATE TABLE EDUCATE(
	ID					SERIAL		 NOT NULL,
	FK_SECTION			INTEGER      NOT NULL,
	FK_TEACHER			VARCHAR(100) NOT NULL,
 	CONSTRAINT PK_EDUCATE PRIMARY KEY (ID)
);