SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[t2223] (
		[c21]     [int] NULL,
		[c22]     [int] NULL,
		[c33]     [int] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[t2223]
	WITH CHECK
	ADD CONSTRAINT [FK__t2__c21__37A5467C]
	FOREIGN KEY ([c21]) REFERENCES [dbo].[t1newN] ([c11])
ALTER TABLE [dbo].[t2223]
	CHECK CONSTRAINT [FK__t2__c21__37A5467C]

GO
ALTER TABLE [dbo].[t2223] SET (LOCK_ESCALATION = TABLE)
GO
