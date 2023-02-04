SET SERVEROUTPUT ON;
SET VERIFY OFF;

ACCEPT X NUMBER PROMPT "Enter customer id = "
ACCEPT Y CHAR PROMPT "Enter customer Type = "

CREATE OR REPLACE PACKAGE mypack3 AS
	PROCEDURE P3(cid IN customer.customer_id%TYPE, ctype IN customer.customer_type%TYPE);
END mypack3;
/

CREATE OR REPLACE PACKAGE BODY mypack3 AS
	
	PROCEDURE P3(cid IN customer.customer_id%TYPE, ctype IN customer.customer_type%TYPE)
	IS
	myexp EXCEPTION;
	BEGIN
		IF ctype = 'Student' THEN
			DBMS_OUTPUT.PUT_LINE('cid' || '	' || 'customer_name' || '	' || 'order_item' || '	' || 'order_date' || '	' || 'order_quantity');
			FOR i IN(select * from orderr@asif a inner join customer1@asif b 
			ON a.customer_id = b.customer_id and a.customer_id = cid) LOOP
				DBMS_OUTPUT.PUT_LINE(cid || '	' || i.customer_name || '		' || i.order_item || '		' || i.order_date || '	' || i.order_quantity);
			END LOOP;
		ELSIF ctype = 'Teacher' THEN
			DBMS_OUTPUT.PUT_LINE('cid' || '	' || 'customer_name' || '	' || 'order_item' || '	' || 'order_date' || '	' || 'order_quantity');
			FOR i IN(select * from orderr@ishan a inner join customer2@ishan b 
			ON a.customer_id = b.customer_id and a.customer_id = cid) LOOP
				DBMS_OUTPUT.PUT_LINE(cid || '	' || i.customer_name || '		' || i.order_item || '		' || i.order_date || '	' || i.order_quantity);
			END LOOP;
		ELSE
			RAISE myexp;
		END IF;
		
	EXCEPTION
		WHEN myexp THEN
			DBMS_OUTPUT.PUT_LINE('Enter valid customer type');
		WHEN NO_DATA_FOUND THEN
			DBMS_OUTPUT.PUT_LINE('No such customer...');
		WHEN OTHERS THEN
			DBMS_OUTPUT.PUT_LINE('Something happened...');
	END P3;
END mypack3;
/

DECLARE
	a NUMBER := &X;
	b VARCHAR2(10) := &Y;
BEGIN
	mypack3.P3(a, b);
END;
/