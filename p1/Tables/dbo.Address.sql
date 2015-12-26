SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Address] (
		[AddressID_dbo]        [int] IDENTITY(1, 1) NOT NULL,
		[AddressLine1_dbo]     [nvarchar](52) COLLATE Latin1_General_CI_AI NOT NULL,
		[test]                 [int] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Address] SET (LOCK_ESCALATION = TABLE)
GO
