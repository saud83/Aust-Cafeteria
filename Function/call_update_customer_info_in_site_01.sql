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
	A := '&Student_Name';
	B := '&Student_old_userName';
	C := '&student_old_password';
	D := '&Student_new_userName';
	E := '&student_new_password';
	x := update_customer_info_in_site1(A, B, C, D, E);
	IF x = 1 THEN
		DBMS_OUTPUT.PUT_LINE('Successfully updated');
		COMMIT;
	ELSIF x = 0 THEN
		DBMS_OUTPUT.PUT_LINE('Could not update');
	END IF;
END;
/