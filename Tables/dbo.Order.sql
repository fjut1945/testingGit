SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Order] (
		[OrderId]         [int] NOT NULL,
		[ClientId]        [int] NULL,
		[OrderDate]       [datetime] NULL,
		[OrderTotal]      [numeric](18, 2) NULL,
		[OrderStatus]     [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Order]
	ADD
	CONSTRAINT [pkOrderId]
	PRIMARY KEY
	CLUSTERED
	([OrderId])
	ON [PRIMARY]
GO
ALTER TABLE [dbo].[Order] SET (LOCK_ESCALATION = TABLE)
GO
