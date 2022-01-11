CREATE TABLE lookup.FileMetadata (
	FileID int NOT NULL , 
	Name nvarchar(100), 
	OtherMetadata nvarchar(10),
	CONSTRAINT PK_NameID PRIMARY KEY (FileID) 
	)
