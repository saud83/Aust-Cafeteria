SET SERVEROUTPUT ON;

DECLARE 
	A customer.customer_name%TYPE;
	B customer.customer_userName%TYPE;
	C customer.customer_password%TYPE;
BEGIN
	A := '&Student_Name';
	B := '&Student_userName';
	C := '&student_password';
	AddCustomerInSite1(A, B, C);
	Commit;
END;
/