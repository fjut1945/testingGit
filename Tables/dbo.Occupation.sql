SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Occupation] (
		[OccupationId]       [int] IDENTITY(1, 1) NOT NULL,
		[OccupationName]     [varchar](60) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Occupation]
	ADD
	CONSTRAINT [pk_OccupationId]
	PRIMARY KEY
	CLUSTERED
	([OccupationId])
	ON [PRIMARY]
GO
ALTER TABLE [dbo].[Occupation] SET (LOCK_ESCALATION = TABLE)
GO
