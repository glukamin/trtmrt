SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BillOfMaterials] (
		[BillOfMaterialsID]     [int] IDENTITY(1, 1) NOT NULL,
		[ProductAssemblyID]     [int] NULL,
		[ComponentID]           [int] NOT NULL,
		[StartDate]             [datetime] NOT NULL,
		[EndDate]               [datetime] NULL,
		[UnitMeasureCode]       [nchar](3) COLLATE Latin1_General_CI_AI NOT NULL,
		[BOMLevel]              [smallint] NOT NULL,
		[PerAssemblyQty]        [decimal](8, 2) NOT NULL,
		[ModifiedDat]           [datetime] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[BillOfMaterials]
	ADD
	CONSTRAINT [PK_BillOfMaterials_BillOfMaterialsID]
	PRIMARY KEY
	NONCLUSTERED
	([BillOfMaterialsID])
	ON [PRIMARY]
GO
ALTER TABLE [dbo].[BillOfMaterials]
	ADD
	CONSTRAINT [CK_BillOfMaterials_BOMLevel]
	CHECK
	([ProductAssemblyID] IS NULL AND [BOMLevel]=(0) AND [PerAssemblyQty]=(1.00) OR [ProductAssemblyID] IS NOT NULL AND [BOMLevel]>=(1))
GO
ALTER TABLE [dbo].[BillOfMaterials]
CHECK CONSTRAINT [CK_BillOfMaterials_BOMLevel]
GO
ALTER TABLE [dbo].[BillOfMaterials]
	ADD
	CONSTRAINT [CK_BillOfMaterials_EndDate]
	CHECK
	([EndDate]>[StartDate] OR [EndDate] IS NULL)
GO
ALTER TABLE [dbo].[BillOfMaterials]
CHECK CONSTRAINT [CK_BillOfMaterials_EndDate]
GO
ALTER TABLE [dbo].[BillOfMaterials]
	ADD
	CONSTRAINT [CK_BillOfMaterials_PerAssemblyQty]
	CHECK
	([PerAssemblyQty]>=(1.00))
GO
ALTER TABLE [dbo].[BillOfMaterials]
CHECK CONSTRAINT [CK_BillOfMaterials_PerAssemblyQty]
GO
ALTER TABLE [dbo].[BillOfMaterials]
	ADD
	CONSTRAINT [CK_BillOfMaterials_ProductAssemblyID]
	CHECK
	([ProductAssemblyID]<>[ComponentID])
GO
ALTER TABLE [dbo].[BillOfMaterials]
CHECK CONSTRAINT [CK_BillOfMaterials_ProductAssemblyID]
GO
ALTER TABLE [dbo].[BillOfMaterials]
	ADD
	CONSTRAINT [DF_BillOfMaterials_ModifiedDate]
	DEFAULT (getdate()) FOR [ModifiedDat]
GO
ALTER TABLE [dbo].[BillOfMaterials]
	ADD
	CONSTRAINT [DF_BillOfMaterials_PerAssemblyQty]
	DEFAULT ((1.00)) FOR [PerAssemblyQty]
GO
ALTER TABLE [dbo].[BillOfMaterials]
	ADD
	CONSTRAINT [DF_BillOfMaterials_StartDate]
	DEFAULT (getdate()) FOR [StartDate]
GO
ALTER TABLE [dbo].[BillOfMaterials] SET (LOCK_ESCALATION = TABLE)
GO
