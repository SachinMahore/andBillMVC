USE [Dharvik]
GO
/****** Object:  Table [dbo].[RecipesDet1]    Script Date: 03/16/2019 17:49:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RecipesDet1](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[InvoiceId] [int] NOT NULL,
	[ItemId] [int] NOT NULL,
	[ItemQty] [decimal](18, 2) NOT NULL,
	[ItemSaleAmt] [decimal](18, 2) NOT NULL,
	[Vat] [decimal](18, 2) NULL,
	[Rate] [decimal](18, 2) NOT NULL,
 CONSTRAINT [PK_RecipesDet1] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RecipesDet]    Script Date: 03/16/2019 17:49:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RecipesDet](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[InvoiceId] [int] NOT NULL,
	[ItemId] [int] NOT NULL,
	[ItemQty] [decimal](18, 2) NOT NULL,
	[ItemSaleAmt] [decimal](18, 2) NOT NULL,
	[Vat] [decimal](18, 2) NULL,
	[Rate] [decimal](18, 2) NOT NULL,
 CONSTRAINT [PK_RecipesDet] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Recipes1]    Script Date: 03/16/2019 17:49:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Recipes1](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CustId] [nvarchar](200) NULL,
	[Amount] [decimal](18, 2) NOT NULL,
	[Discount] [decimal](18, 2) NULL,
	[TotalAmt] [decimal](18, 2) NOT NULL,
	[Vat] [decimal](18, 2) NULL,
	[Time] [varchar](50) NULL,
	[PayMode] [varchar](200) NULL,
	[Paid] [nvarchar](50) NULL,
	[Note] [nvarchar](500) NULL,
	[Date] [datetime] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Recipes]    Script Date: 03/16/2019 17:49:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Recipes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CustId] [nvarchar](200) NULL,
	[Amount] [decimal](18, 2) NOT NULL,
	[Discount] [decimal](18, 2) NULL,
	[TotalAmt] [decimal](18, 2) NOT NULL,
	[Vat] [decimal](18, 2) NULL,
	[Time] [varchar](50) NULL,
	[PayMode] [varchar](200) NULL,
	[Paid] [nvarchar](50) NULL,
	[Note] [nvarchar](500) NULL,
	[Date] [datetime] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[QBill]    Script Date: 03/16/2019 17:49:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QBill](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[InvoiceId] [int] NOT NULL,
	[ItemId] [nvarchar](100) NOT NULL,
	[ItemQty] [decimal](18, 2) NOT NULL,
	[ItemSaleAmt] [decimal](18, 2) NOT NULL,
	[Vat] [decimal](18, 2) NULL,
	[Rate] [decimal](18, 2) NOT NULL,
	[Discount] [decimal](18, 2) NULL,
 CONSTRAINT [PK_QBill] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OBill]    Script Date: 03/16/2019 17:49:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OBill](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[InvoiceId] [int] NOT NULL,
	[ItemId] [nvarchar](100) NOT NULL,
	[ItemQty] [decimal](18, 2) NOT NULL,
	[ItemSaleAmt] [decimal](18, 2) NOT NULL,
	[Vat] [decimal](18, 2) NULL,
	[Rate] [decimal](18, 2) NOT NULL,
	[Discount] [decimal](18, 2) NULL,
 CONSTRAINT [PK_OBill] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MyOrder]    Script Date: 03/16/2019 17:49:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MyOrder](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ItemId] [nvarchar](100) NOT NULL,
	[ItemQty] [decimal](18, 2) NOT NULL,
	[CustId] [nvarchar](50) NULL,
	[Status] [int] NULL,
	[Date] [datetime] NULL,
 CONSTRAINT [PK_MyOrder] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Item1]    Script Date: 03/16/2019 17:49:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[Item1](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ItemName] [varchar](500) NOT NULL,
	[PurchasePrice] [decimal](18, 2) NOT NULL,
	[SalePrice] [decimal](18, 2) NOT NULL,
	[CatId] [int] NOT NULL,
	[ItemQty] [decimal](18, 2) NOT NULL,
	[Unit] [varchar](50) NOT NULL,
	[Details] [varchar](max) NULL,
	[Vat] [decimal](18, 2) NULL,
	[Barcode] [nvarchar](100) NOT NULL,
	[HSN] [nvarchar](100) NULL,
	[MFGComapny] [nvarchar](50) NULL,
	[mrp] [decimal](18, 2) NULL,
	[Wprice] [decimal](18, 2) NULL,
	[WoutSalePrice] [decimal](18, 2) NULL,
	[MFGDate] [datetime] NULL,
	[ExpiryDate] [datetime] NULL,
 CONSTRAINT [PK_Item1] PRIMARY KEY CLUSTERED 
(
	[Barcode] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Invoice1]    Script Date: 03/16/2019 17:49:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[Invoice1](
	[CustId] [varchar](200) NULL,
	[Amount] [decimal](18, 2) NOT NULL,
	[Discount] [decimal](18, 2) NULL,
	[TotalAmt] [decimal](18, 2) NOT NULL,
	[Vat] [decimal](18, 2) NULL,
	[Time] [varchar](50) NULL,
	[PayMode] [varchar](200) NULL,
	[Paid] [nvarchar](50) NULL,
	[Note] [nvarchar](500) NULL,
	[Advance] [decimal](18, 2) NULL,
	[Point] [decimal](18, 2) NULL,
	[Person] [nvarchar](200) NULL,
	[Id] [int] NULL,
	[SGST] [decimal](18, 2) NULL,
	[CGST] [decimal](18, 2) NULL,
	[IGST] [decimal](18, 2) NULL,
	[Date] [datetime] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Ingredient]    Script Date: 03/16/2019 17:49:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Ingredient](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IngredientName] [nvarchar](500) NOT NULL,
	[PurchasePrice] [decimal](18, 2) NOT NULL,
	[SalePrice] [decimal](18, 2) NOT NULL,
	[CatId] [int] NOT NULL,
	[IngredientQty] [decimal](18, 2) NOT NULL,
	[Unit] [varchar](50) NOT NULL,
	[Details] [varchar](max) NULL,
	[Vat] [decimal](18, 2) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Bill1]    Script Date: 03/16/2019 17:49:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bill1](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[InvoiceId] [int] NOT NULL,
	[ItemId] [nvarchar](100) NOT NULL,
	[ItemQty] [decimal](18, 2) NOT NULL,
	[ItemSaleAmt] [decimal](18, 2) NOT NULL,
	[Vat] [decimal](18, 2) NULL,
	[Rate] [decimal](18, 2) NOT NULL,
	[Discount] [decimal](18, 2) NULL,
	[Model] [nvarchar](50) NULL,
	[Size] [decimal](18, 2) NULL,
	[GST] [decimal](18, 2) NULL,
	[Disc] [decimal](18, 2) NULL,
	[TaxAmt] [decimal](18, 2) NULL,
 CONSTRAINT [PK_Bill1] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[SP_Bill]    Script Date: 03/16/2019 17:49:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_Bill]
(@InvoiceId int,
 @ItemId nvarchar(100),
 @ItemQty decimal(18,2),
 @ItemSaleAmt decimal(18,2),
 @Vat decimal(18,2),
 @Rate decimal(18,2),
 @Discount decimal(18,2),
 @Qty decimal(18,2),
 @Model nvarchar(50),
 @Size decimal(18,2),
 @Disc decimal(18,2),
 @GST decimal(18,2),
 @TaxAmt decimal(18,2))
AS
	insert into Bill (InvoiceId,ItemId,ItemQty,ItemSaleAmt,Vat,Rate,Discount,Model,Size,Disc,GST,TaxAmt) values(@InvoiceId, @ItemId,@ItemQty, @ItemSaleAmt, @Vat, @Rate,@Discount,@Model,@Size,@Disc,@GST,@TaxAmt);
	update item set ItemQty=@Qty where Barcode=@ItemId
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[SP_Acct]    Script Date: 03/16/2019 17:49:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_Acct](@CustId varchar (10),@InvoiceId int,@Debit decimal(18,2),@Credit decimal(18,2),@Balance decimal(18,2),@Date datetime,@Note varchar(200))
AS

insert into Account(CustId,Invoiceid,Debit,Credit,Balance,Date,Note)
Values(@CustId,@InvoiceId,@Debit,@Credit,@Balance,@Date,@Note)
GO
/****** Object:  StoredProcedure [dbo].[SP_EmpAcct]    Script Date: 03/16/2019 17:49:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_EmpAcct]
	(@CustId nvarchar(50),
	@InvoiceId nvarchar(50),
	 @Debit decimal,
	@Credit decimal,
	@Balance decimal,
	 @Date datetime
	)
	
AS
  
    
	insert into EmpAccount (CustId,InvoiceId,Debit,Credit,Balance,Date)values(@CustId,@InvoiceId,@Debit,@Credit,@Balance,@Date)
	
	return
GO
/****** Object:  StoredProcedure [dbo].[SP_MyAcct]    Script Date: 03/16/2019 17:49:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_MyAcct]
	(@CustId varchar(100),
	@InvoiceId int,
	 @Debit decimal,
	@Credit decimal,
	@Balance decimal,
	 @Date varchar(50)
	)
	
AS
  
    
	insert into MyAccount (CustId,InvoiceId,Debit,Credit,Balance,Date)values(@CustId,@InvoiceId,@Debit,@Credit,@Balance,@Date)
	
	return
GO
/****** Object:  StoredProcedure [dbo].[SPEmployee]    Script Date: 03/16/2019 17:49:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SPEmployee](@EmpName varchar (100),@Address varchar (100),@Mobile varchar(50),@Email varchar(50),@Designation int,@Details varchar(500),@Count int output)
	AS
	Select @Count=Count(*) from Employee
	Where EmpName=@EmpName
	if @Count=1
BEGIN
Set @Count=-1
RETURN
END
insert into Employee(EmpName,Address,Mobile,Email,Designation,Details)
values (@EmpName,@Address,@Mobile,@Email,@Designation,@Details)
Set @Count=@@IDENTITY
GO
/****** Object:  StoredProcedure [dbo].[SPEmp]    Script Date: 03/16/2019 17:49:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SPEmp](@Id int,@CustName varchar (200),@Address varchar (300),@Mobile varchar(20),@Email varchar(50),@Details varchar(500),@Date varchar(50),@Status int,@Count int output)
	AS
	Select @Count=Count(*) from Emp
	Where Mobile=@Mobile
	if @Count=1
BEGIN
Set @Count=-1
RETURN
END
insert into Emp(Id,CustName,Address,Mobile,Email,Details,Date,Status)
values (@Id,@CustName,@Address,@Mobile,@Email,@Details,@Date,@Status)
Set @Count=@@IDENTITY
GO
/****** Object:  StoredProcedure [dbo].[SPCatgory]    Script Date: 03/16/2019 17:49:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SPCatgory](@CatName varchar (100),@GST decimal(18,2),@Count int output)
AS
Select @Count=Count(*)from Category
Where CatName =@CatName
if @Count=1
BEGIN
Set @Count=-1
RETURN
END
insert into Category(CatName,GST)
Values(@CatName,@GST)
Set @Count=@@IDENTITY
GO
/****** Object:  StoredProcedure [dbo].[SPCategory]    Script Date: 03/16/2019 17:49:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SPCategory](@CatName varchar (100),@Count int output)
AS
Select @Count=Count(*)from Category
Where CatName =@CatName
if @Count=1
BEGIN
Set @Count=-1
RETURN
END
insert into Category(CatName)
Values(@CatName)
Set @Count=@@IDENTITY
GO
/****** Object:  StoredProcedure [dbo].[SPAccount]    Script Date: 03/16/2019 17:49:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SPAccount](@CustId varchar (10),@InvoiceId int,@Debit decimal(18,2),@Credit decimal(18,2),@Balance decimal(18,2),@Date datetime,@Note varchar(200),@Count int output)
AS
Select @Count=Count(*)from Account
Where CustId=@CustId AND Invoiceid=@InvoiceId
if @Count=1
BEGIN
Set @Count=-1
RETURN
END
insert into Account(CustId,Invoiceid,Debit,Credit,Balance,Date,Note)
Values(@CustId,@InvoiceId,@Debit,@Credit,@Balance,@Date,@Note)
Set @Count=@@IDENTITY
GO
/****** Object:  StoredProcedure [dbo].[SP_PartyAcct]    Script Date: 03/16/2019 17:49:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_PartyAcct]
	(@CustId nvarchar(50),
	@InvoiceId nvarchar(50),
	 @Debit decimal,
	@Credit decimal,
	@Balance decimal,
	 @Date varchar(50)
	)
	
AS
  
    
	insert into PartyAccount (CustId,InvoiceId,Debit,Credit,Balance,Date)values(@CustId,@InvoiceId,@Debit,@Credit,@Balance,@Date)
	
	return
GO
/****** Object:  StoredProcedure [dbo].[SP_Order]    Script Date: 03/16/2019 17:49:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/****** Object:  StoredProcedure [dbo].[SP_Invoice]    Script Date: 07/24/2017 08:49:50 ******/
CREATE PROCEDURE [dbo].[SP_Order]
	(@Id int,
	@CustId varchar(10),
	 @Amount decimal,
	@Discount decimal,
	@TotalAmt decimal,
	@Vat decimal,
	 @Date varchar(50),
	 @Time varchar(50),
	 @Paymode varchar(200),
	 @Paid varchar(50),
	 @Note varchar(500),
	 @Advance decimal(18,2),
	 @Point int,
	 @Person nvarchar(200)
	)
	
