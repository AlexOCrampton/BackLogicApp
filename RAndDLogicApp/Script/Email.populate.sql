-- insert dummy data into email table, assign own email address for testing 

MERGE Lookup.Email	T 
	USING	(
		SELECT 'TestEmail' as email, 1 as FileID
	 UNION 
		SELECT 'PeopleAddressOne' as email, 1 as FileID
	 UNION 
		SELECT 'PeopleAddressTwo' as email, 1 as FileID
	 UNION
		SELECT 'SalesAddressOne' as email, 2 as FileID
	 UNION 
		SELECT 'SalesAddressTwo' as email, 2 as FileID
	 UNION 
		SELECT 'ProductAddressOne' as email, 3 as FileID
	  UNION 
	 SELECT 'ProductAddressTwo' as email, 3 as FileID
			)		S 
	ON T.email = S.email
	WHEN MATCHED THEN UPDATE 
		SET T.Email = S.Email 
	WHEN NOT MATCHED THEN
		INSERT (Email, FileID)	
		VALUES (Email, FileID) ; 