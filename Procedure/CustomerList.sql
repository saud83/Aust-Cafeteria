SET SERVEROUTPUT ON;
CREATE OR REPLACE Procedure CustomerList
is

BEGIN
	DBMS_OUTPUT.PUT_LINE('Customer List : ');
	FOR i in (select * from customer1@asif UNION select * from customer2@ishan) LOOP
		DBMS_OUTPUT.PUT_LINE(i.customer_id || ' ' || i.customer_name || ' ' || i.customer_type || ' ' || i.customer_userName || ' ' || i.customer_password);
	END LOOP;

END CustomerList;

/

BEGIN
	CustomerList;
END;
/