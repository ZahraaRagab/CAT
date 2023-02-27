USE [shop]
GO

/****** Object:  Table [dbo].[admins]    Script Date: 2/27/2023 1:18:21 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[admins](
	[id] [int] NOT NULL,
	[email] [varchar](30) NULL,
	[password] [varchar](30) NULL,
	[employeeID] [int] NULL,
 CONSTRAINT [PK_admins] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[admins]  WITH CHECK ADD  CONSTRAINT [FK_admins_employees] FOREIGN KEY([employeeID])
REFERENCES [dbo].[employees] ([id])
GO

ALTER TABLE [dbo].[admins] CHECK CONSTRAINT [FK_admins_employees]
GO

