SET SERVEROUTPUT ON;
CREATE OR REPLACE FUNCTION InsertMenufromSite1
	
return number
is
	m1 NUMBER;
 	total number;
	B menu.menu_name%TYPE;
	C menu.price%TYPE;
	D menu.menu_type%TYPE;
BEGIN
	select count(menu_id) into m1 from menu;
	FOR R IN (SELECT * FROM menu1@asif) LOOP
		B := R.menu_name;
		C := R.price;
		D := R.menu_type;
		m1 := m1 + 1;
		INSERT INTO menu(menu_id, menu_name, price, menu_type) VALUES(m1, B, C, D);
		commit;
	END LOOP;
	
	FOR R IN (SELECT * FROM menu3@asif) LOOP
		B := R.menu_name;
		C := R.price;
		D := R.menu_type;
		m1 := m1 + 1;
		INSERT INTO menu(menu_id, menu_name, price, menu_type) VALUES(m1, B, C, D);
		commit;
	END LOOP;
	
	FOR R IN (SELECT * FROM menu5@asif) LOOP
		B := R.menu_name;
		C := R.price;
		D := R.menu_type;
		m1 := m1 + 1;
		INSERT INTO menu(menu_id, menu_name, price, menu_type) VALUES(m1, B, C, D);
		commit;
	END LOOP;
	
	return 1;
END InsertMenufromSite1;

/

DECLARE
	m1 number;
BEGIN
	m1 := InsertMenufromSite1;
END;
/