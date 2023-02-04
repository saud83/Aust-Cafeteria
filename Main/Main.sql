SET SERVEROUTPUT ON;
SET VERIFY OFF;

--ACCEPT X CHAR PROMPT "Student Name : "
--ACCEPT Y CHAR PROMPT "User Name : "
--ACCEPT Z CHAR PROMPT "Password : "

BEGIN
	Show_Staring_Option;
END;
/


DECLARE 
	x number := &Choose_a_Option;
	A customer.customer_name%TYPE;
	B customer.customer_userName%TYPE;
	C customer.customer_password%TYPE;
	D customer.customer_userName%TYPE;
	E customer.customer_password%TYPE;
	outOfChoise EXCEPTION;
BEGIN
	IF x > 8 THEN
		RAISE outOfChoise;
	END IF;
	IF x = 1 THEN
		x := TotalCustomerinSite1;
		DBMS_OUTPUT.PUT_LINE('Total customer is site One : ' || x);
	END IF;
	IF x = 5 THEN
		A := '&Student_Name';
		B := '&Student_userName';
		C := '&student_password';
		AddCustomerInSite1(A, B, C);
	END IF;
	IF x = 7 THEN
		A := '&Student_Name';
		B := '&Student_old_userName';
		C := '&student_old_password';
		D := '&Student_new_userName';
		E := '&student_new_password';
		x := update_customer_info_in_site1(A, B, C, D, E);
		IF x = 1 THEN
			DBMS_OUTPUT.PUT_LINE('Successfully updated');
		ELSIF x = 0 THEN
			DBMS_OUTPUT.PUT_LINE('Could not update');
		END IF;
	END IF;
	EXCEPTION
		WHEN outOfChoise THEN
			DBMS_OUTPUT.PUT_LINE('----Choose a valid option----');
END;
/