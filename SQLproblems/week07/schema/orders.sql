USE [zoz]
GO

/****** Object:  Table [dbo].[orders]    Script Date: 2/27/2023 1:26:52 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[orders](
	[id] [int] NOT NULL,
	[customerID] [int] NULL,
	[productID] [int] NULL,
	[date] [date] NULL,
	[amount] [int] NULL,
 CONSTRAINT [PK_orders] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[orders]  WITH CHECK ADD  CONSTRAINT [FK_orders_customer] FOREIGN KEY([customerID])
REFERENCES [dbo].[customer] ([id])
GO

ALTER TABLE [dbo].[orders] CHECK CONSTRAINT [FK_orders_customer]
GO

ALTER TABLE [dbo].[orders]  WITH CHECK ADD  CONSTRAINT [FK_orders_products] FOREIGN KEY([productID])
REFERENCES [dbo].[products] ([id])
GO

ALTER TABLE [dbo].[orders] CHECK CONSTRAINT [FK_orders_products]
GO

