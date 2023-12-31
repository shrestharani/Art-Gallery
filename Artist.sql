USE [master]
GO
/****** Object:  Database [Artist]    Script Date: 10/13/2021 03:41:06 PM ******/
CREATE DATABASE [Artist]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Artist', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\Artist.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Artist_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\Artist_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Artist] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Artist].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Artist] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Artist] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Artist] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Artist] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Artist] SET ARITHABORT OFF 
GO
ALTER DATABASE [Artist] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Artist] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Artist] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Artist] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Artist] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Artist] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Artist] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Artist] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Artist] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Artist] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Artist] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Artist] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Artist] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Artist] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Artist] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Artist] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Artist] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Artist] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Artist] SET  MULTI_USER 
GO
ALTER DATABASE [Artist] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Artist] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Artist] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Artist] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [Artist] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Artist', N'ON'
GO
ALTER DATABASE [Artist] SET QUERY_STORE = OFF
GO
USE [Artist]
GO
/****** Object:  Table [dbo].[admin_mst]    Script Date: 10/13/2021 03:41:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[admin_mst](
	[aid] [int] IDENTITY(1,1) NOT NULL,
	[uname] [nvarchar](50) NULL,
	[password] [nvarchar](50) NULL,
 CONSTRAINT [PK_ADMIN_MST] PRIMARY KEY CLUSTERED 
(
	[aid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cat_mst]    Script Date: 10/13/2021 03:41:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cat_mst](
	[cid] [int] IDENTITY(1,1) NOT NULL,
	[cname] [nvarchar](50) NULL,
 CONSTRAINT [PK_cat_mst] PRIMARY KEY CLUSTERED 
(
	[cid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[feedback_mst]    Script Date: 10/13/2021 03:41:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[feedback_mst](
	[fid] [int] IDENTITY(1,1) NOT NULL,
	[uname] [nvarchar](50) NULL,
	[message] [nvarchar](50) NULL,
	[entrydate] [nvarchar](50) NULL,
 CONSTRAINT [PK_feedback_mst] PRIMARY KEY CLUSTERED 
(
	[fid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[item_mst]    Script Date: 10/13/2021 03:41:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[item_mst](
	[iid] [int] IDENTITY(1,1) NOT NULL,
	[iname] [nvarchar](50) NULL,
	[descripation] [nvarchar](600) NULL,
	[price] [float] NULL,
	[quantity] [int] NULL,
	[image] [nvarchar](500) NULL,
	[cid] [int] NULL,
	[aquantity] [int] NULL,
	[squantity] [int] NULL,
	[entrydate] [datetime] NULL,
	[image1] [nvarchar](500) NULL,
	[image2] [nvarchar](500) NULL,
 CONSTRAINT [PK_item_mst] PRIMARY KEY CLUSTERED 
(
	[iid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[order_mst]    Script Date: 10/13/2021 03:41:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[order_mst](
	[oid] [int] IDENTITY(1,1) NOT NULL,
	[uname] [nvarchar](50) NULL,
	[iname] [nvarchar](50) NULL,
	[quntity] [int] NULL,
	[price] [float] NULL,
	[totalprice] [float] NULL,
	[status] [int] NULL,
	[image] [nvarchar](500) NULL,
	[EDate] [nvarchar](50) NULL,
 CONSTRAINT [PK_order_mst] PRIMARY KEY CLUSTERED 
(
	[oid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[payment_mst]    Script Date: 10/13/2021 03:41:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[payment_mst](
	[pid] [int] IDENTITY(1,1) NOT NULL,
	[uname] [nvarchar](50) NULL,
	[amount] [float] NULL,
	[type] [nvarchar](50) NULL,
	[bank] [nvarchar](50) NULL,
	[branch] [nvarchar](50) NULL,
	[cardno] [nvarchar](50) NULL,
	[cvvno] [int] NULL,
	[entrydate] [datetime] NULL,
 CONSTRAINT [PK_payment_mst] PRIMARY KEY CLUSTERED 
(
	[pid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[user_mst]    Script Date: 10/13/2021 03:41:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user_mst](
	[uid] [int] IDENTITY(1,1) NOT NULL,
	[fname] [nvarchar](50) NULL,
	[lname] [nvarchar](50) NULL,
	[address] [nvarchar](50) NULL,
	[city] [nvarchar](50) NULL,
	[state] [nvarchar](50) NULL,
	[pincode] [nvarchar](50) NULL,
	[mobile] [nvarchar](50) NULL,
	[email] [nvarchar](50) NULL,
	[password] [nvarchar](50) NULL,
 CONSTRAINT [PK_user_mst] PRIMARY KEY CLUSTERED 
(
	[uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[ADMIN_DELETE]    Script Date: 10/13/2021 03:41:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[ADMIN_DELETE]


@AID AS INT

	
AS
BEGIN
	DELETE FROM admin_mst WHERE aid=@AID;
END
GO
/****** Object:  StoredProcedure [dbo].[ADMIN_INSERT]    Script Date: 10/13/2021 03:41:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[ADMIN_INSERT]


@UNAME AS NVARCHAR(200),
@PASSWORD AS NVARCHAR(200)

	
AS
BEGIN
	INSERT INTO admin_mst VALUES(@UNAME,@PASSWORD);
END
GO
/****** Object:  StoredProcedure [dbo].[ADMIN_LOGIN]    Script Date: 10/13/2021 03:41:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[ADMIN_LOGIN]


@UNAME AS NVARCHAR(200),
@PASSWORD AS NVARCHAR(200)
	
AS
BEGIN
	SELECT * FROM admin_mst WHERE uname=@UNAME AND password=@PASSWORD;
END
GO
/****** Object:  StoredProcedure [dbo].[ADMIN_SELECT]    Script Date: 10/13/2021 03:41:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[ADMIN_SELECT]


	
AS
BEGIN
	SELECT * FROM admin_mst;
END
GO
/****** Object:  StoredProcedure [dbo].[ADMIN_UPDATE]    Script Date: 10/13/2021 03:41:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[ADMIN_UPDATE]


@UNAME AS NVARCHAR(200),
@PASSWORD AS NVARCHAR(200)

	
AS
BEGIN
	UPDATE admin_mst SET password=@PASSWORD WHERE uname=@UNAME;
END
GO
/****** Object:  StoredProcedure [dbo].[CAT_DELETE]    Script Date: 10/13/2021 03:41:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[CAT_DELETE]

@CID AS INT


	
AS
BEGIN
	DELETE FROM cat_mst WHERE cid=@CID;
END
GO
/****** Object:  StoredProcedure [dbo].[CAT_INSERT]    Script Date: 10/13/2021 03:41:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[CAT_INSERT]


@CNAME AS NVARCHAR(200)

	
AS
BEGIN
	INSERT INTO cat_mst VALUES(@CNAME);
END
GO
/****** Object:  StoredProcedure [dbo].[CAT_SELECT]    Script Date: 10/13/2021 03:41:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[CAT_SELECT]




	
AS
BEGIN
	SELECT * FROM cat_mst;
END
GO
/****** Object:  StoredProcedure [dbo].[CAT_UPDATE]    Script Date: 10/13/2021 03:41:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[CAT_UPDATE]

@CID AS INT,
@CNAME AS NVARCHAR(200)

	
AS
BEGIN
	UPDATE cat_mst SET cname=@CNAME WHERE cid=@CID;
END
GO
/****** Object:  StoredProcedure [dbo].[FEEDBACK_DELETE]    Script Date: 10/13/2021 03:41:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo].[FEEDBACK_DELETE]

@FID AS INT


AS
BEGIN
	DELETE FROM feedback_mst WHERE fid=@FID;
	END
GO
/****** Object:  StoredProcedure [dbo].[FEEDBACK_INSERT]    Script Date: 10/13/2021 03:41:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo].[FEEDBACK_INSERT]

@UNAME AS NVARCHAR(200),
@MASSAGE AS NVARCHAR(200),
@ENTRYDATE AS DATETIME


AS
BEGIN
	INSERT INTO feedback_mst VALUES(@UNAME,@MASSAGE,@ENTRYDATE);
END
GO
/****** Object:  StoredProcedure [dbo].[FEEDBACK_SELECT]    Script Date: 10/13/2021 03:41:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo].[FEEDBACK_SELECT]




AS
BEGIN
	SELECT * FROM feedback_mst;
END
GO
/****** Object:  StoredProcedure [dbo].[FEEDBACK_UPDATE]    Script Date: 10/13/2021 03:41:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo].[FEEDBACK_UPDATE]

@FID AS INT,
@UNAME AS NVARCHAR(200),
@MASSAGE AS NVARCHAR(200),
@ENTRYDATE AS DATETIME


AS
BEGIN
	
	UPDATE feedback_mst SET uname=@UNAME,message=@MASSAGE,entrydate=@ENTRYDATE WHERE fid=@FID;
	
	END
GO
/****** Object:  StoredProcedure [dbo].[ITEM_ADDQUANTITY]    Script Date: 10/13/2021 03:41:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[ITEM_ADDQUANTITY]

@IID AS INT,
@QUANTITY AS INT


	AS
BEGIN
	UPDATE item_mst SET quantity=QUANTITY+@QUANTITY,aquantity=aquantity+@QUANTITY WHERE iid=@IID;
END
GO
/****** Object:  StoredProcedure [dbo].[ITEM_DELETE]    Script Date: 10/13/2021 03:41:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[ITEM_DELETE]

@IID AS INT

	AS
BEGIN
	DELETE FROM item_mst WHERE iid=@IID;
END
GO
/****** Object:  StoredProcedure [dbo].[ITEM_INSERT]    Script Date: 10/13/2021 03:41:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[ITEM_INSERT]

@INAME AS NVARCHAR(200),
@DESCRIPATION AS NVARCHAR(600),
@PRICE AS FLOAT,
@QUANTITY AS INT,
@IMAGE AS NVARCHAR(200),
@CID AS INT,
@IMAGE1 AS NVARCHAR(500),
@IMAGE2 AS NVARCHAR(500)

	AS
BEGIN
	INSERT INTO item_mst VALUES(@INAME,@DESCRIPATION,@PRICE,@QUANTITY,@IMAGE,@CID,@QUANTITY,0,GETDATE(),@IMAGE1,@IMAGE2);
END
GO
/****** Object:  StoredProcedure [dbo].[ITEM_SELECT]    Script Date: 10/13/2021 03:41:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[ITEM_SELECT]




	AS
BEGIN
	SELECT * FROM item_mst;
END
GO
/****** Object:  StoredProcedure [dbo].[ITEM_SELECT_BY_CNAME]    Script Date: 10/13/2021 03:41:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[ITEM_SELECT_BY_CNAME]

@cname as nvarchar(256)


	AS
BEGIN
	SELECT i.* FROM item_mst as i, cat_mst as c where c.cid=i.cid and c.cname=@cname
END
GO
/****** Object:  StoredProcedure [dbo].[ITEM_SELECT_BYID]    Script Date: 10/13/2021 03:41:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[ITEM_SELECT_BYID]

@IID AS INT


	AS
BEGIN
	SELECT * FROM item_mst WHERE iid=@IID;
END
GO
/****** Object:  StoredProcedure [dbo].[ITEM_SELECT_FOR_SELL]    Script Date: 10/13/2021 03:41:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[ITEM_SELECT_FOR_SELL]

@iname as nvarchar(256),
@qnt as int

AS
BEGIN
	update item_mst set aquantity=aquantity-@qnt, squantity=squantity+@qnt where iname=@iname
END
GO
/****** Object:  StoredProcedure [dbo].[ITEM_SELECT_SEARCH]    Script Date: 10/13/2021 03:41:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[ITEM_SELECT_SEARCH]

@NAME AS NVARCHAR(256)


	AS
BEGIN
	SELECT * FROM item_mst WHERE iname LIKE @NAME;
END
GO
/****** Object:  StoredProcedure [dbo].[ITEM_SELECT_TOP_10]    Script Date: 10/13/2021 03:41:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo].[ITEM_SELECT_TOP_10]



AS
BEGIN
	select top 10 * from item_mst order by NEWID()
END
GO
/****** Object:  StoredProcedure [dbo].[ITEM_UP]    Script Date: 10/13/2021 03:41:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[ITEM_UP]

@IID AS INT,
@INAME AS VARCHAR(200),
@PRICE AS FLOAT


	AS
BEGIN
	UPDATE item_mst SET iname=@INAME,price=@PRICE WHERE iid=@IID;
END
GO
/****** Object:  StoredProcedure [dbo].[ITEM_UPDATE]    Script Date: 10/13/2021 03:41:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[ITEM_UPDATE]

@IID AS INT,
@INAME AS NVARCHAR(200),
@DESCRIPATION AS NVARCHAR(200),
@PRICE AS FLOAT,
@QUANTITY AS INT,
@IMAGE AS NVARCHAR(200),
@CID AS INT,
@AQUANTITY AS INT,
@SQUANTITY AS INT,
@ENTRYDATE AS DATETIME

	AS
BEGIN
	UPDATE item_mst SET iname=@INAME,descripation=@DESCRIPATION,price=@PRICE,quantity=@QUANTITY,image=@IMAGE,aquantity=@AQUANTITY,squantity=@SQUANTITY,entrydate=@ENTRYDATE WHERE iid=@IID;
END
GO
/****** Object:  StoredProcedure [dbo].[ORDER_DELETE]    Script Date: 10/13/2021 03:41:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[ORDER_DELETE]

@OID AS INT


	AS
BEGIN
	DELETE FROM order_mst WHERE oid=@OID;
END
GO
/****** Object:  StoredProcedure [dbo].[ORDER_INSERT]    Script Date: 10/13/2021 03:41:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[ORDER_INSERT]

@UNAME AS NVARCHAR(200),
@INAME AS NVARCHAR(200),
@QUANTITY AS INT,
@PRICE AS FLOAT,
@TOTALPRICE AS FLOAT,
@STATUS AS INT,
@img as nvarchar(500),
@edate as nvarchar(500)
	AS
BEGIN
	INSERT INTO order_mst VALUES(@UNAME,@INAME,@QUANTITY,@PRICE,@TOTALPRICE,@STATUS,@img,@edate);
END
GO
/****** Object:  StoredProcedure [dbo].[ORDER_SELECT]    Script Date: 10/13/2021 03:41:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[ORDER_SELECT]



	AS
BEGIN
	SELECT * from order_mst;
END
GO
/****** Object:  StoredProcedure [dbo].[ORDER_SELECT_by_OID]    Script Date: 10/13/2021 03:41:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo].[ORDER_SELECT_by_OID]

@oid as int

	AS
BEGIN
	SELECT * from order_mst where oid=@oid
END
GO
/****** Object:  StoredProcedure [dbo].[ORDER_SELECT_BY_UNAME]    Script Date: 10/13/2021 03:41:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[ORDER_SELECT_BY_UNAME] 
	
	@UNAME as nvarchar(256)
AS
BEGIN
SELECT * FROM order_mst where uname=@UNAME;

	
END
GO
/****** Object:  StoredProcedure [dbo].[ORDER_SELECT_BY_UNAME_and_STATUS]    Script Date: 10/13/2021 03:41:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[ORDER_SELECT_BY_UNAME_and_STATUS]
@uname as nvarchar(256),
@status as int

	AS
BEGIN
	SELECT * from order_mst where uname=@uname and status=@status 
	
END
GO
/****** Object:  StoredProcedure [dbo].[ORDER_SELECT_BY_UNAME_and_STATUS_date]    Script Date: 10/13/2021 03:41:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[ORDER_SELECT_BY_UNAME_and_STATUS_date]
@uname as nvarchar(256),
@status as int,
@date as nvarchar(500)

	AS
BEGIN
	SELECT * from order_mst where uname=@uname and status=@status and edate=@date
END


GO
/****** Object:  StoredProcedure [dbo].[ORDER_SELECT_Check_for_add_to_cart]    Script Date: 10/13/2021 03:41:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo].[ORDER_SELECT_Check_for_add_to_cart]
@uname as nvarchar(256),
@iname as nvarchar(256)


	AS
BEGIN
	SELECT * from order_mst where uname=@uname and iname=@iname and status=0
END
GO
/****** Object:  StoredProcedure [dbo].[ORDER_SELECT_distinct_uname]    Script Date: 10/13/2021 03:41:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo].[ORDER_SELECT_distinct_uname]


AS
BEGIN
 
 SELECT distinct uname  FROM order_mst;
 
END
GO
/****** Object:  StoredProcedure [dbo].[ORDER_SELECT_TOTAL_AMT_PAY]    Script Date: 10/13/2021 03:41:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[ORDER_SELECT_TOTAL_AMT_PAY] 
	
	@uname as nvarchar(256)
AS
BEGIN
SELECT SUM(totalprice) as tprice FROM order_mst where Status=0 and uname=@uname
 
	
END
GO
/****** Object:  StoredProcedure [dbo].[ORDER_UPDATE]    Script Date: 10/13/2021 03:41:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[ORDER_UPDATE]

@OID AS INT,
@UNAME AS NVARCHAR(200),
@INAME AS NVARCHAR(200),
@QUANTITY AS INT,
@PRICE AS FLOAT,
@TOTALPRICE AS FLOAT,
@STATUS AS INT

	AS
BEGIN
	UPDATE order_mst SET uname=@UNAME,iname=@INAME,quntity=@QUANTITY,price=@PRICE,totalprice=@TOTALPRICE,status=@STATUS WHERE oid=@OID;
END
GO
/****** Object:  StoredProcedure [dbo].[ORDER_UPDATE_QUNTITY_CART]    Script Date: 10/13/2021 03:41:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[ORDER_UPDATE_QUNTITY_CART]

@OID AS INT,
@QUANTITY AS INT,
@TOTALPRICE AS FLOAT


	AS
BEGIN
	UPDATE order_mst SET quntity=@QUANTITY,totalprice=@TOTALPRICE WHERE oid=@OID;
END
GO
/****** Object:  StoredProcedure [dbo].[ORDER_UPDATE_QUNTITY_CART_ALLREADY_ADD]    Script Date: 10/13/2021 03:41:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[ORDER_UPDATE_QUNTITY_CART_ALLREADY_ADD]

@OID AS INT,
@QUANTITY AS INT,
@TOTALPRICE AS FLOAT


	AS
BEGIN
	UPDATE order_mst SET quntity=@QUANTITY,totalprice=@TOTALPRICE WHERE oid=@OID;
END
GO
/****** Object:  StoredProcedure [dbo].[ORDER_UPDATE_STATUS_BY_NAME]    Script Date: 10/13/2021 03:41:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[ORDER_UPDATE_STATUS_BY_NAME] 
	
	@uname as nvarchar(256),
	@status as int
AS
BEGIN
UPDATE order_mst SET Status=@status WHERE Uname=@uname AND Status=0

	
END
GO
/****** Object:  StoredProcedure [dbo].[PAYMENT_DELETE]    Script Date: 10/13/2021 03:41:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[PAYMENT_DELETE]

@PID AS INT


	AS
BEGIN
	DELETE FROM payment_mst WHERE pid=@PID;
END
GO
/****** Object:  StoredProcedure [dbo].[PAYMENT_INSERT]    Script Date: 10/13/2021 03:41:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[PAYMENT_INSERT]

@UNAME AS NVARCHAR(200),
@AMOUNT AS FLOAT,
@TYPE AS NVARCHAR(200),
@BANK AS NVARCHAR(200),
@BRANCH AS NVARCHAR(200),
@CARDNO AS NVARCHAR(200),
@CVVNO AS INT,
@entrydate as datetime


	AS
BEGIN
	INSERT INTO payment_mst VALUES(@UNAME,@AMOUNT,@TYPE,@BANK,@BRANCH,@CARDNO,@CVVNO,GETDATE());
END
GO
/****** Object:  StoredProcedure [dbo].[PAYMENT_SELECT]    Script Date: 10/13/2021 03:41:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[PAYMENT_SELECT]




	AS
BEGIN
	SELECT * FROM payment_mst;
END
GO
/****** Object:  StoredProcedure [dbo].[PAYMENT_SELECT_for_distict_uname]    Script Date: 10/13/2021 03:41:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[PAYMENT_SELECT_for_distict_uname]

AS
BEGIN
 
 SELECT distinct uname FROM payment_mst;
 
 END
GO
/****** Object:  StoredProcedure [dbo].[PAYMENT_UPDATE]    Script Date: 10/13/2021 03:41:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[PAYMENT_UPDATE]

@PID AS INT,
@UNAME AS NVARCHAR(200),
@AMOUNT AS FLOAT,
@TYPE AS NVARCHAR(200),
@BANK AS NVARCHAR(200),
@BRANCH AS NVARCHAR(200),
@CARDNO AS NVARCHAR(200),
@CVVNO AS INT


	AS
BEGIN
	UPDATE payment_mst SET uname=@UNAME,amount=@AMOUNT,type=@TYPE,bank=@BANK,branch=@BRANCH,cardno=@CARDNO,cvvno=@CVVNO WHERE pid=@PID;
END
GO
/****** Object:  StoredProcedure [dbo].[PAYMENTMST_SELECT_BY_Uname]    Script Date: 10/13/2021 03:41:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[PAYMENTMST_SELECT_BY_Uname] 
	
	@UNAME as nvarchar(256)
	
	
AS
BEGIN
SELECT * FROM payment_mst where uname=@UNAME;

	
END
GO
/****** Object:  StoredProcedure [dbo].[USER_CHANGE_PASSWORD]    Script Date: 10/13/2021 03:41:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[USER_CHANGE_PASSWORD]

@EMAIL AS NVARCHAR(256)






AS
BEGIN
	SELECT * FROM user_mst WHERE email=@EMAIL;
END
GO
/****** Object:  StoredProcedure [dbo].[USER_DELETE]    Script Date: 10/13/2021 03:41:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[USER_DELETE]
@UID AS INT



	AS
BEGIN
	DELETE FROM user_mst WHERE uid=@UID;
END
GO
/****** Object:  StoredProcedure [dbo].[USER_INSERT]    Script Date: 10/13/2021 03:41:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[USER_INSERT]

@FNAME AS NVARCHAR(200),
@LNAME AS NVARCHAR(200),
@ADDRESS AS NVARCHAR(200),
@CITY AS NVARCHAR(200),
@STATE AS NVARCHAR(200),
@PINCODE AS NVARCHAR(200),
@MOBILE AS nvarchar(200),
@EMAIL AS NVARCHAR(200),
@PASSWORD AS NVARCHAR(200)


	
AS
BEGIN
	INSERT INTO user_mst VALUES(@FNAME,@LNAME,@ADDRESS,@CITY,@STATE,@PINCODE,@MOBILE,@EMAIL,@PASSWORD);
END
GO
/****** Object:  StoredProcedure [dbo].[USER_SELECT]    Script Date: 10/13/2021 03:41:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[USER_SELECT]




	
AS
BEGIN
	SELECT * FROM user_mst;
END
GO
/****** Object:  StoredProcedure [dbo].[USER_SELECT_by_email]    Script Date: 10/13/2021 03:41:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[USER_SELECT_by_email]
	
@EMAIL AS nvarchar(256)
	
AS
BEGIN
SELECT * FROM user_mst WHERE email=@EMAIL;
END
GO
/****** Object:  StoredProcedure [dbo].[USER_SELECT_FOR_FORGOT_PASS]    Script Date: 10/13/2021 03:41:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[USER_SELECT_FOR_FORGOT_PASS]

@EMAIL AS NVARCHAR(256),
@MOBILE AS NVARCHAR(256)


	
AS
BEGIN
	SELECT * FROM user_mst WHERE email=@EMAIL AND mobile=@MOBILE;
END
GO
/****** Object:  StoredProcedure [dbo].[USER_SELECT_FOR_LOGIN]    Script Date: 10/13/2021 03:41:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[USER_SELECT_FOR_LOGIN]

@EMAIL AS NVARCHAR(256),
@PASSWORD AS NVARCHAR(256)


	
AS
BEGIN
	SELECT * FROM user_mst WHERE email=@EMAIL AND password=@PASSWORD;
END
GO
/****** Object:  StoredProcedure [dbo].[USER_UPDATE]    Script Date: 10/13/2021 03:41:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[USER_UPDATE]
@UID AS INT,
@FNAME AS NVARCHAR(200),
@LNAME AS NVARCHAR(200),
@ADDRESS AS NVARCHAR(200),
@CITY AS NVARCHAR(200),
@STATE AS NVARCHAR(200),
@PINCODE AS NVARCHAR(200),
@MOBILE AS nvarchar(200)


	
AS
BEGIN
	UPDATE user_mst SET fname=@FNAME,lname=@LNAME,address=@ADDRESS,city=@CITY,state=@STATE,pincode=@PINCODE,mobile=@MOBILE where uid=@UID;
END
GO
/****** Object:  StoredProcedure [dbo].[USER_UPDATE_PASSWORD]    Script Date: 10/13/2021 03:41:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[USER_UPDATE_PASSWORD]
	
	@EMAIL as nvarchar(256),
    @PASSWORD AS NVARCHAR(256)
AS
BEGIN
UPDATE user_mst SET password=@PASSWORD WHERE email=@EMAIL;
END
GO
USE [master]
GO
ALTER DATABASE [Artist] SET  READ_WRITE 
GO
