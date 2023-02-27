USE [shop]
GO

/****** Object:  Table [dbo].[employees]    Script Date: 2/27/2023 1:18:03 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[employees](
	[id] [int] NOT NULL,
	[email] [varchar](30) NULL,
	[name] [varchar](30) NULL,
	[salary] [int] NULL,
	[departmentID] [int] NULL,
 CONSTRAINT [PK_employees] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[employees]  WITH CHECK ADD  CONSTRAINT [FK_employees_department] FOREIGN KEY([departmentID])
REFERENCES [dbo].[department] ([id])
GO

ALTER TABLE [dbo].[employees] CHECK CONSTRAINT [FK_employees_department]
GO

