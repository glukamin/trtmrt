SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[Orders] (
		[O_Id]        [int] NOT NULL,
		[OrderNo]     [int] NOT NULL,
		[P_Id]        [int] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Orders]
	ADD
	CONSTRAINT [PK__Orders__5AAB0C38B88686D9]
	PRIMARY KEY
	CLUSTERED
	([O_Id])
	ON [PRIMARY]
GO
ALTER TABLE [dbo].[Orders]
	WITH CHECK
	ADD CONSTRAINT [fk_PerOrders]
	FOREIGN KEY ([P_Id]) REFERENCES [dbo].[Persons] ([P_Id])
ALTER TABLE [dbo].[Orders]
	CHECK CONSTRAINT [fk_PerOrders]

GO
ALTER TABLE [dbo].[Orders] SET (LOCK_ESCALATION = TABLE)
GO
