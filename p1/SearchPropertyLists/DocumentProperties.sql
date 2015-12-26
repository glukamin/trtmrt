CREATE SEARCH PROPERTY LIST [DocumentProperties]
	AUTHORIZATION [dbo];
ALTER SEARCH PROPERTY LIST [DocumentProperties]
	ADD 'Title'
	WITH (
	      PROPERTY_SET_GUID = 'f29f85e0-4ff9-1068-ab91-08002b27b3d9',
	      PROPERTY_INT_ID = 2,
	      PROPERTY_DESCRIPTION = 'System.Title - Title of the item.'
	      );
GO
