SET SERVEROUTPUT ON;
CREATE OR REPLACE Procedure CustomerList2
is

BEGIN
	
    DBMS_OUTPUT.PUT_LINE('Teacher : ');
	FOR i in (select * from customer2@ishan) LOOP
		DBMS_OUTPUT.PUT_LINE(i.customer_id || ' ' || i.customer_name || ' ' || i.customer_type || ' ' || i.customer_userName || ' ' || i.customer_password);
	END LOOP;


END CustomerList2;

/