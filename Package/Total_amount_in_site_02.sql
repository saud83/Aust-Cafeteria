SET SERVEROUTPUT ON;
SET VERIFY OFF;



CREATE OR REPLACE PACKAGE mypack1 AS
	FUNCTION F1(n in NUMBER)
	RETURN NUMBER;
	
	PROCEDURE P1(n IN NUMBER);
END mypack1;
/

CREATE OR REPLACE PACKAGE BODY mypack1 AS
	FUNCTION F1(n in NUMBER)
	RETURN NUMBER
	IS
	num number := 0;
	BEGIN
		FOR i IN (select * from orderr@ishan) LOOP
			num := num + i.amount;
		END LOOP;
		return num;
	END F1;
	
	PROCEDURE P1(n IN NUMBER)
	IS
	BEGIN
		DBMS_OUTPUT.PUT_LINE('Total Amount in site 02 = '||n||' taka');
	END P1;
END mypack1;
/

DECLARE
	num NUMBER := 0;
BEGIN
	num := mypack1.F1(num);
	mypack1.p1(num);
END;
/