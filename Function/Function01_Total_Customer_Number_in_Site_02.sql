CREATE OR REPLACE FUNCTION TotalCustomerinSite2
	
return number
is
	m2 NUMBER;
 	total number;
BEGIN

    select count(*) into m2 from customer2@ishan;

    total := m2;
 
	
    return total;


END TotalCustomerinSite2;

/