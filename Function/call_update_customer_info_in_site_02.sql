SET SERVEROUTPUT ON;
SET VERIFY OFF;
DECLARE 
	x number;
	A customer.customer_name%TYPE;
	B customer.customer_userName%TYPE;
	C customer.customer_password%TYPE;
	D customer.customer_userName%TYPE;
	E customer.customer_password%TYPE;
BEGIN
	A := '&Teacher_Name';
	B := '&Teacher_old_userName';
	C := '&Teacher_old_password';
	D := '&Teacher_new_userName';
	E := '&Teacher_new_password';
	x := update_customer_info_in_site2(A, B, C, D, E);
	IF x = 1 THEN
		DBMS_OUTPUT.PUT_LINE('Successfully updated');
		COMMIT;
	ELSIF x = 0 THEN
		DBMS_OUTPUT.PUT_LINE('Could not update');
	END IF;
END;
/