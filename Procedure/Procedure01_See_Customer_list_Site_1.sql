SET SERVEROUTPUT ON;
CREATE OR REPLACE Procedure CustomerList1
is

BEGIN
	DBMS_OUTPUT.PUT_LINE('Student : ');
	FOR i in (select * from customer1@asif) LOOP
		DBMS_OUTPUT.PUT_LINE(i.customer_id || ' ' || i.customer_name || ' ' || i.customer_type || ' ' || i.customer_userName || ' ' || i.customer_password);
	END LOOP;

END CustomerList1;

/