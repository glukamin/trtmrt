SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TableDelete] (
		[tst146]       [money] NULL,
		[tst123]       [nvarchar](50) COLLATE Latin1_General_CI_AI NULL,
		[tst155]       [nvarchar](52) COLLATE Latin1_General_CI_AI NULL,
		[column_b]     [varchar](20) COLLATE Latin1_General_CI_AI NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[TableDelete] SET (LOCK_ESCALATION = TABLE)
GO
