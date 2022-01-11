-- insert dummy data into MetaData table 

MERGE Lookup.FileMetadata	T
	USING	(
		SELECT 1 AS FileID, 'People' as Name, NULL as OtherMetadata
		UNION 
		SELECT 2 AS FileID, 'Sales' as Name, NULL as OtherMetadata
		UNION
		SELECT 3 AS FileID, 'Product' as Name, NULL as OtherMetadata
			)				S
	ON T.FileID = S.FileID
	WHEN MATCHED THEN UPDATE 
		SET T.Name = S.Name 
	WHEN NOT MATCHED THEN 
		INSERT (FileID, Name) 
		VALUES (FileID, Name) ; 