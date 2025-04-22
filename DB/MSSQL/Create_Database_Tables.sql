CREATE DATABASE [GettingStarted]
GO

USE [GettingStarted]
GO

/****** Object:  Table [dbo].[Cities]    Script Date: 1/19/2017 6:03:06 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Cities](
	[Country_Code] [int] NOT NULL,
	[City_Code] [int] NOT NULL,
	[City_Name] [char](30) NOT NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

/****** Object:  Table [dbo].[Countries]    Script Date: 1/19/2017 6:03:46 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Countries](
	[Country_Code] [int] NOT NULL,
	[Country_Name] [char](30) NOT NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO


/****** Object:  Table [dbo].[Customers]    Script Date: 1/19/2017 6:04:05 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Customers](
	[Customer_Code] [smallint] NOT NULL,
	[Customer_Name] [char](20) NOT NULL,
	[Country] [char](20) NOT NULL,
	[City] [char](20) NOT NULL,
	[Address] [char](20) NOT NULL,
	[Gold_Membership] [bit] NOT NULL,
	[Membership_Date] [datetime] NOT NULL,
	[Membership_Time] [char](6) NOT NULL,
	[Salary_Amount] [float] NOT NULL,
	[Credit_Amount] [float] NOT NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

/****** Object:  Table [dbo].[Products]    Script Date: 1/19/2017 6:04:18 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Products](
	[Product_Code] [smallint] NOT NULL,
	[Product_Name] [char](60) NOT NULL,
	[Description] [char](100) NOT NULL,
	[Supplier_Code] [smallint] NOT NULL,
	[Product_Price] [float] NOT NULL,
	[Stock_Quantity] [int] NOT NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO



/****** Object:  Table [dbo].[Suppliers]    Script Date: 1/19/2017 6:04:22 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Suppliers](
	[Supplier_Code] [smallint] NOT NULL,
	[Supplier_Name] [char](20) NOT NULL,
	[Phone_Number] [char](10) NOT NULL,
	[Address] [char](20) NOT NULL,
	[Years_Since_Start_Working] [smallint] NOT NULL,
	[Bonus] [real] NOT NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

/****** Object:  Table [dbo].[Orders_1]    Script Date: 1/19/2017 6:04:14 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Orders_1](
	[Order_Number] [int] NOT NULL,
	[Order_Date] [datetime] NOT NULL,
	[Customer_Code] [int] NOT NULL,
	[Amount] [float] NOT NULL,
	[VAT_Amount] [float] NOT NULL,
	[Method_Of_Payment] [char](30) NOT NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO


/****** Object:  Table [dbo].[Order_Lines]    Script Date: 1/19/2017 6:04:10 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Order_Lines](
	[Order_Number] [int] NOT NULL,
	[Line_Number] [smallint] NOT NULL,
	[Product_Code] [int] NOT NULL,
	[Product_Price] [float] NOT NULL,
	[Product_Quantity] [smallint] NOT NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO



