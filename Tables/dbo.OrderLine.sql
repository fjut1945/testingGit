SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[OrderLine] (
		[OrderId]        [int] NOT NULL,
		[LineNumber]     [int] NOT NULL,
		[ProductId]      [int] NOT NULL,
		[Qty]            [numeric](18, 3) NOT NULL,
		[LineTotal]      [numeric](18, 2) NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[OrderLine]
	ADD
	CONSTRAINT [pk_OrderId_LineNumber]
	PRIMARY KEY
	CLUSTERED
	([OrderId], [LineNumber])
	ON [PRIMARY]
GO
ALTER TABLE [dbo].[OrderLine] SET (LOCK_ESCALATION = TABLE)
GO
