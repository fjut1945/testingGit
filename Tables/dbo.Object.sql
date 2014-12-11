SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Object] (
		[ObjectID]          [int] NOT NULL,
		[ObjectAddress]     [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[ObjectDesc]        [nvarchar](400) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[ObjectCity]        [nvarchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Object]
	ADD
	CONSTRAINT [PK_Object]
	PRIMARY KEY
	CLUSTERED
	([ObjectID])
	ON [PRIMARY]
GO
ALTER TABLE [dbo].[Object] SET (LOCK_ESCALATION = TABLE)
GO
