SET SERVEROUTPUT ON;

CREATE OR REPLACE TRIGGER InsertInCustomerfromSite1 
AFTER INSERT 
ON customer
DECLARE
BEGIN
	DBMS_OUTPUT.PUT_LINE('New row inserted into Customer Table of Site 1');
END;
/

CREATE OR REPLACE TRIGGER UpdateCustomer 
AFTER Update 
ON customer
DECLARE
BEGIN
	DBMS_OUTPUT.PUT_LINE('New row inserted into Customer Table of Site 2');
END;
/

CREATE OR REPLACE TRIGGER InsertInMenufromSite 
AFTER INSERT 
ON menu
DECLARE
BEGIN
	DBMS_OUTPUT.PUT_LINE('New row inserted into menu table');
END;
/