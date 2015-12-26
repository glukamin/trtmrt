SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Persons] (
		[P_Id]          [int] NOT NULL,
		[LastName]      [varchar](255) COLLATE Latin1_General_CI_AI NOT NULL,
		[FirstName]     [varchar](255) COLLATE Latin1_General_CI_AI NULL,
		[Address]       [varchar](255) COLLATE Latin1_General_CI_AI NULL,
		[City]          [varchar](255) COLLATE Latin1_General_CI_AI NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Persons]
	ADD
	CONSTRAINT [PK__Persons__A3420A573EEB0444]
	PRIMARY KEY
	CLUSTERED
	([P_Id])
	ON [PRIMARY]
GO
ALTER TABLE [dbo].[Persons] SET (LOCK_ESCALATION = TABLE)
GO