AS
  
    
	insert into Order1 (Id,CustId,Amount,Discount,TotalAmt,Vat,Date,Time,Paymode,Paid,Note,Advance,Point,Person)values(@Id,@CustId,@Amount,@Discount,@TotalAmt,@Vat,@Date,@Time,@Paymode,@Paid,@Note, @Advance,@Point,@Person)
	
	return
GO
/****** Object:  StoredProcedure [dbo].[SP_Quotation]    Script Date: 03/16/2019 17:49:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_Quotation]
	(@Id int,
	@CustId varchar(10),
	 @Amount decimal,
	@Discount decimal,
	@TotalAmt decimal,
	@Vat decimal,
	 @Date datetime,
	 @Time varchar(50),
	 @Paymode varchar(200),
	 @Paid varchar(50),
	 @Note varchar(500),
	 @Advance decimal(18,2),
	 @Point int,
	 @Person nvarchar(200)
	)
	
AS
  
    
	insert into Quotation (Id,CustId,Amount,Discount,TotalAmt,Vat,Date,Time,Paymode,Paid,Note,Advance,Point,Person)values(@Id,@CustId,@Amount,@Discount,@TotalAmt,@Vat,@Date,@Time,@Paymode,@Paid,@Note, @Advance,@Point,@Person)
	
	return
GO
/****** Object:  StoredProcedure [dbo].[SPItem]    Script Date: 03/16/2019 17:49:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SPItem](@ItemName varchar (300),@PurchasePrice decimal (18,2),@SalePrice decimal (18,2),@CatId int,@ItemQty decimal (18,2),@Unit varchar(50),@Details varchar (max),@Vat decimal(18,2),@Barcode nvarchar(100),@HSN nvarchar(100),@MFGComapny nvarchar(100),@MFGDate nvarchar(50),@ExpiryDate nvarchar(50),@mrp decimal(18,2),@wprice decimal(18,2),@Count int output)
	AS
	Select @Count=Count(*) from Item
	where Barcode =@Barcode 
	if @Count=1
BEGIN
Set @Count=-1
RETURN
END
insert into Item(ItemName,PurchasePrice,SalePrice,CatId,ItemQty,Unit,Details,Vat,Barcode,HSN,MFGComapny,MFGDate,ExpiryDate,mrp,Wprice)
Values (@ItemName,@PurchasePrice,@SalePrice,@CatId,@ItemQty,@Unit,@Details,@Vat,@Barcode,@HSN,@MFGComapny,@MFGDate,@ExpiryDate,@mrp,@wprice)
Set @Count=@@IDENTITY
GO
/****** Object:  Table [dbo].[tblPagesLoginHistory]    Script Date: 03/16/2019 17:49:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblPagesLoginHistory](
	[PHID] [bigint] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[LHID] [bigint] NULL,
	[PageName] [varchar](100) NULL,
	[PageInDateTime] [datetime] NULL,
	[PageOutDateTime] [datetime] NULL,
 CONSTRAINT [PK_tblPagesLoginHistory] PRIMARY KEY CLUSTERED 
(
	[PHID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblMessage]    Script Date: 03/16/2019 17:49:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblMessage](
	[MessageId] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[MessageFrom] [int] NULL,
	[MessageTo] [int] NULL,
	[MessageText] [varchar](8000) NULL,
	[MessageTime] [datetime] NULL,
	[IsRead] [int] NULL,
	[GroupID] [int] NULL,
 CONSTRAINT [PK_tblMessage] PRIMARY KEY CLUSTERED 
(
	[MessageId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblLoginHistory]    Script Date: 03/16/2019 17:49:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblLoginHistory](
	[ID] [bigint] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[UserID] [int] NULL,
	[SessionID] [varchar](500) NULL,
	[IPAddress] [varchar](50) NULL,
	[PageName] [varchar](100) NULL,
	[LoginDateTime] [datetime] NULL,
	[LogoutDateTime] [datetime] NULL,
 CONSTRAINT [PK_tblLoginHistory] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblLogin]    Script Date: 03/16/2019 17:49:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblLogin](
	[UserID] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[Username] [nvarchar](255) NULL,
	[Password] [nvarchar](255) NULL,
	[ClientOrVendorID] [int] NULL,
	[IsClientOrVendor] [int] NULL,
	[FirstName] [varchar](100) NULL,
	[LastName] [varchar](100) NULL,
	[Email] [varchar](260) NULL,
	[IsSuperUser] [int] NULL,
	[SortOrderSFP] [int] NULL,
	[Address1] [varchar](200) NULL,
	[City] [varchar](100) NULL,
	[StateID] [varchar](50) NULL,
	[ZipCode] [varchar](10) NULL,
	[Country] [varchar](50) NULL,
	[WorkPhone] [varchar](15) NULL,
	[CellPhone] [varchar](15) NULL,
	[IsActive] [int] NULL,
	[Extension] [varchar](5) NULL,
	[VendorID] [varchar](10) NULL,
	[EmployeeID] [bigint] NULL,
	[AddToGroup] [int] NULL,
	[UserType] [int] NULL,
	[StationMarketID] [int] NULL,
	[ShowNotification] [int] NULL,
	[UserCode] [nvarchar](20) NULL,
	[Timezone] [nvarchar](20) NULL,
	[Language] [varchar](20) NULL,
	[Locale] [varchar](50) NULL,
	[Company] [varchar](20) NULL,
	[Department] [varchar](20) NULL,
	[UserLicense] [nvarchar](50) NULL,
	[EmailEncoding] [nvarchar](50) NULL,
	[StartDay] [nvarchar](20) NULL,
	[EndDay] [nvarchar](20) NULL,
	[FederationID] [varchar](20) NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedById] [int] NULL,
	[LastModifiedDate] [datetime] NULL,
	[LastModifiedById] [int] NULL,
	[LastLoginDate] [datetime] NULL,
	[IsDeleted] [int] NULL,
	[CommunityNickname] [nvarchar](50) NULL,
	[UserRoleId] [nvarchar](50) NULL,
	[SMTPUserName] [varchar](500) NULL,
	[SMTPPassword] [varchar](50) NULL,
 CONSTRAINT [PK_tblLogin] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_Transaction]    Script Date: 03/16/2019 17:49:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Transaction](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Date] [datetime] NULL,
	[Bank] [nvarchar](50) NULL,
	[Amount] [decimal](18, 2) NULL,
	[Mode] [nvarchar](50) NULL,
	[CheckNo] [nvarchar](50) NULL,
	[CheckDate] [datetime] NULL,
	[ClearDate] [datetime] NULL,
	[VoucherId] [nvarchar](50) NULL,
	[Stakeholder] [nvarchar](50) NULL,
	[StakeholderId] [nvarchar](50) NULL,
 CONSTRAINT [PK_AmtTransaction] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Supplier]    Script Date: 03/16/2019 17:49:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_Supplier](
	[SupplierId] [int] IDENTITY(1,1) NOT NULL,
	[SupplierName] [varchar](100) NOT NULL,
	[Address] [varchar](200) NULL,
	[Mobile] [varchar](10) NULL,
	[Date] [datetime] NULL,
	[GST] [varchar](50) NULL,
	[Email] [varchar](250) NULL,
 CONSTRAINT [PK_Supplier] PRIMARY KEY CLUSTERED 
(
	[SupplierName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_SuppAccount]    Script Date: 03/16/2019 17:49:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[tbl_SuppAccount](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SupplierId] [int] NOT NULL,
	[InvoiceNo] [varchar](50) NOT NULL,
	[Debit] [decimal](18, 2) NULL,
	[Credit] [decimal](18, 2) NULL,
	[Balance] [decimal](18, 2) NULL,
	[Note] [nvarchar](50) NULL,
	[Date] [datetime] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_Quotation]    Script Date: 03/16/2019 17:49:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_Quotation](
	[Id] [int] NOT NULL,
	[CustId] [varchar](200) NULL,
	[Amount] [decimal](18, 2) NOT NULL,
	[Discount] [decimal](18, 2) NULL,
	[TotalAmt] [decimal](18, 2) NOT NULL,
	[Vat] [decimal](18, 2) NULL,
	[Time] [varchar](50) NULL,
	[PayMode] [varchar](200) NULL,
	[Paid] [nvarchar](50) NULL,
	[Note] [nvarchar](500) NULL,
	[Advance] [decimal](18, 2) NULL,
	[Point] [int] NULL,
	[Person] [nvarchar](200) NULL,
	[Date] [datetime] NULL,
 CONSTRAINT [PK_Quotation] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_Purchase]    Script Date: 03/16/2019 17:49:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Purchase](
	[Barcode] [nvarchar](50) NOT NULL,
	[Qty] [decimal](18, 2) NOT NULL,
	[SupplierId] [nvarchar](50) NULL,
	[OrderId] [nvarchar](50) NULL,
	[ItemId] [nvarchar](50) NULL,
	[PurchasePrice] [decimal](18, 2) NOT NULL,
	[SalePrice] [decimal](18, 2) NOT NULL,
	[iDate] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  UserDefinedFunction [dbo].[getTransType]    Script Date: 03/16/2019 17:49:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[getTransType]
	(
		@AOID			BIGINT
	)
	RETURNS		VARCHAR (MAX)
AS
BEGIN
	  DECLARE @ReturnValue VARCHAR (MAX),@TransType INT
	  
	  SET @TransType=(SELECT TOP 1 TransType FROM tbl_OrderTransactions WHERE AOID=@AOID AND TransactionID !='' ORDER BY ChargeDate DESC )
	  
	
	  SELECT  @ReturnValue = CASE WHEN @TransType=1 THEN 'Charge' WHEN @TransType=2 THEN 'Refund' WHEN @TransType=3 THEN 'Void'
	                         WHEN @TransType=4 THEN 'Authorization' WHEN @TransType=5 THEN 'Paused' WHEN @TransType=6 THEN 'Full Pay'
	                         WHEN @TransType=0 THEN 'Check' ELSE '' END 
	
	  RETURN @ReturnValue
	
END
GO
/****** Object:  UserDefinedFunction [dbo].[getTransactionTotal]    Script Date: 03/16/2019 17:49:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[getTransactionTotal]
	(
		@AOID			BIGINT
	)
	RETURNS		VARCHAR (MAX)
AS
BEGIN
	  DECLARE @ReturnValue VARCHAR (MAX)
	
	  SELECT  @ReturnValue = (SELECT SUM(ChargeAmt)  FROM tbl_OrderTransactions WHERE AOID=@AOID AND (TransType =1 OR TransType =6 OR TransType IS NULL) AND Status=1 )
	
	  RETURN @ReturnValue
	
END
GO
/****** Object:  UserDefinedFunction [dbo].[getTestTotal]    Script Date: 03/16/2019 17:49:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[getTestTotal]
	(
		@AOID			BIGINT
	)
	RETURNS		VARCHAR (MAX)
AS
BEGIN
	  DECLARE @ReturnValue VARCHAR (MAX)
	
	  SELECT  @ReturnValue = (SELECT SUM(ChargeAmt)  FROM tbl_OrderTransactions WHERE AOID=@AOID AND (TransactionID!='0' OR TransactionID IS  NULL))
	
	  RETURN @ReturnValue
	
END
GO
/****** Object:  UserDefinedFunction [dbo].[getRefundVoidmMount]    Script Date: 03/16/2019 17:49:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[getRefundVoidmMount]
	(
		@AOID			BIGINT
	)
	RETURNS		VARCHAR (MAX)
AS
BEGIN
	  DECLARE @ReturnValue VARCHAR (MAX)
	
	  SELECT  @ReturnValue = ISNULL((SELECT Top 1 ChargeAmt  FROM tbl_OrderTransactions WHERE AOID=@AOID AND ISNULL(TransType,0) IN(2,3)ORDER by ChargeDate desc) ,'0')
	
	  RETURN @ReturnValue
	
END
GO
/****** Object:  UserDefinedFunction [dbo].[getPaymentFrequency]    Script Date: 03/16/2019 17:49:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[getPaymentFrequency]
	(
		@AOID			BIGINT
	)
	RETURNS		VARCHAR (MAX)
AS
BEGIN
	  DECLARE @ReturnValue VARCHAR (MAX),@IsInstallment INT

	  SET @IsInstallment=(SELECT COUNT(*) FROm tbl_OrderTransactions where AOID=@AOID AND (TransType =1 OR TransType =6 OR TransType IS NULL) )

	  IF(@IsInstallment>1)
	  BEGIN

	      
	       SET   @ReturnValue ='Monthly';
	  END
	  ELSE
	  BEGIN

	  SET @ReturnValue='Once';
	  END
	   
	 
	
	  RETURN @ReturnValue
	
END
GO
/****** Object:  UserDefinedFunction [dbo].[getPaymentCount]    Script Date: 03/16/2019 17:49:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[getPaymentCount]
	(
		@AOID			BIGINT
	)
	RETURNS		VARCHAR (MAX)
AS
BEGIN
	  DECLARE @ReturnValue VARCHAR (MAX)


	  SET @ReturnValue=(SELECT COUNT(ChargeAmt)  FROM tbl_OrderTransactions WHERE AOID=@AOID AND (TransType =1 OR TransType =6 OR TransType =7 OR  TransType IS NULL))
	 
	  RETURN @ReturnValue
	
END
GO
/****** Object:  UserDefinedFunction [dbo].[getPaidAmount]    Script Date: 03/16/2019 17:49:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[getPaidAmount]
	(
		@AOID			BIGINT
	)
	RETURNS		VARCHAR (MAX)
AS
BEGIN
	  DECLARE @ReturnValue VARCHAR (MAX),@PaidAmount FLoat,@RefundAmount Float

	  SET @PaidAmount=ISNULL((SELECT SUM(ChargeAmt)  FROM tbl_OrderTransactions WHERE AOID=@AOID AND (TransType =1 OR TransType =6 ) AND TransactionID IS NOT NULL AND TransactionID !='0'  ),0);

	  SET @RefundAmount=ISNULL((SELECT SUM(ChargeAmt)  FROM tbl_OrderTransactions WHERE AOID=@AOID AND (TransType =2 OR TransType =3) AND TransactionID IS NOT NULL AND TransactionID !='0' ),0)
	
	  SELECT  @ReturnValue = @PaidAmount+@RefundAmount;
	
	  RETURN @ReturnValue
	
END
GO
/****** Object:  UserDefinedFunction [dbo].[getFirstTransactionDate]    Script Date: 03/16/2019 17:49:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create FUNCTION [dbo].[getFirstTransactionDate]
	(
		@AOID			BIGINT
	)
	RETURNS		VARCHAR (MAX)
AS
BEGIN
	  DECLARE @ReturnValue VARCHAR (MAX)


	  SET @ReturnValue=(SELECT TOP 1  OTI.ChargeDate FROM tbl_OrderTransactions OTI where OTI.AOID=@AOID AND OTI.[Status]=1 AND TransType NOT IN (2,3)  Order by OTI.ChargeDate ASC)
	 
	  RETURN @ReturnValue
	
END
GO
/****** Object:  UserDefinedFunction [dbo].[getChargeAMt]    Script Date: 03/16/2019 17:49:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[getChargeAMt]
	(
		@AOID			BIGINT
	)
	RETURNS		VARCHAR (MAX)
AS
BEGIN
	  DECLARE @ReturnValue VARCHAR (MAX)
	
	  SELECT  @ReturnValue = (SELECT TOP 1 ChargeAmt  FROM tbl_OrderTransactions WHERE AOID=@AOID AND ChargeNo=1 AND TransType NOT IN (2,3)  ORDER BY ChargeDate ASC )
	
	  RETURN @ReturnValue
	
END
GO
/****** Object:  UserDefinedFunction [dbo].[getBalanceAmount]    Script Date: 03/16/2019 17:49:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[getBalanceAmount]
	(
		@AOID			BIGINT
	)
	RETURNS		VARCHAR (MAX)
AS
BEGIN
	  DECLARE @ReturnValue VARCHAR (MAX),@IsVoidRefund INT,@Total FLOAT ,@Paid FLOAT

	  SET @IsVoidRefund=(SELECT COUNT(*) FROm tbl_OrderTransactions where AOID=@AOID AND TransType IN (2,3) )

	  IF(@IsVoidRefund=0)
	  BEGIN

	       SET @Total=(SELECT SUM(ChargeAmt)  FROM tbl_OrderTransactions WHERE AOID=@AOID  AND (TransType =1 OR TransType =6 OR TransType IS NULL))
		   SET @Paid=(SELECT SUM(ChargeAmt)  FROM tbl_OrderTransactions WHERE AOID=@AOID AND TransactionID!='0' AND TransType=1 )
	       SET   @ReturnValue =(@Total-@Paid ) 
	  END
	  ELSE
	  BEGIN

	  SET @ReturnValue='0';
	  END
	   
	 
	
	  RETURN @ReturnValue
	
END
GO
/****** Object:  Table [dbo].[tbl_Order]    Script Date: 03/16/2019 17:49:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[tbl_Order](
	[Id] [int] NOT NULL,
	[CustId] [varchar](200) NULL,
	[Amount] [decimal](18, 2) NOT NULL,
	[Discount] [decimal](18, 2) NULL,
	[TotalAmt] [decimal](18, 2) NOT NULL,
	[Vat] [decimal](18, 2) NULL,
	[Time] [varchar](50) NULL,
	[PayMode] [varchar](200) NULL,
	[Paid] [nvarchar](50) NULL,
	[Note] [nvarchar](500) NULL,
	[Advance] [decimal](18, 2) NULL,
	[Point] [int] NULL,
	[Person] [nvarchar](200) NULL,
	[Date] [datetime] NULL,
 CONSTRAINT [PK_Order1] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_Notes]    Script Date: 03/16/2019 17:49:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Notes](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](500) NOT NULL,
	[Notes] [nvarchar](max) NULL,
	[Photo] [nvarchar](max) NULL,
	[NotesDate] [datetime] NULL,
	[UserID] [bigint] NULL,
	[CreatedByID] [int] NULL,
	[LastModifiedById] [int] NULL,
	[LastModifiedDate] [datetime] NULL,
	[CreatedDate] [datetime] NULL,
	[IsDeleted] [int] NULL,
 CONSTRAINT [PK_tbl_Notes] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Item]    Script Date: 03/16/2019 17:49:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_Item](
	[ItemId] [bigint] IDENTITY(1,1) NOT NULL,
	[ItemName] [nvarchar](500) NOT NULL,
	[PurchasePrice] [decimal](18, 2) NOT NULL,
	[SalePrice] [decimal](18, 2) NOT NULL,
	[CatId] [int] NOT NULL,
	[ItemQty] [decimal](18, 2) NOT NULL,
	[Unit] [varchar](50) NOT NULL,
	[Details] [nvarchar](max) NULL,
	[Vat] [decimal](18, 2) NULL,
	[Barcode] [nvarchar](100) NOT NULL,
	[HSN] [nvarchar](100) NULL,
	[MFGComapny] [nvarchar](50) NULL,
	[ExpiryDate] [datetime] NULL,
	[MRP] [decimal](18, 2) NULL,
	[Wprice] [decimal](18, 2) NULL,
	[WoutSalePrice] [decimal](18, 2) NULL,
	[MFGDate] [datetime] NULL,
 CONSTRAINT [PK_Item] PRIMARY KEY CLUSTERED 
(
	[Barcode] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_Invoice]    Script Date: 03/16/2019 17:49:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_Invoice](
	[CustId] [bigint] NULL,
	[Amount] [decimal](18, 2) NOT NULL,
	[Discount] [decimal](18, 2) NULL,
	[TotalAmt] [decimal](18, 2) NOT NULL,
	[InvoiceDate] [datetime] NOT NULL,
	[Vat] [decimal](18, 2) NULL,
	[Time] [varchar](50) NULL,
	[PayMode] [varchar](200) NULL,
	[Paid] [nvarchar](50) NULL,
	[Note] [nvarchar](500) NULL,
	[Advance] [decimal](18, 2) NULL,
	[Point] [decimal](18, 2) NULL,
	[Person] [nvarchar](200) NULL,
	[InvoiceId] [int] NULL,
	[SGST] [decimal](18, 2) NULL,
	[CGST] [decimal](18, 2) NULL,
	[IGST] [decimal](18, 2) NULL,
	[AutoInvoiceID] [bigint] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_Invoice] PRIMARY KEY CLUSTERED 
(
	[AutoInvoiceID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_FromAddress]    Script Date: 03/16/2019 17:49:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_FromAddress](
	[FromID] [int] IDENTITY(1,1) NOT NULL,
	[FromEmailAddress] [varchar](500) NULL,
	[FromName] [varchar](500) NULL,
 CONSTRAINT [PK_tbl_FromAddress] PRIMARY KEY CLUSTERED 
(
	[FromID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_Expenses]    Script Date: 03/16/2019 17:49:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[tbl_Expenses](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CustId] [varchar](100) NOT NULL,
	[Invoiceid] [int] NOT NULL,
	[Debit] [decimal](18, 2) NOT NULL,
	[Credit] [decimal](18, 2) NULL,
	[Balance] [decimal](18, 2) NULL,
	[Date] [datetime] NULL,
 CONSTRAINT [PK_MyAccount_1] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_Employee]    Script Date: 03/16/2019 17:49:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[tbl_Employee](
	[EmpId] [int] NOT NULL,
	[EmpName] [varchar](200) NOT NULL,
	[Address] [varchar](300) NULL,
	[Mobile] [varchar](20) NOT NULL,
	[Email] [varchar](50) NULL,
	[Details] [varchar](500) NULL,
	[Status] [int] NOT NULL,
	[Date] [datetime] NULL,
 CONSTRAINT [PK_Emp] PRIMARY KEY CLUSTERED 
(
	[Mobile] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_EmpAccount]    Script Date: 03/16/2019 17:49:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_EmpAccount](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[EmpId] [nvarchar](50) NOT NULL,
	[Invoiceid] [nvarchar](50) NOT NULL,
	[Debit] [decimal](18, 2) NOT NULL,
	[Credit] [decimal](18, 2) NULL,
	[Balance] [decimal](18, 2) NULL,
	[Date] [datetime] NULL,
 CONSTRAINT [PK_EmpAccount] PRIMARY KEY CLUSTERED 
(
	[EmpId] ASC,
	[Invoiceid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_EmailTemplates]    Script Date: 03/16/2019 17:49:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_EmailTemplates](
	[TemplateID] [bigint] IDENTITY(1,1) NOT NULL,
	[TemplateName] [varchar](500) NULL,
	[TemplateSubject] [varchar](500) NULL,
	[TemplateHTML] [varchar](max) NULL,
	[TemplatePlainText] [varchar](max) NULL,
	[AttachmentFileName] [varchar](500) NULL,
	[IsDeleted] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedById] [int] NULL,
	[LastModifiedDate] [datetime] NULL,
	[LastModifiedById] [int] NULL,
	[TemplateFor] [int] NULL,
 CONSTRAINT [PK_tbl_EmailTemplates] PRIMARY KEY CLUSTERED 
(
	[TemplateID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_EMails]    Script Date: 03/16/2019 17:49:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_EMails](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[PageID] [int] NULL,
	[AutoGenID] [bigint] NULL,
	[FromEmail] [varchar](500) NULL,
	[ToEmails] [varchar](max) NULL,
	[CCEmails] [varchar](max) NULL,
	[BCCEmails] [varchar](max) NULL,
	[EmailSubject] [varchar](500) NULL,
	[EmailHTMLBody] [varchar](max) NULL,
	[EmailPlainText] [varchar](max) NULL,
	[CreatedById] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedById] [int] NULL,
	[ModifiedDate] [datetime] NULL,
 CONSTRAINT [PK_tbl_EMails] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_Customer]    Script Date: 03/16/2019 17:49:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_Customer](
	[CustId] [bigint] IDENTITY(1,1) NOT NULL,
	[CustName] [nvarchar](200) NOT NULL,
	[Address] [nvarchar](300) NULL,
	[Mobile] [varchar](20) NOT NULL,
	[Email] [nvarchar](256) NULL,
	[Details] [nvarchar](500) NULL,
	[Date] [datetime] NOT NULL,
	[Status] [int] NOT NULL,
	[GST] [nvarchar](50) NULL,
	[PAN] [nvarchar](50) NULL,
 CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED 
(
	[Mobile] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_CustAccount]    Script Date: 03/16/2019 17:49:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_CustAccount](
	[AccountId] [bigint] IDENTITY(1,1) NOT NULL,
	[CustId] [bigint] NOT NULL,
	[Invoiceid] [bigint] NOT NULL,
	[Debit] [decimal](18, 2) NOT NULL,
	[Credit] [decimal](18, 2) NULL,
	[Balance] [decimal](18, 2) NULL,
	[Date] [datetime] NOT NULL,
	[Note] [nvarchar](200) NULL,
 CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED 
(
	[CustId] ASC,
	[Invoiceid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Client]    Script Date: 03/16/2019 17:49:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_Client](
	[ClientId] [bigint] NOT NULL,
	[ClientName] [nvarchar](200) NOT NULL,
	[Address] [nvarchar](300) NULL,
	[Mobile] [varchar](20) NOT NULL,
	[Email] [nvarchar](256) NULL,
	[Details] [nvarchar](500) NULL,
	[Date] [datetime] NOT NULL,
	[Status] [int] NOT NULL,
	[GST] [nvarchar](50) NULL,
	[PAN] [nvarchar](50) NULL,
 CONSTRAINT [PK_Client] PRIMARY KEY CLUSTERED 
(
	[Mobile] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_ChatViewedBy]    Script Date: 03/16/2019 17:49:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_ChatViewedBy](
	[CVID] [bigint] IDENTITY(1,1) NOT NULL,
	[CID] [bigint] NULL,
	[ViewedById] [int] NULL,
	[ViewedDate] [datetime] NULL,
 CONSTRAINT [PK_tbl_ChatViewedBy] PRIMARY KEY CLUSTERED 
(
	[CVID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Chattter]    Script Date: 03/16/2019 17:49:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_Chattter](
	[CID] [bigint] IDENTITY(1,1) NOT NULL,
	[FeedItemId] [nvarchar](255) NULL,
	[AccountId] [varchar](10) NULL,
	[Type] [int] NULL,
	[CreatedById] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[Title] [nvarchar](255) NULL,
	[Body] [nvarchar](max) NULL,
	[LinkUrl] [nvarchar](255) NULL,
	[IsDeleted] [int] NULL,
	[InsertedById] [int] NULL,
	[IsRichText] [int] NULL,
	[SystemFileName] [varchar](500) NULL,
	[OriginalFileName] [varchar](500) NULL,
	[LeadID] [bigint] NULL,
 CONSTRAINT [PK_tbl_Chattter] PRIMARY KEY CLUSTERED 
(
	[CID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_Category]    Script Date: 03/16/2019 17:49:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[tbl_Category](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CatName] [varchar](100) NOT NULL,
	[GST] [decimal](18, 2) NULL,
	[Type] [int] NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[CatName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_CallHistory]    Script Date: 03/16/2019 17:49:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_CallHistory](
	[CHID] [bigint] IDENTITY(1,1) NOT NULL,
	[AOID] [bigint] NULL,
	[AgentID] [int] NULL,
	[CallDate] [datetime] NULL,
	[LeadID] [bigint] NULL,
	[PageID] [int] NULL,
 CONSTRAINT [PK_tbl_CallHistory] PRIMARY KEY CLUSTERED 
(
	[CHID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Bill]    Script Date: 03/16/2019 17:49:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Bill](
	[BillId] [bigint] IDENTITY(1,1) NOT NULL,
	[InvoiceId] [bigint] NOT NULL,
	[ItemId] [bigint] NOT NULL,
	[ItemQty] [decimal](18, 2) NOT NULL,
	[ItemSaleAmt] [decimal](18, 2) NOT NULL,
	[Vat] [decimal](18, 2) NULL,
	[Rate] [decimal](18, 2) NOT NULL,
	[Discount] [decimal](18, 2) NULL,
	[Model] [nvarchar](50) NULL,
	[Size] [decimal](18, 2) NULL,
	[GST] [decimal](18, 2) NULL,
	[Disc] [decimal](18, 2) NULL,
	[TaxAmt] [decimal](18, 2) NULL,
 CONSTRAINT [PK_Bill] PRIMARY KEY CLUSTERED 
(
	[BillId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_BankMaster]    Script Date: 03/16/2019 17:49:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_BankMaster](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Bank] [nvarchar](50) NOT NULL,
	[Details] [nvarchar](50) NULL,
 CONSTRAINT [PK_BankMaster] PRIMARY KEY CLUSTERED 
(
	[Bank] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  UserDefinedFunction [dbo].[getLastPurchase]    Script Date: 03/16/2019 17:49:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[getLastPurchase]
	(
		@ID			BIGINT
	)
	RETURNS		VARCHAR (MAX)
AS
BEGIN
	  DECLARE @ReturnValue VARCHAR (MAX),@AOID BIGINT
	  
	  SET @AOID=(SELECT TOP 1 OrderID FROm tbl_AgentOrder WHERE IsCompleted=1 AND AccountID=@ID ORDER By EndDate DESC )
	  
	  IF (@AOID!='')
	  BEGIN
			 SET @ReturnValue=(SELECT P.Package FROM tbl_AgentOrderDetails AOD INNER JOIN tbl_Package P ON AOD.PackageID=P.PackageID WHERE AOID=@AOID)
	  END
	  ElSE
	  BEGIN
			SET @ReturnValue='';
	  END

	 
	 
	  RETURN @ReturnValue
	
END
GO
/****** Object:  UserDefinedFunction [dbo].[getCardType]    Script Date: 03/16/2019 17:49:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[getCardType]
	(
		@AOID			BIGINT
	)
	RETURNS		VARCHAR (MAX)
AS
BEGIN
	  DECLARE @ReturnValue		VARCHAR (MAX)=''
	  DECLARE @CardNumber		VARCHAR(20)
	  DECLARE @CardNumberInt	INT
	  
	  SET @CardNumber=ISNULL((SELECT TOP 1 CCI.CardNumber FROM tbl_OrderCardCheckInfo CCI INNER JOIN tbl_AgentOrder AO ON CCI.AOID=AO.OrderID WHERE CCI.AOID=@AOID AND CCI.PaymentMode=1 AND AO.IsCompleted=1),'')
	  
	
	  IF(@CardNumber!='')
	BEGIN
		SET @CardNumberInt=CONVERT(INT,SUBSTRING(@CardNumber,1,6))
		IF(@ReturnValue='')
		BEGIN
			IF EXISTS(SELECT * FROM tbl_CardTypes WHERE @CardNumberInt BETWEEN RangeFrom AND RamgeTo)
			BEGIN
				SET @ReturnValue=(SELECT TOP 1 CardName FROM tbl_CardTypes WHERE @CardNumberInt BETWEEN RangeFrom AND RamgeTo)
			END
		END
		
		SET @CardNumberInt=CONVERT(INT,SUBSTRING(@CardNumber,1,4))
		IF(@ReturnValue='')
		BEGIN
			IF EXISTS(SELECT * FROM tbl_CardTypes WHERE @CardNumberInt BETWEEN RangeFrom AND RamgeTo)
			BEGIN
				SET @ReturnValue=(SELECT TOP 1 CardName FROM tbl_CardTypes WHERE @CardNumberInt BETWEEN RangeFrom AND RamgeTo)
			END
		END
		
		SET @CardNumberInt=CONVERT(INT,SUBSTRING(@CardNumber,1,3))
		IF(@ReturnValue='')
		BEGIN
			IF EXISTS(SELECT * FROM tbl_CardTypes WHERE @CardNumberInt BETWEEN RangeFrom AND RamgeTo)
			BEGIN
				SET @ReturnValue=(SELECT TOP 1 CardName FROM tbl_CardTypes WHERE @CardNumberInt BETWEEN RangeFrom AND RamgeTo)
			END
		END
		
		SET @CardNumberInt=CONVERT(INT,SUBSTRING(@CardNumber,1,2))
		IF(@ReturnValue='')
		BEGIN
			IF EXISTS(SELECT * FROM tbl_CardTypes WHERE @CardNumberInt BETWEEN RangeFrom AND RamgeTo)
			BEGIN
				SET @ReturnValue=(SELECT TOP 1 CardName FROM tbl_CardTypes WHERE @CardNumberInt BETWEEN RangeFrom AND RamgeTo)
			END
		END
		
		SET @CardNumberInt=CONVERT(INT,SUBSTRING(@CardNumber,1,1))
		IF(@ReturnValue='')
		BEGIN
			IF EXISTS(SELECT * FROM tbl_CardTypes WHERE @CardNumberInt BETWEEN RangeFrom AND RamgeTo)
			BEGIN
				SET @ReturnValue=(SELECT TOP 1 CardName FROM tbl_CardTypes WHERE @CardNumberInt BETWEEN RangeFrom AND RamgeTo)
			END
		END
	END
	
	RETURN @ReturnValue
	
END
GO
/****** Object:  Table [dbo].[syUsersRoles]    Script Date: 03/16/2019 17:49:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[syUsersRoles](
	[UserRoleId] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[UserId] [int] NOT NULL,
	[RoleId] [int] NULL,
 CONSTRAINT [PK_syUsersRoles] PRIMARY KEY CLUSTERED 
(
	[UserRoleId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[syRolesResourcesLevels]    Script Date: 03/16/2019 17:49:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[syRolesResourcesLevels](
	[RRLId] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[RoleId] [int] NOT NULL,
	[ModuleId] [int] NOT NULL,
	[ResourceId] [int] NOT NULL,
	[AccessLevel] [int] NOT NULL,
	[HasSpecialRight] [int] NOT NULL,
 CONSTRAINT [PK_syRolesResourcesLevels] PRIMARY KEY CLUSTERED 
(
	[RRLId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[syRoles]    Script Date: 03/16/2019 17:49:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[syRoles](
	[RoleId] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[RoleCode] [varchar](50) NOT NULL,
	[RoleDescription] [varchar](500) NOT NULL,
	[RoleStatus] [bit] NOT NULL,
 CONSTRAINT [PK_syRoles] PRIMARY KEY CLUSTERED 
(
	[RoleId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[syRoleResources]    Script Date: 03/16/2019 17:49:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[syRoleResources](
	[RoleResourceId] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[RoleId] [int] NOT NULL,
	[ResourceId] [int] NOT NULL,
 CONSTRAINT [PK_syRoleResources] PRIMARY KEY CLUSTERED 
(
	[RoleResourceId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[syResourceTypes]    Script Date: 03/16/2019 17:49:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[syResourceTypes](
	[ResourceTypeId] [int] NOT NULL,
	[ResourceType] [varchar](500) NULL,
 CONSTRAINT [PK_syResourceTypes] PRIMARY KEY CLUSTERED 
(
	[ResourceTypeId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[syResources]    Script Date: 03/16/2019 17:49:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[syResources](
	[ResourceId] [int] NOT NULL,
	[Resource] [varchar](200) NULL,
	[ResourceTypeId] [tinyint] NULL,
	[Controller] [varchar](200) NULL,
	[Action] [varchar](200) NULL,
	[UsedIn] [int] NULL,
	[IsRight] [int] NULL,
	[TabText] [varchar](200) NULL,
	[PageTitle] [varchar](200) NULL,
	[Icon] [varchar](50) NULL,
	[ClickEent] [varchar](500) NULL,
 CONSTRAINT [PK_syResources] PRIMARY KEY CLUSTERED 
(
	[ResourceId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[syNavigationNodes]    Script Date: 03/16/2019 17:49:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[syNavigationNodes](
	[NodeID] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[DisplayIndex] [int] NOT NULL,
	[ResourceId] [int] NOT NULL,
	[ParentId] [int] NULL,
	[IsPopupWindow] [bit] NULL,
 CONSTRAINT [PK_syNavigationNodes] PRIMARY KEY CLUSTERED 
(
	[NodeID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[SPupdate1]    Script Date: 03/16/2019 17:49:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[SPupdate1]
	(@Barcode nvarchar(100),
	@Qty decimal(18,2)
)
AS
		update item set ItemQty=@Qty where Barcode=@Barcode
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[SPupdate]    Script Date: 03/16/2019 17:49:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SPupdate]
	(@Barcode nvarchar(100),
	@Qty decimal(18,2),
	@PurchasePrice decimal(18,2),
	@SalePrice decimal(18,2),
	@Vat decimal(18,2))
AS
		update item set ItemQty=@Qty ,PurchasePrice=@PurchasePrice, SalePrice=@SalePrice,Vat=@Vat where Barcode=@Barcode
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[SPSupplier]    Script Date: 03/16/2019 17:49:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SPSupplier]( @SupplierName varchar(100),@Address varchar(200),@Mobile varchar(10),@Date varchar(50),@Count int Output)

AS
select @Count=Count(*) from Supplier
Where SupplierName=@SupplierName
if @Count=1
BEGIN
set @Count=-1
RETURN 
END
insert into Supplier( SupplierName,Address,Mobile,Date)
values (@SupplierName,@Address,@Mobile,@Date)
set @Count=@@IDENTITY
GO
/****** Object:  StoredProcedure [dbo].[SPSuppAccount]    Script Date: 03/16/2019 17:49:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SPSuppAccount](@SupplierId int,@InvoiceNo Varchar(50),@Debit decimal(18,2),@Credit decimal(18,2),@Balance decimal(18,2),@date varchar(50),@Note varchar(50),@Count int Output)
AS
select @Count=Count(*)from SuppAccount where SupplierId=@SupplierId and InvoiceNo=@InvoiceNo
if @Count=1
BEGIN
set @Count=-1
RETURN	 
END
insert into SuppAccount(SupplierId,InvoiceNo,Debit,Credit,Balance,date,Note)
values(@SupplierId,@InvoiceNo,@Debit,@Credit,@Balance,@date,@Note)
set @Count=@@IDENTITY
GO
/****** Object:  StoredProcedure [dbo].[usp_ImportCsvToLead]    Script Date: 03/16/2019 17:49:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--EXEC usp_ImportCsvToLead 'E:\\WebApps\\MalaGroupFTP\\013019TX23K.csv'
CREATE PROCEDURE [dbo].[usp_ImportCsvToLead]
    @FilePath            VARCHAR(MAX)
AS
BEGIN
	SET NOCOUNT ON
	
	 CREATE TABLE #ExportTemp(
		FIRSTNAME VARCHAR(500),LASTNAME VARCHAR(500),[ADDRESS] VARCHAR(500),City VARCHAR(500),[State] VARCHAR(500),
		ZIP VARCHAR(500),VIN VARCHAR(500),[YEAR] VARCHAR(500),MAKE VARCHAR(500) ,VEHTYPE VARCHAR(500),
		[LOGIN] VARCHAR(500),EXPIRATIONDATE VARCHAR(500),[PASSWORD] VARCHAR(500),
		LISTCODE VARCHAR(500), PREVIOUS VARCHAR(500),TITLE_TYPE VARCHAR(500), LENDER_NAME VARCHAR(500)
		,DEALERSHIP VARCHAR(500)
	   )
	   
	DECLARE @sql NVARCHAR(MAX)
	SET @sql='BULK  INSERT  #ExportTemp FROM '''+@FilePath+''' WITH ( fieldterminator='','',RowTerminator = ''\n'' );'
	EXEC (@sql)
	DELETE TOP (1) FROM   #ExportTemp

    
    
      DELETE FROM #ExportTemp WHERE [LOGIN] COLLATE DATABASE_DEFAULT IN (SELECT PinNo FROm tbl_LeadInformation  )
	
      UPDATE CD SET   CD.MAKE =0 FROM #ExportTemp CD WHERE NOT EXISTS (SELECT VM.VehicleMake FROM tbl_VehicleMake VM WHERE VM.VehicleMake = CONVERT(varchar(200),CD.MAke) COLLATE DATABASE_DEFAULT) 
	  UPDATE CD SET CD.MAKE=VM.ID FROM #ExportTemp CD INNER JOIN tbl_VehicleMake VM ON VM.VehicleMake=CD.MAKE  COLLATE DATABASE_DEFAULT WHERE CD.MAKE!='0'
	

	  UPDATE CD SET CD.VEHTYPE =0 FROM #ExportTemp CD WHERE NOT EXISTS (SELECT VT.VehicleType FROM tbl_VehicleType VT WHERE VT.VehicleMake=CD.MAKE  AND VT.VehicleType =CD.VEHTYPE  COLLATE DATABASE_DEFAULT)
	  UPDATE CD SET CD.VehType=VT.ID FROM #ExportTemp CD INNER JOIN tbl_VehicleType VT ON VT.VehicleType=CD.VEHTYPE   COLLATE DATABASE_DEFAULT   WHERE CD.MAKE!='0' AND CD.VEHTYPE!='0'
	

	
	DECLARE @LeadID BIGINT, @FIRSTNAME VARCHAR(500), @LASTNAME VARCHAR(500), @ADDRESS VARCHAR(500), @City VARCHAR(500), @State VARCHAR(500), 
	@ZipCode VARCHAR(500), @VIN VARCHAR(500), @YEAR VARCHAR(500), @MAKE VARCHAR(500), @VEHTYPE VARCHAR(500), @LOGIN VARCHAR(500), 
	@EXPIRATIONDATE VARCHAR(500), @PASSWORD VARCHAR(500), @LISTCODE VARCHAR(500), @PREVIOUS VARCHAR(500) ,@TITLE_TYPE VARCHAR(500),
	@LENDER_NAME VARCHAR(500)
	,@DEALERSHIP  VARCHAR(500)



	DECLARE _CURSOR CURSOR LOCAL FORWARD_ONLY STATIC READ_ONLY 
	FOR 
	SELECT [FIRSTNAME],[LASTNAME],[ADDRESS],[City],[State],ZIP,[VIN],[YEAR],[MAKE],[VEHTYPE],[LOGIN],[EXPIRATIONDATE],[PASSWORD],[LISTCODE],PREVIOUS, TITLE_TYPE,
	[LENDER_NAME],[DEALERSHIP] FROM #ExportTemp
	OPEN _CURSOR 
	FETCH NEXT FROM _CURSOR INTO @FIRSTNAME ,@LASTNAME ,@ADDRESS ,@City ,@State ,@ZipCode ,@VIN ,@YEAR ,@MAKE ,@VEHTYPE ,@LOGIN ,@EXPIRATIONDATE ,@PASSWORD ,@LISTCODE ,
	@PREVIOUS, @TITLE_TYPE,@LENDER_NAME,@DEALERSHIP
	WHILE @@Fetch_status=0
	BEGIN
	     --DECLARE @LeadExits INT
	     --SET @LeadExits = ISNULL((SELECT COUNT(*) FROM tbl_LeadInformation WHERE PinNo=@LOGIN),0);
	    
	     --IF(@LeadExits=0)
	     --BEGIN
				INSERT INTO tbl_LeadInformation(Name, Street, City, [State], ZipCode, PinNo, ExpirationDate, [Password], ListCode, ExportedDate, CreatedDate,LeadStatus,Country,[Language],FirstName,LastName) VALUES
				(@FIRSTNAME +' ' + @LASTNAME ,@ADDRESS ,@City ,@State ,@ZipCode ,@LOGIN ,
				ISNULL(REPLACE(CONVERT(varchar(10),@EXPIRATIONDATE, 101),' ','-'),'') ,@PASSWORD ,@LISTCODE, GETDATE(), GETDATE(),2,'USA','1',@FIRSTNAME,@LASTNAME)
				SET @LeadID = @@IDENTITY;

				INSERT INTO tbl_VehicleLeads(VehicleMake, VehicleType, VehicleYear, VINNo, Dealership, FinanceCompany, LeadID)
				VALUES(@MAKE, @VEHTYPE, @YEAR, @VIN,  @DEALERSHIP,@LENDER_NAME, @LeadID )
	     
	     --END
	     --ELSE
	     --BEGIN
	     --        INSERT INTO tbl_NotExportLead([FIRSTNAME],[LASTNAME],[ADDRESS],[City],[State],[ZIP],[VIN],[YEAR],[MAKE],[VEHTYPE],[LOGIN],[EXPIRATIONDATE],[PASSWORD],[LISTCODE],[LENDER_NAME],[LOAD_DATE],[DEALERSHIP],[ExportDate])
	     --        VALUES( @FIRSTNAME ,@LASTNAME ,@ADDRESS ,@City ,@State ,@ZipCode ,@VIN ,@YEAR ,@MAKE ,@VEHTYPE ,@LOGIN ,@EXPIRATIONDATE ,@PASSWORD ,@LISTCODE ,@LENDER_NAME, @TITLE_TYPE, @DEALERSHIP ,GETDATE())
	     --END
		FETCH NEXT FROM _CURSOR INTO @FIRSTNAME ,@LASTNAME ,@ADDRESS ,@City ,@State ,@ZipCode ,@VIN ,@YEAR ,@MAKE ,@VEHTYPE ,@LOGIN ,@EXPIRATIONDATE ,@PASSWORD ,@LISTCODE ,@PREVIOUS, @TITLE_TYPE,@LENDER_NAME,@DEALERSHIP
	END
	CLOSE _CURSOR
	DEALLOCATE _CURSOR
	
    DROP TABLE #ExportTemp
END
GO
/****** Object:  StoredProcedure [dbo].[SPPurchase]    Script Date: 03/16/2019 17:49:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SPPurchase](@Barcode nvarchar(100),@Qty decimal(18,2),@PurchasePrice decimal(18,2),@SalePrice decimal(18,2),@idate nvarchar(50), @SupplierId nvarchar(100),@OrderId nvarchar(100),@ItemId nvarchar(50),@Count int output)
	AS
	Select @Count=Count(*) from Purchase
	where Barcode=@Barcode and @OrderId=OrderId 
	if @Count=1
BEGIN
Set @Count=-1
RETURN
END
insert into Purchase(Barcode,Qty,SupplierId,PurchasePrice ,SalePrice ,idate ,OrderId,ItemId)
Values (@Barcode,@Qty,@SupplierId,@PurchasePrice ,@SalePrice ,@idate ,@OrderId,@ItemId)
Set @Count=@@IDENTITY
GO
/****** Object:  StoredProcedure [dbo].[SPParty]    Script Date: 03/16/2019 17:49:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SPParty](@Id nvarchar(10),@CustName varchar (200),@Address varchar (300),@Mobile varchar(20),@Email varchar(50),@Details varchar(500),@Date varchar(50),@Status int,@Commision decimal(18,2),@Count int output)
	AS
	Select @Count=Count(*) from Party
	Where Id=@Id
	if @Count=1
BEGIN
Set @Count=-1
RETURN
END
insert into Party(Id,CustName,Address,Mobile,Email,Details,Date,Commision,Status)
values (@Id,@CustName,@Address,@Mobile,@Email,@Details,@Date,@Commision,@Status)
Set @Count=@@IDENTITY
GO
/****** Object:  UserDefinedFunction [dbo].[SPLIT]    Script Date: 03/16/2019 17:49:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[SPLIT] (

@str_in VARCHAR(8000)

 )

RETURNS @strtable TABLE (strval VARCHAR(50))

AS

BEGIN

DECLARE

@Occurrences INT,

@Counter INT,

@tmpStr VARCHAR(8000),
@separator VARCHAR(4)

set @separator=','

SET @Counter = 0

IF SUBSTRING(@str_in,LEN(@str_in),1) <> @separator 

SET @str_in = @str_in + @separator

SET @Occurrences = (DATALENGTH(REPLACE(@str_in,@separator,@separator+'#')) - DATALENGTH(@str_in))/ DATALENGTH(@separator)

SET @tmpStr = @str_in

WHILE @Counter <= @Occurrences 

BEGIN

SET @Counter = @Counter + 1

INSERT INTO @strtable

VALUES ( SUBSTRING(@tmpStr,1,CHARINDEX(@separator,@tmpStr)-1))

SET @tmpStr = SUBSTRING(@tmpStr,CHARINDEX(@separator,@tmpStr)+1,8000)


IF DATALENGTH(@tmpStr) = 0

BREAK


END

RETURN 

END
GO
/****** Object:  StoredProcedure [dbo].[SPItem1]    Script Date: 03/16/2019 17:49:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SPItem1](@ItemName varchar (300),@PurchasePrice decimal (18,2),@SalePrice decimal (18,2),@CatId int,@ItemQty decimal (18,2),@Unit varchar(50),@Details varchar (max),@Vat decimal(18,2),@Barcode nvarchar(100),@HSN nvarchar(100),@MFGComapny nvarchar(100),@MFGDate nvarchar(50),@ExpiryDate nvarchar(50),@mrp decimal(18,2),@wprice decimal(18,2),@WoutSalePrice decimal(18,2),@Count int output)
	AS
	Select @Count=Count(*) from Item1
	where Barcode =@Barcode 
	if @Count=1
BEGIN
Set @Count=-1
RETURN
END
insert into Item1(ItemName,PurchasePrice,SalePrice,CatId,ItemQty,Unit,Details,Vat,Barcode,HSN,MFGComapny,MFGDate,ExpiryDate,mrp,Wprice,WoutSalePrice)
Values (@ItemName,@PurchasePrice,@SalePrice,@CatId,@ItemQty,@Unit,@Details,@Vat,@Barcode,@HSN,@MFGComapny,@MFGDate,@ExpiryDate,@mrp,@wprice,@WoutSalePrice)
Set @Count=@@IDENTITY
GO
/****** Object:  StoredProcedure [dbo].[usp_GetUserInfoPageListRange]    Script Date: 03/16/2019 17:49:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_GetUserInfoPageListRange]
	@Name                VARCHAR(500)=NULL,
	@RowDisplay					INT=NULL
	
AS
BEGIN
	DECLARE @UserData TABLE 
	(
		UserID BIGINT, Name VARCHAR(500), Phone VARCHAR(500), Email VARCHAR(500),UserName VARCHAR(100)
	)
	DECLARE	@PageNumber	BIGINT
	DECLARE	@TotalRows	BIGINT
	DECLARE @ModValue	BIGINT
	
	INSERT INTO @UserData (UserID, Name, Phone ,Email,UserName)
    SELECT  UserID,FirstName+' '+LastName AS Name,CellPhone,Email,Username FROM tblLogin
    WHERE 
	FirstName LIKE '%'+ISNULL(@Name,'')+'%' OR LastName LIKE '%'+ISNULL(@Name,'')+'%'
	
	;WITH FilterRows AS (
	SELECT (ROW_NUMBER() OVER (ORDER BY AD.UserID ASC)) AS RowNum, AD.UserID, AD.Name, AD.Phone,AD.Email,AD.UserName
	FROM @UserData AD)
	SELECT @TotalRows=COUNT(*) FROM FilterRows;
	

	SET @PageNumber=(@TotalRows/@RowDisplay);
	SET @ModValue=(@TotalRows%@RowDisplay);

	IF(@ModValue>0)
	BEGIN
		SET @PageNumber=@PageNumber+1;
	END

	SELECT @PageNumber AS PageNumber, @TotalRows AS TotalRows
END
GO
/****** Object:  StoredProcedure [dbo].[usp_GetUserInfoPageList]    Script Date: 03/16/2019 17:49:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--EXEC usp_GetUserInfoPageList 1
CREATE PROCEDURE [dbo].[usp_GetUserInfoPageList]
    @Name                VARCHAR(500)=NULL,
	@RowDisplay	         		INT=NULL,
	@PageNumber   		 		INT=NULL
AS
BEGIN
 
                   
	DECLARE @UserData TABLE 
	(
		UserID BIGINT, Name VARCHAR(500), Phone VARCHAR(500), Email VARCHAR(500),UserName VARCHAR(100)
	)
	DECLARE @RowNumLower BIGINT
	DECLARE @RowNumUpper BIGINT
	
	SET @RowNumLower=(@PageNumber*@RowDisplay-@RowDisplay)+1
	SET @RowNumUpper=@PageNumber*@RowDisplay
	
	INSERT INTO @UserData (UserID, Name, Phone ,Email,UserName)
    SELECT  UserID,FirstName+' '+LastName,CellPhone,Email,Username FROM tblLogin
    WHERE 
	FirstName LIKE '%'+ISNULL(@Name,'')+'%' OR LastName LIKE '%'+ISNULL(@Name,'')+'%'
    
    
    ;WITH FilterRows AS (
	SELECT (ROW_NUMBER() OVER (ORDER BY AD.UserID ASC)) AS RowNum, AD.UserID, AD.Name, AD.Phone,AD.Email,AD.UserName
	FROM @UserData AD)
	SELECT FR.UserID, FR.Name, FR.Phone , FR.Email,FR.UserName
	FROM 
		FilterRows FR INNER JOIN tblLogin AI ON FR.UserID=AI.UserID
	WHERE 
		RowNum>=@RowNumLower AND RowNum<=@RowNumUpper 
	ORDER BY 
		RowNum;
    
    
END
GO
/****** Object:  StoredProcedure [dbo].[usp_GetUserAccess]    Script Date: 03/16/2019 17:49:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_GetUserAccess]
@UserID		INT,
@Controller VARCHAR(500)	
AS
BEGIN
	
	DECLARE @AccessRight	INT
	DECLARE @HasRight		INT 
	DECLARE @EditRight		INT 
	DECLARE @AddRight		INT		
	DECLARE @DeleteRight	INT
	DECLARE @DisplayRight	INT
	DECLARE @IsSuperUser	INT
	DECLARE @ResourceID		INT
	
	SET @HasRight = 0
	SET @EditRight = 0
	SET @AddRight = 0
	SET @DeleteRight = 0
	SET @DisplayRight = 0
	
	CREATE TABLE #AccessLevel
	(
		AccessLevel INT
	)
	
	CREATE TABLE #SpecialRights
	(
		RightName		VARCHAR(500),
		SpecialRight	INT
	)
	
	SET @IsSuperUser=ISNULL((SELECT IsSuperUser FROM tblLogin WHERE UserID=@UserID),0)
		
	IF(EXISTS( SELECT * FROM syResources R INNER JOIN syRolesResourcesLevels RRL ON R.ResourceId=RRL.ResourceId	INNER JOIN syRoles RL ON RRL.RoleId=RL.RoleId
			   INNER JOIN syUsersRoles UR ON UR.RoleId=RL.RoleId WHERE R.Controller=@Controller AND UR.UserId=@UserID))
	BEGIN
		
		INSERT INTO #AccessLevel
		SELECT DISTINCT AccessLevel FROM syResources R INNER JOIN syRolesResourcesLevels RRL ON R.ResourceId=RRL.ResourceId INNER JOIN syRoles RL ON RRL.RoleId=RL.RoleId
		INNER JOIN syUsersRoles UR ON UR.RoleId=RL.RoleId WHERE R.Controller=@Controller AND UR.UserId=@UserID
		
		SET @ResourceID= ISNULL((SELECT TOP 1 ISNULL(R.ResourceId,0) FROM syResources R INNER JOIN syRolesResourcesLevels RRL ON R.ResourceId=RRL.ResourceId INNER JOIN syRoles RL ON RRL.RoleId=RL.RoleId
		INNER JOIN syUsersRoles UR ON UR.RoleId=RL.RoleId WHERE R.Controller=@Controller AND UR.UserId=@UserID),0)
		
		SET @AccessRight=ISNULL((SELECT TOP 1 AccessLevel FROM #AccessLevel WHERE AccessLevel=15),0)
		
		IF @AccessRight=0
		BEGIN
			UPDATE #AccessLevel SET AccessLevel=AccessLevel-1 WHERE AccessLevel>1
			SET @AccessRight =(SELECT SUM(AccessLevel) FROM #AccessLevel)
		END
		
		-- Full Right --
		IF @AccessRight=15
		BEGIN
			SET @HasRight = 1
			SET @EditRight = 1
			SET @AddRight = 1
			SET @DeleteRight = 1
			SET @DisplayRight = 1
		END
		
		-- Edit Right --
		IF (@AccessRight-8 >= 0)
		BEGIN
			SET @HasRight = 1
			SET @EditRight = 1
			SET @DisplayRight = 1
			SET @AccessRight=@AccessRight-8
		END
		
		-- Add Right --
		IF (@AccessRight-4 >= 0)
		BEGIN
			SET @HasRight = 1
			SET @AddRight = 1
			SET @DisplayRight = 1
			SET @AccessRight=@AccessRight-4
		END
		
		-- Delete Right --
		IF (@AccessRight-2 >= 0)
		BEGIN
			SET @HasRight = 1
			SET @DeleteRight = 1
			SET @DisplayRight = 1
			SET @AccessRight=@AccessRight-2
		END
		
		-- Display Right --
		IF (@AccessRight-1 >= 0)
		BEGIN
			SET @HasRight = 1
			SET @DisplayRight = 1
			SET @AccessRight=@AccessRight-1
		END
	END

	IF(@IsSuperUser=1)
	BEGIN
		INSERT INTO #SpecialRights
		SELECT R.Resource, 1 AS HasSpecialRight FROM syResources R  WHERE R.ResourceId IN (SELECT ResourceId FROM syNavigationNodes WHERE ParentId=@ResourceID)
	END
	ELSE
	BEGIN
		INSERT INTO #SpecialRights
		SELECT R.Resource, ISNULL(HasSpecialRight,0) FROM syResources R INNER JOIN syRolesResourcesLevels RRL ON R.ResourceId=RRL.ResourceId INNER JOIN syRoles RL ON RRL.RoleId=RL.RoleId
		INNER JOIN syUsersRoles UR ON UR.RoleId=RL.RoleId WHERE R.ResourceId IN (SELECT ResourceId FROM syNavigationNodes WHERE ParentId=@ResourceID) AND (UR.UserId=@UserID)
	END
	IF(@IsSuperUser=1)
	BEGIN
		SET @HasRight = 1
		SET @EditRight = 1
		SET @AddRight = 1
		SET @DeleteRight = 1
		SET @DisplayRight = 1
		
		UPDATE #SpecialRights SET SpecialRight=1
	END
	
	SELECT @HasRight AS HasRight, @EditRight AS EditRight, @AddRight AS AddRight, @DeleteRight AS DeleteRight, @DisplayRight AS DispalyRight
	SELECT RightName, SpecialRight FROM #SpecialRights
	DROP TABLE #AccessLevel
	DROP TABLE #SpecialRights
END
GO
/****** Object:  StoredProcedure [dbo].[usp_GetNotesList]    Script Date: 03/16/2019 17:49:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_GetNotesList]
	
AS
DECLARE @Table1 TABLE(ID INT, ViewedName nvarchar(500))
INSERT INTO @Table1 SELECT NID,(SELECT ISNULL(FirstName,'') FROM tblLogin WHERE UserID=ViewedById) as ViewedById FROM tbl_ViewedBy 

DECLARE @Table2 TABLE(ID INT, ViewedName nvarchar(500))

INSERT INTO @Table2
SELECT  ID
       ,STUFF((SELECT ', ' + ViewedName [text()]
         FROM @Table1 
         WHERE ID = t.ID
         FOR XML PATH(''), TYPE)
        .value('.','NVARCHAR(MAX)'),1,2,' ') List_Output
FROM @Table1 t
GROUP BY ID

--EXEC usp_GetViewByList '139'
--DECLARE @EmployeeIds VARCHAR(200)
BEGIN
     SELECT  N.ID,N.Title, N.NotesDate,N.Notes,
	(SELECT ISNULL(FirstName +' '+ LastName,'') FROM tblLogin WHERE UserID=N.UserID) AS UserName,
     (SELECT count(ViewedById) FROM tbl_ViewedBy WHERE NID in (N.ID)) AS ViewedCount    
    ,T.ViewedName as ViewedByNames   
		FROM tbl_Notes N LEFT OUTER JOIN @Table2 T ON N.ID=T.ID order by NotesDate Desc
	
END
GO
/****** Object:  StoredProcedure [dbo].[usp_GetMenuByUserID]    Script Date: 03/16/2019 17:49:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_GetMenuByUserID]
	@UserId INT
AS
BEGIN
CREATE TABLE #Resources
(
	ResourceId		INT NOT NULL,
	ParentId		INT NULL,
	Resource		VARCHAR(200) NULL,
	Controller		VARCHAR(500) NULL,
	Action			VARCHAR(500) NULL,
	EnableDisable	INT,
	TabText			VARCHAR(100),
	Icon			VARCHAR(100),
	DisplayIndex	INT,
	ClickEvent		VARCHAR(100),
	IsProcess		INT
)

DECLARE @RowCount		INT
DECLARE @ResourceID		INT
DECLARE @ParentID		INT
DECLARE @IsSuperUser	INT

SET @IsSuperUser=ISNULL((SELECT IsSuperUser FROM tblLogin WHERE UserID=@UserId),0)

IF @IsSuperUser=1
BEGIN
	INSERT INTO #Resources
	SELECT R.ResourceId, NN.ParentId, R.Resource , R.Controller, R.Action , 1 as EnableDisable, R.TabText, R.Icon, NN.DisplayIndex, R.ClickEent, 0 AS IsProcess
	FROM syResources R, syNavigationNodes NN 
	WHERE R.ResourceId=NN.ResourceId
	AND R.ResourceTypeID IN (1,2,3) AND R.UsedIn=1
	AND R.Controller IS NOT NULL
END
ELSE
BEGIN
	INSERT INTO #Resources
	SELECT R.ResourceId, NN.ParentId, R.Resource , R.Controller, R.Action , 1 as EnableDisable, R.TabText, R.Icon, NN.DisplayIndex, R.ClickEent, 0 AS IsProcess
	FROM syResources R, syNavigationNodes NN 
	WHERE R.ResourceId=NN.ResourceId
	AND R.ResourceTypeID IN (1,2,3) AND R.UsedIn=1
	AND R.ResourceId IN (SELECT RRLI.ResourceId FROM syRolesResourcesLevels RRLI 
	INNER JOIN syUsersRoles URI ON URI.RoleId=RRLI.RoleId WHERE URI.UserId=@UserId)
END


SET @RowCount=(SELECT COUNT(*) FROM #Resources WHERE IsProcess=0)
SELECT @ResourceID=ResourceId FROM #Resources WHERE IsProcess=0
WHILE @RowCount>0
BEGIN
	SET @ParentID=(SELECT TOP 1 NN.ParentId FROM syResources R, syNavigationNodes NN WHERE R.ResourceId=NN.ResourceId AND R.ResourceId=@ResourceID)
	IF(NOT EXISTS (SELECT * FROM #Resources WHERE ResourceId=@ParentID))
	BEGIN
		INSERT INTO #Resources
		SELECT R.ResourceId,NN.ParentId, R.Resource , R.Controller, R.Action , 1 as EnableDisable, R.TabText, R.Icon, NN.DisplayIndex, R.ClickEent, 0 AS IsProcess
		FROM syResources R, syNavigationNodes NN 
		WHERE R.ResourceId=NN.ResourceId AND R.ResourceId=@ParentID
	END
	
	UPDATE #Resources SET IsProcess=1 WHERE ResourceId=@ResourceID
	SET @RowCount=(SELECT COUNT(*) FROM #Resources WHERE IsProcess=0)
	SELECT @ResourceID=ResourceId FROM #Resources WHERE IsProcess=0
END

UPDATE #Resources SET Controller='#' WHERE (EnableDisable=0 OR Controller IS NULL)

SELECT ResourceId,ParentId,Resource,Controller, Action,EnableDisable,DisplayIndex,Icon, ClickEvent FROM #Resources ORDER BY DisplayIndex,ResourceId,ParentId

DROP TABLE #Resources
END
GO
/****** Object:  StoredProcedure [dbo].[usp_GetItemSearch]    Script Date: 03/16/2019 17:49:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_GetItemSearch]
(@SearchString nvarchar(50))
AS
BEGIN

  SELECT * FROM tbl_Item WHERE ItemName LIKE '%' +@SearchString +'%' OR Barcode LIKE '%' +@SearchString +'%'
  END
GO
/****** Object:  StoredProcedure [dbo].[usp_GetCustomerSearch]    Script Date: 03/16/2019 17:49:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_GetCustomerSearch]
(@SearchString nvarchar(50))
AS
BEGIN

  SELECT * FROM tbl_Customer  WHERE CustName  LIKE '%' +@SearchString +'%' OR Mobile LIKE '%' +@SearchString +'%'
  END
GO
/****** Object:  StoredProcedure [dbo].[usp_GetCustAccountList]    Script Date: 03/16/2019 17:49:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_GetCustAccountList]
(@CustName nvarchar(50))
AS
BEGIN

  SELECT * FROM tbl_Customer  WHERE CustName  LIKE '%' +@CustName +'%' OR Mobile LIKE '%' +@CustName +'%'
  END
GO
/****** Object:  StoredProcedure [dbo].[usp_GetCustAccountData]    Script Date: 03/16/2019 17:49:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_GetCustAccountData]
(@CustId BIGINT)
AS
BEGIN

  SELECT * FROM tbl_Customer  WHERE CustId=@CustId
  END
GO
/****** Object:  StoredProcedure [dbo].[usp_GetChatsList]    Script Date: 03/16/2019 17:49:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- exec [usp_GetChatsList] 30717

CREATE PROCEDURE [dbo].[usp_GetChatsList]
@AccountID bigint,
@PageId int	
AS
DECLARE @Table1 TABLE(ID INT, ViewedName nvarchar(500))
INSERT INTO @Table1 SELECT CID,(SELECT ISNULL(FirstName,'') FROM tblLogin WHERE UserID=ViewedById) as ViewedById FROM tbl_ChatViewedBy 
DECLARE @Table2 TABLE(ID INT, ViewedName nvarchar(500))
INSERT INTO @Table2
SELECT  ID
       ,STUFF((SELECT ', ' + ViewedName [text()]
         FROM @Table1 
         WHERE ID = t.ID
         FOR XML PATH(''), TYPE)
        .value('.','NVARCHAR(MAX)'),1,2,' ') List_Output
FROM @Table1 t
GROUP BY ID
BEGIN
IF  (@PageId=1)
   BEGIN
    SELECT C.AccountID, C.CID,C.Title,C.Body,C.CreatedDate,
	(SELECT ISNULL(FirstName +' '+ LastName,'') FROM tblLogin WHERE UserID=C.CreatedById) AS UserName,
    (SELECT count(ViewedById) FROM tbl_ChatViewedBy WHERE CID in (C.CID)) AS ViewedCount ,T.ViewedName as ViewedByNames   
	FROM tbl_Chattter C LEFT OUTER JOIN @Table2 T ON C.CID=T.ID 
	WHERE C.AccountID=@AccountID
	order by CreatedDate Desc	
   END	
IF  (@PageId=2)
   BEGIN
    SELECT C.AccountID, C.CID,C.Title,C.Body,C.CreatedDate,
	(SELECT ISNULL(FirstName +' '+ LastName,'') FROM tblLogin WHERE UserID=C.CreatedById) AS UserName,
    (SELECT count(ViewedById) FROM tbl_ChatViewedBy WHERE CID in (C.CID)) AS ViewedCount ,T.ViewedName as ViewedByNames   
	FROM tbl_Chattter C LEFT OUTER JOIN @Table2 T ON C.CID=T.ID 
	WHERE C.LeadId=@AccountID
	order by CreatedDate Desc	
   END	   
END
GO
/****** Object:  StoredProcedure [dbo].[usp_AddPageLoginHistory]    Script Date: 03/16/2019 17:49:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_AddPageLoginHistory]
@UserID	     INT =null,
@SessionID	 VARCHAR(50) =null, 
@PageName	 VARCHAR(100) =null 
AS
BEGIN
	DECLARE @LHID BIGINT
    SET @LHID= (SELECT ID FROM tblLoginHistory WHERE SessionID = @SessionID AND UserID=@UserID AND LogoutDateTime IS NULL)
		 IF @LHID > 0
		  BEGIN
			
			UPDATE [tblPagesLoginHistory]
            SET [PageOutDateTime] = GETDATE()
            WHERE  LHID = @LHID AND PageOutDateTime IS NULL
            if(@PageName!='')
            BEGIN
            INSERT INTO [tblPagesLoginHistory]([LHID],[PageName],[PageInDateTime])
            VALUES(@LHID,@PageName,GETDATE())
            end
	       END
END
GO
/****** Object:  StoredProcedure [dbo].[SPRecipes]    Script Date: 03/16/2019 17:49:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SPRecipes]
	(@ItemId int,
	@Qty decimal(18,2))
AS
		update Ingredient  set IngredientQty=@Qty where Id=@ItemId
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[SPIngredient]    Script Date: 03/16/2019 17:49:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SPIngredient](@IngredientName nvarchar (300),@PurchasePrice decimal (18,0),@SalePrice decimal (18,0),@CatId int,@IngredientQty decimal(18,2),@Unit varchar(50),@Details varchar (max),@Vat decimal(18,2),@Count int output)
	AS
	Select @Count=Count(*) from Ingredient
	where IngredientName=@IngredientName
	if @Count=1
BEGIN
Set @Count=-1
RETURN
END
insert into Ingredient(IngredientName,PurchasePrice,SalePrice,CatId,IngredientQty,Unit,Details,Vat)
Values (@IngredientName,@PurchasePrice,@SalePrice,@CatId,@IngredientQty,@Unit,@Details,@Vat)
Set @Count=@@IDENTITY
GO
/****** Object:  StoredProcedure [dbo].[SP_QBill]    Script Date: 03/16/2019 17:49:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/****** Object:  StoredProcedure [dbo].[SP_Invoice]    Script Date: 07/24/2017 08:49:50 ******/
CREATE PROCEDURE [dbo].[SP_QBill]
(@InvoiceId int,
 @ItemId nvarchar(100),
 @ItemQty decimal(18,2),
 @ItemSaleAmt decimal(18,2),
 @Vat decimal(18,2),
 @Rate decimal(18,2),
 @Discount decimal(18,2)
)
AS
	insert into QBill (InvoiceId,ItemId,ItemQty,ItemSaleAmt,Vat,Rate,Discount) values(@InvoiceId, @ItemId,@ItemQty, @ItemSaleAmt, @Vat, @Rate,@Discount);
	
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[SP_OBill]    Script Date: 03/16/2019 17:49:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/****** Object:  StoredProcedure [dbo].[SP_Invoice]    Script Date: 07/24/2017 08:49:50 ******/
CREATE PROCEDURE [dbo].[SP_OBill]
(@InvoiceId int,
 @ItemId nvarchar(100),
 @ItemQty decimal(18,2),
 @ItemSaleAmt decimal(18,2),
 @Vat decimal(18,2),
 @Rate decimal(18,2),
 @Discount decimal(18,2)
)
AS
	insert into OBill (InvoiceId,ItemId,ItemQty,ItemSaleAmt,Vat,Rate,Discount) values(@InvoiceId, @ItemId,@ItemQty, @ItemSaleAmt, @Vat, @Rate,@Discount);
	
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[SP_Myorder]    Script Date: 03/16/2019 17:49:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_Myorder]
(
 @ItemId nvarchar(100),
 @ItemQty decimal(18,2),
  @CustId nvarchar(50),
 @Date datetime,
 @Status int)

