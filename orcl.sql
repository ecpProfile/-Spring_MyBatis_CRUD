CREATE TABLE EMPLOYEE
 (
    ID NUMBER(10) NOT NULL PRIMARY KEY,
 
    FULLNAME VARCHAR2(50) NOT NULL,
 
    EMAIL VARCHAR2(50) NOT NULL,
 
    GENDER VARCHAR2(50) NOT NULL,
 
    HOBBIES VARCHAR2(50) NOT NULL,
 
    COUNTRY VARCHAR2(50) NOT NULL,
 
    ADDRESS VARCHAR2(50) NOT NULL
 
);

CREATE SEQUENCE EMP_SEQUENCE
  MINVALUE 1001
  START WITH 1001
  INCREMENT BY 1;

CREATE OR REPLACE TRIGGER EMP_ON_INSERT
  BEFORE INSERT ON EMPLOYEE
  FOR EACH ROW
BEGIN
  SELECT EMP_SEQUENCE.NEXTVAL
  INTO :NEW.ID
  FROM DUAL;
END;

DROP TRIGGER SYSTEM.EMP_ON_INSERT;

INSERT INTO EMPLOYEE(ID,
FULLNAME,
EMAIL,
GENDER,
HOBBIES,
COUNTRY,
ADDRESS) VALUES (EMP_SEQUENCE.NEXTVAL,'Kasturi4','kk4@hcl.com','F','reading','India','Bansawadi4');
COMMIT;

SELECT * FROM EMPLOYEE;