SET SERVEROUTPUT ON;

DECLARE 
	A customer.customer_name%TYPE;
	B customer.customer_userName%TYPE;
	C customer.customer_password%TYPE;
BEGIN
	A := '&Teacher_Name';
	B := '&Teacher_userName';
	C := '&Teacher_password';
	AddCustomerInSite2(A, B, C);
	Commit;
END;
/