AS
	insert into MyOrder (ItemId,ItemQty,CustId,Date,Status ) values(@ItemId,@ItemQty,@CustId ,@Date ,@Status );
		RETURN
GO
/****** Object:  StoredProcedure [dbo].[SP_RecipesDet1]    Script Date: 03/16/2019 17:49:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_RecipesDet1]
(@InvoiceId int,
 @ItemId int,
 @ItemQty decimal(18,2),
 @ItemSaleAmt decimal(18,2),
 @Vat decimal(18,2),
 @Rate decimal(18,2),
 @Qty decimal(18,2))
AS
	insert into RecipesDet1 (InvoiceId,ItemId,ItemQty,ItemSaleAmt,Vat,Rate) values(@InvoiceId, @ItemId,@ItemQty, @ItemSaleAmt, @Vat, @Rate);
	update Ingredient set IngredientQty=@Qty where Id=@ItemId
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[SP_RecipesDet]    Script Date: 03/16/2019 17:49:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_RecipesDet]
(@InvoiceId int,
 @ItemId int,
 @ItemQty decimal(18,2),
 @ItemSaleAmt decimal(18,2),
 @Vat decimal(18,2),
 @Rate decimal(18,2),
 @Qty decimal(18,2))
AS
	insert into RecipesDet (InvoiceId,ItemId,ItemQty,ItemSaleAmt,Vat,Rate) values(@InvoiceId, @ItemId,@ItemQty, @ItemSaleAmt, @Vat, @Rate);
	--update Ingredient set IngredientQty=@Qty where Id=@ItemId
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[SP_Recipes1]    Script Date: 03/16/2019 17:49:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_Recipes1]
	(@CustId nvarchar(200),
	 @Amount decimal,
	@Discount decimal,
	@TotalAmt decimal,
	@Vat decimal,
	 @Date datetime,
	 @Time varchar(50),
	 @Paymode varchar(200),
	 @Paid varchar(50),
	 @Note varchar(500)
	)
	
AS
  
    
	insert into Recipes1 (CustId,Amount,Discount,TotalAmt,Vat,Date,Time,Paymode,Paid,Note)values(@CustId,@Amount,@Discount,@TotalAmt,@Vat,@Date,@Time,@Paymode,@Paid,@Note)
	
	return
GO
/****** Object:  StoredProcedure [dbo].[SP_Recipes]    Script Date: 03/16/2019 17:49:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_Recipes]
	(@CustId nvarchar(200),
	 @Amount decimal,
	@Discount decimal,
	@TotalAmt decimal,
	@Vat decimal,
	 @Date varchar(50),
	 @Time varchar(50),
	 @Paymode varchar(200),
	 @Paid varchar(50),
	 @Note nvarchar(500)
	)
	
AS
  
    
	insert into Recipes (CustId,Amount,Discount,TotalAmt,Vat,Date,Time,Paymode,Paid,Note)values(@CustId,@Amount,@Discount,@TotalAmt,@Vat,@Date,@Time,@Paymode,@Paid,@Note)
	
	return
GO
/****** Object:  StoredProcedure [dbo].[SP_Invoice1]    Script Date: 03/16/2019 17:49:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_Invoice1]
	(@Id int,
	@CustId varchar(10),
	 @Amount decimal(18,2),
	@Discount  decimal(18,2),
	@TotalAmt decimal(18,2),
	@Vat decimal(18,2),
	 @Date varchar(50),
	 @Time varchar(50),
	 @Paymode varchar(200),
	 @Paid varchar(50),
	 @Note varchar(500),
	 @Advance decimal(18,2),
	 @Point decimal(18,2),
	 @Person nvarchar(200),
	 @CGST decimal(18,2),
	 @SGST decimal(18,2),
	 @IGST decimal(18,2)
	)
	
AS
	insert into Invoice1 (Id,CustId,Amount,Discount,TotalAmt,Vat,Date,Time,Paymode,Paid,Note,Advance,Point,Person,CGST,SGST,IGST)values(@Id,@CustId,@Amount,@Discount,@TotalAmt,@Vat,@Date,@Time,@Paymode,@Paid,@Note, @Advance,@Point,@Person,@CGST,@SGST,@IGST)
	return
GO
/****** Object:  StoredProcedure [dbo].[SP_Bill1]    Script Date: 03/16/2019 17:49:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_Bill1]
(@InvoiceId int,
 @ItemId nvarchar(100),
 @ItemQty decimal(18,2),
 @ItemSaleAmt decimal(18,2),
 @Vat decimal(18,2),
 @Rate decimal(18,2),
 @Discount decimal(18,2),
 @Qty decimal(18,2),
 @Model nvarchar(50),
 @Size decimal(18,2),
 @Disc decimal(18,2),
 @GST decimal(18,2),
 @TaxAmt decimal(18,2))
AS
	insert into Bill1 (InvoiceId,ItemId,ItemQty,ItemSaleAmt,Vat,Rate,Discount,Model,Size,Disc,GST,TaxAmt) values(@InvoiceId, @ItemId,@ItemQty, @ItemSaleAmt, @Vat, @Rate,@Discount,@Model,@Size,@Disc,@GST,@TaxAmt);
	update item1 set ItemQty=@Qty where Barcode=@ItemId
	RETURN
GO
/****** Object:  UserDefinedFunction [dbo].[getIdentityTheftCount]    Script Date: 03/16/2019 17:49:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[getIdentityTheftCount]
	(
		@AOID			BIGINT
	)
	RETURNS		INT
AS
BEGIN
	  DECLARE @ReturnValue INT
	  DECLARE @AddIDTheftOT INT=0
	  DECLARE @AddIDTheftPck INT=0
	
	  SELECT  @AddIDTheftOT = (SELECT ISNULL(IdentityTheft,0)  FROm tbl_AgentOrderDetails WHERE AOID=@AOID)
	  SELECT  @AddIDTheftPck = ISNULL((SELECT ISNull(AddIdentityTheft,0) FROM tbl_Package WHERE PackageID IN (SELECT * FROM dbo.SPLIT((SELECT AdditionalPackage FROm tbl_AgentOrderDetails WHERE AOID=@AOID)) )),0)
	  IF(@AddIDTheftOT>=@AddIDTheftPck)
	  BEGIN
		SET @ReturnValue=@AddIDTheftOT
	  END
	  ELSE
	  BEGIN
		SET @ReturnValue=@AddIDTheftPck
	  END
	  RETURN @ReturnValue
	
END
GO
/****** Object:  UserDefinedFunction [dbo].[getDecalCount]    Script Date: 03/16/2019 17:49:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[getDecalCount]
	(
		@AOID			BIGINT
	)
	RETURNS		INT
AS
BEGIN
	  DECLARE @ReturnValue INT
	  DECLARE @AddDecalOT INT=0
	  DECLARE @AddDecalPck INT=0
	
	  SELECT  @AddDecalOT = (SELECT CASE WHEN  ISNULL(AddDecals,0)<=1 THEN 0 ELSE (AddDecals-1) END  FROm tbl_AgentOrderDetails WHERE AOID=@AOID)
	  SELECT  @AddDecalPck = ISNULL((SELECT SUM(DecalNumber) FROM tbl_Package WHERE PackageID IN (SELECT * FROM dbo.SPLIT((SELECT AdditionalPackage FROm tbl_AgentOrderDetails WHERE AOID=@AOID)) )),0)
	  IF(@AddDecalOT>=@AddDecalPck)
	  BEGIN
		SET @ReturnValue=@AddDecalOT
	  END
	  ELSE
	  BEGIN
		SET @ReturnValue=@AddDecalPck
	  END
	  RETURN @ReturnValue
	
END
GO
/****** Object:  UserDefinedFunction [dbo].[getNetDeal]    Script Date: 03/16/2019 17:49:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[getNetDeal]
	(
		@AOID			BIGINT
	)
	RETURNS		VARCHAR (MAX)
AS
BEGIN
	  DECLARE @ReturnValue VARCHAR (MAX)
	
	  SELECT  @ReturnValue = (ISNULL(dbo.getTransactionTotal(@AOID) +(SELECT  ISNUll(SUM(ChargeAmt),0) FROM tbl_OrderTransactions WHERE AOID=@AOID AND TransType IN (2,3)  ),0) )
	
	  RETURN @ReturnValue
	
END
GO
