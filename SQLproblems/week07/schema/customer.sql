USE [shop]
GO

/****** Object:  Table [dbo].[customer]    Script Date: 2/27/2023 12:45:37 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[customer](
	[id] [int] NOT NULL,
	[full_name] [varchar](60) NULL,
	[address] [varchar](60) NULL,
	[phone] [varchar](60) NULL,
	[age] [varchar](3) NULL,
	[gender] [varchar](6) NULL,
	[password] [varchar](20) NULL,
 CONSTRAINT [PK_customer] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

