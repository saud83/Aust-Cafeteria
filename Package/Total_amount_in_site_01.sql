SET SERVEROUTPUT ON;
SET VERIFY OFF;



CREATE OR REPLACE PACKAGE mypack AS
	FUNCTION F1(n in NUMBER)
	RETURN NUMBER;
	
	PROCEDURE P1(n IN NUMBER);
END mypack;
/

CREATE OR REPLACE PACKAGE BODY mypack AS
	FUNCTION F1(n in NUMBER)
	RETURN NUMBER
	IS
	num number := 0;
	BEGIN
		FOR i IN (select * from orderr@asif) LOOP
			num := num + i.amount;
		END LOOP;
		return num;
	END F1;
	
	PROCEDURE P1(n IN NUMBER)
	IS
	BEGIN
		DBMS_OUTPUT.PUT_LINE('Total Amount in site 01 = '||n || ' taka');
	END P1;
END mypack;
/

DECLARE
	num NUMBER := 0;
BEGIN
	num := mypack.F1(num);
	mypack.p1(num);
END;
/