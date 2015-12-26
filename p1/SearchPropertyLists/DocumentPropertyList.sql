CREATE SEARCH PROPERTY LIST [DocumentPropertyList]
	AUTHORIZATION [dbo];
ALTER SEARCH PROPERTY LIST [DocumentPropertyList]
	ADD 'Author'
	WITH (
	      PROPERTY_SET_GUID = 'f29f85e0-4ff9-1068-ab91-08002b27b3d9',
	      PROPERTY_INT_ID = 4,
	      PROPERTY_DESCRIPTION = 'System.Author - Author or authors of the item.'
	      );
GO
