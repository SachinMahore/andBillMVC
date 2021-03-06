USE [esankalp_niraj]
GO
/****** Object:  StoredProcedure [dbo].[usp_ImportCsvToLead]    Script Date: 03/06/2020 1:35:47 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_ImportCsvToLead]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_ImportCsvToLead]
GO
/****** Object:  StoredProcedure [dbo].[usp_GetUserInfoPageListRange]    Script Date: 03/06/2020 1:35:47 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetUserInfoPageListRange]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_GetUserInfoPageListRange]
GO
/****** Object:  StoredProcedure [dbo].[usp_GetUserInfoPageList]    Script Date: 03/06/2020 1:35:47 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetUserInfoPageList]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_GetUserInfoPageList]
GO
/****** Object:  StoredProcedure [dbo].[usp_GetUserAccess]    Script Date: 03/06/2020 1:35:47 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetUserAccess]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_GetUserAccess]
GO
/****** Object:  StoredProcedure [dbo].[usp_GetTransactionDetails]    Script Date: 03/06/2020 1:35:47 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetTransactionDetails]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_GetTransactionDetails]
GO
/****** Object:  StoredProcedure [dbo].[usp_GetSuppTransactionDetails]    Script Date: 03/06/2020 1:35:47 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetSuppTransactionDetails]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_GetSuppTransactionDetails]
GO
/****** Object:  StoredProcedure [dbo].[usp_GetSuppAccountList]    Script Date: 03/06/2020 1:35:47 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetSuppAccountList]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_GetSuppAccountList]
GO
/****** Object:  StoredProcedure [dbo].[usp_GetSuppAccountData]    Script Date: 03/06/2020 1:35:47 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetSuppAccountData]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_GetSuppAccountData]
GO
/****** Object:  StoredProcedure [dbo].[usp_GetNotesList]    Script Date: 03/06/2020 1:35:47 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetNotesList]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_GetNotesList]
GO
/****** Object:  StoredProcedure [dbo].[usp_GetMenuByUserID]    Script Date: 03/06/2020 1:35:47 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetMenuByUserID]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_GetMenuByUserID]
GO
/****** Object:  StoredProcedure [dbo].[usp_GetItemSearch]    Script Date: 03/06/2020 1:35:47 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetItemSearch]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_GetItemSearch]
GO
/****** Object:  StoredProcedure [dbo].[usp_GetInvoiceList]    Script Date: 03/06/2020 1:35:47 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetInvoiceList]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_GetInvoiceList]
GO
/****** Object:  StoredProcedure [dbo].[usp_GetInvoiceDetails]    Script Date: 03/06/2020 1:35:47 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetInvoiceDetails]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_GetInvoiceDetails]
GO
/****** Object:  StoredProcedure [dbo].[usp_GetEmpTransactionDetails]    Script Date: 03/06/2020 1:35:47 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetEmpTransactionDetails]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_GetEmpTransactionDetails]
GO
/****** Object:  StoredProcedure [dbo].[usp_GetEmpAccountList]    Script Date: 03/06/2020 1:35:47 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetEmpAccountList]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_GetEmpAccountList]
GO
/****** Object:  StoredProcedure [dbo].[usp_GetEmpAccountData]    Script Date: 03/06/2020 1:35:47 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetEmpAccountData]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_GetEmpAccountData]
GO
/****** Object:  StoredProcedure [dbo].[usp_GetCustomerSearch]    Script Date: 03/06/2020 1:35:47 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetCustomerSearch]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_GetCustomerSearch]
GO
/****** Object:  StoredProcedure [dbo].[usp_GetCustAccountList]    Script Date: 03/06/2020 1:35:47 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetCustAccountList]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_GetCustAccountList]
GO
/****** Object:  StoredProcedure [dbo].[usp_GetCustAccountData]    Script Date: 03/06/2020 1:35:47 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetCustAccountData]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_GetCustAccountData]
GO
/****** Object:  StoredProcedure [dbo].[usp_GetCustAccountBalance]    Script Date: 03/06/2020 1:35:47 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetCustAccountBalance]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_GetCustAccountBalance]
GO
/****** Object:  StoredProcedure [dbo].[usp_GetChatsList]    Script Date: 03/06/2020 1:35:47 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetChatsList]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_GetChatsList]
GO
/****** Object:  StoredProcedure [dbo].[usp_AddPageLoginHistory]    Script Date: 03/06/2020 1:35:47 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_AddPageLoginHistory]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_AddPageLoginHistory]
GO
/****** Object:  StoredProcedure [dbo].[spuser]    Script Date: 03/06/2020 1:35:47 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spuser]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[spuser]
GO
/****** Object:  StoredProcedure [dbo].[SPupdate1]    Script Date: 03/06/2020 1:35:47 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SPupdate1]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[SPupdate1]
GO
/****** Object:  StoredProcedure [dbo].[SPupdate]    Script Date: 03/06/2020 1:35:47 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SPupdate]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[SPupdate]
GO
/****** Object:  StoredProcedure [dbo].[SPSupplier]    Script Date: 03/06/2020 1:35:47 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SPSupplier]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[SPSupplier]
GO
/****** Object:  StoredProcedure [dbo].[SPSuppAccount]    Script Date: 03/06/2020 1:35:47 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SPSuppAccount]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[SPSuppAccount]
GO
/****** Object:  StoredProcedure [dbo].[SPRecipes]    Script Date: 03/06/2020 1:35:47 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SPRecipes]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[SPRecipes]
GO
/****** Object:  StoredProcedure [dbo].[SPPurchase]    Script Date: 03/06/2020 1:35:47 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SPPurchase]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[SPPurchase]
GO
/****** Object:  StoredProcedure [dbo].[SPParty]    Script Date: 03/06/2020 1:35:47 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SPParty]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[SPParty]
GO
/****** Object:  StoredProcedure [dbo].[spkanthaklogin]    Script Date: 03/06/2020 1:35:47 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spkanthaklogin]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[spkanthaklogin]
GO
/****** Object:  StoredProcedure [dbo].[SPItem1]    Script Date: 03/06/2020 1:35:47 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SPItem1]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[SPItem1]
GO
/****** Object:  StoredProcedure [dbo].[SPItem]    Script Date: 03/06/2020 1:35:47 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SPItem]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[SPItem]
GO
/****** Object:  StoredProcedure [dbo].[SPIngredient]    Script Date: 03/06/2020 1:35:47 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SPIngredient]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[SPIngredient]
GO
/****** Object:  StoredProcedure [dbo].[spfollow]    Script Date: 03/06/2020 1:35:47 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spfollow]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[spfollow]
GO
/****** Object:  StoredProcedure [dbo].[spenquiry]    Script Date: 03/06/2020 1:35:47 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spenquiry]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[spenquiry]
GO
/****** Object:  StoredProcedure [dbo].[SPEmployee]    Script Date: 03/06/2020 1:35:47 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SPEmployee]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[SPEmployee]
GO
/****** Object:  StoredProcedure [dbo].[SPEmp]    Script Date: 03/06/2020 1:35:47 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SPEmp]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[SPEmp]
GO
/****** Object:  StoredProcedure [dbo].[spcust]    Script Date: 03/06/2020 1:35:47 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spcust]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[spcust]
GO
/****** Object:  StoredProcedure [dbo].[SPCatgory]    Script Date: 03/06/2020 1:35:47 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SPCatgory]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[SPCatgory]
GO
/****** Object:  StoredProcedure [dbo].[SPCategory]    Script Date: 03/06/2020 1:35:47 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SPCategory]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[SPCategory]
GO
/****** Object:  StoredProcedure [dbo].[SPAccount]    Script Date: 03/06/2020 1:35:47 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SPAccount]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[SPAccount]
GO
/****** Object:  StoredProcedure [dbo].[SP_RecipesDet1]    Script Date: 03/06/2020 1:35:47 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_RecipesDet1]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[SP_RecipesDet1]
GO
/****** Object:  StoredProcedure [dbo].[SP_RecipesDet]    Script Date: 03/06/2020 1:35:47 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_RecipesDet]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[SP_RecipesDet]
GO
/****** Object:  StoredProcedure [dbo].[SP_Recipes1]    Script Date: 03/06/2020 1:35:47 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_Recipes1]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[SP_Recipes1]
GO
/****** Object:  StoredProcedure [dbo].[SP_Recipes]    Script Date: 03/06/2020 1:35:47 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_Recipes]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[SP_Recipes]
GO
/****** Object:  StoredProcedure [dbo].[SP_Quotation]    Script Date: 03/06/2020 1:35:47 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_Quotation]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[SP_Quotation]
GO
/****** Object:  StoredProcedure [dbo].[SP_QBill]    Script Date: 03/06/2020 1:35:47 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_QBill]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[SP_QBill]
GO
/****** Object:  StoredProcedure [dbo].[SP_PartyAcct]    Script Date: 03/06/2020 1:35:47 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_PartyAcct]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[SP_PartyAcct]
GO
/****** Object:  StoredProcedure [dbo].[SP_Order]    Script Date: 03/06/2020 1:35:47 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_Order]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[SP_Order]
GO
/****** Object:  StoredProcedure [dbo].[SP_OBill]    Script Date: 03/06/2020 1:35:47 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_OBill]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[SP_OBill]
GO
/****** Object:  StoredProcedure [dbo].[SP_Myorder]    Script Date: 03/06/2020 1:35:47 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_Myorder]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[SP_Myorder]
GO
/****** Object:  StoredProcedure [dbo].[SP_MyAcct]    Script Date: 03/06/2020 1:35:47 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_MyAcct]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[SP_MyAcct]
GO
/****** Object:  StoredProcedure [dbo].[SP_Invoice1]    Script Date: 03/06/2020 1:35:47 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_Invoice1]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[SP_Invoice1]
GO
/****** Object:  StoredProcedure [dbo].[SP_EmpAcct]    Script Date: 03/06/2020 1:35:47 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_EmpAcct]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[SP_EmpAcct]
GO
/****** Object:  StoredProcedure [dbo].[SP_Bill1]    Script Date: 03/06/2020 1:35:47 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_Bill1]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[SP_Bill1]
GO
/****** Object:  StoredProcedure [dbo].[SP_Bill]    Script Date: 03/06/2020 1:35:47 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_Bill]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[SP_Bill]
GO
/****** Object:  StoredProcedure [dbo].[SP_Acct]    Script Date: 03/06/2020 1:35:47 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_Acct]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[SP_Acct]
GO
/****** Object:  Table [dbo].[tblPagesLoginHistory]    Script Date: 03/06/2020 1:35:47 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblPagesLoginHistory]') AND type in (N'U'))
DROP TABLE [dbo].[tblPagesLoginHistory]
GO
/****** Object:  Table [dbo].[tblMessage]    Script Date: 03/06/2020 1:35:47 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblMessage]') AND type in (N'U'))
DROP TABLE [dbo].[tblMessage]
GO
/****** Object:  Table [dbo].[tblLoginHistory]    Script Date: 03/06/2020 1:35:47 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblLoginHistory]') AND type in (N'U'))
DROP TABLE [dbo].[tblLoginHistory]
GO
/****** Object:  Table [dbo].[tblLogin]    Script Date: 03/06/2020 1:35:47 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblLogin]') AND type in (N'U'))
DROP TABLE [dbo].[tblLogin]
GO
/****** Object:  Table [dbo].[tbl_user]    Script Date: 03/06/2020 1:35:47 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_user]') AND type in (N'U'))
DROP TABLE [dbo].[tbl_user]
GO
/****** Object:  Table [dbo].[tbl_Transaction]    Script Date: 03/06/2020 1:35:47 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_Transaction]') AND type in (N'U'))
DROP TABLE [dbo].[tbl_Transaction]
GO
/****** Object:  Table [dbo].[tbl_Supplier]    Script Date: 03/06/2020 1:35:47 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_Supplier]') AND type in (N'U'))
DROP TABLE [dbo].[tbl_Supplier]
GO
/****** Object:  Table [dbo].[tbl_SuppAccount]    Script Date: 03/06/2020 1:35:47 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_SuppAccount]') AND type in (N'U'))
DROP TABLE [dbo].[tbl_SuppAccount]
GO
/****** Object:  Table [dbo].[tbl_Quotation]    Script Date: 03/06/2020 1:35:47 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_Quotation]') AND type in (N'U'))
DROP TABLE [dbo].[tbl_Quotation]
GO
/****** Object:  Table [dbo].[tbl_Purchase]    Script Date: 03/06/2020 1:35:47 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_Purchase]') AND type in (N'U'))
DROP TABLE [dbo].[tbl_Purchase]
GO
/****** Object:  Table [dbo].[tbl_Order]    Script Date: 03/06/2020 1:35:47 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_Order]') AND type in (N'U'))
DROP TABLE [dbo].[tbl_Order]
GO
/****** Object:  Table [dbo].[tbl_Notes]    Script Date: 03/06/2020 1:35:47 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_Notes]') AND type in (N'U'))
DROP TABLE [dbo].[tbl_Notes]
GO
/****** Object:  Table [dbo].[tbl_Item]    Script Date: 03/06/2020 1:35:47 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_Item]') AND type in (N'U'))
DROP TABLE [dbo].[tbl_Item]
GO
/****** Object:  Table [dbo].[tbl_Invoice]    Script Date: 03/06/2020 1:35:47 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_Invoice]') AND type in (N'U'))
DROP TABLE [dbo].[tbl_Invoice]
GO
/****** Object:  Table [dbo].[tbl_FromAddress]    Script Date: 03/06/2020 1:35:47 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_FromAddress]') AND type in (N'U'))
DROP TABLE [dbo].[tbl_FromAddress]
GO
/****** Object:  Table [dbo].[tbl_follow1]    Script Date: 03/06/2020 1:35:47 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_follow1]') AND type in (N'U'))
DROP TABLE [dbo].[tbl_follow1]
GO
/****** Object:  Table [dbo].[tbl_Expenses]    Script Date: 03/06/2020 1:35:47 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_Expenses]') AND type in (N'U'))
DROP TABLE [dbo].[tbl_Expenses]
GO
/****** Object:  Table [dbo].[tbl_Enquiry1]    Script Date: 03/06/2020 1:35:47 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_Enquiry1]') AND type in (N'U'))
DROP TABLE [dbo].[tbl_Enquiry1]
GO
/****** Object:  Table [dbo].[tbl_Employee]    Script Date: 03/06/2020 1:35:47 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_Employee]') AND type in (N'U'))
DROP TABLE [dbo].[tbl_Employee]
GO
/****** Object:  Table [dbo].[tbl_EmpAccount]    Script Date: 03/06/2020 1:35:47 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_EmpAccount]') AND type in (N'U'))
DROP TABLE [dbo].[tbl_EmpAccount]
GO
/****** Object:  Table [dbo].[tbl_EmailTemplates]    Script Date: 03/06/2020 1:35:47 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_EmailTemplates]') AND type in (N'U'))
DROP TABLE [dbo].[tbl_EmailTemplates]
GO
/****** Object:  Table [dbo].[tbl_EMails]    Script Date: 03/06/2020 1:35:47 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_EMails]') AND type in (N'U'))
DROP TABLE [dbo].[tbl_EMails]
GO
/****** Object:  Table [dbo].[tbl_Customer]    Script Date: 03/06/2020 1:35:47 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_Customer]') AND type in (N'U'))
DROP TABLE [dbo].[tbl_Customer]
GO
/****** Object:  Table [dbo].[tbl_CustAccount]    Script Date: 03/06/2020 1:35:47 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_CustAccount]') AND type in (N'U'))
DROP TABLE [dbo].[tbl_CustAccount]
GO
/****** Object:  Table [dbo].[tbl_Cust1]    Script Date: 03/06/2020 1:35:47 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_Cust1]') AND type in (N'U'))
DROP TABLE [dbo].[tbl_Cust1]
GO
/****** Object:  Table [dbo].[tbl_Client]    Script Date: 03/06/2020 1:35:47 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_Client]') AND type in (N'U'))
DROP TABLE [dbo].[tbl_Client]
GO
/****** Object:  Table [dbo].[tbl_ChatViewedBy]    Script Date: 03/06/2020 1:35:47 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_ChatViewedBy]') AND type in (N'U'))
DROP TABLE [dbo].[tbl_ChatViewedBy]
GO
/****** Object:  Table [dbo].[tbl_Chattter]    Script Date: 03/06/2020 1:35:47 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_Chattter]') AND type in (N'U'))
DROP TABLE [dbo].[tbl_Chattter]
GO
/****** Object:  Table [dbo].[tbl_Category]    Script Date: 03/06/2020 1:35:47 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_Category]') AND type in (N'U'))
DROP TABLE [dbo].[tbl_Category]
GO
/****** Object:  Table [dbo].[tbl_CallHistory]    Script Date: 03/06/2020 1:35:47 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_CallHistory]') AND type in (N'U'))
DROP TABLE [dbo].[tbl_CallHistory]
GO
/****** Object:  Table [dbo].[tbl_Bill]    Script Date: 03/06/2020 1:35:47 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_Bill]') AND type in (N'U'))
DROP TABLE [dbo].[tbl_Bill]
GO
/****** Object:  Table [dbo].[tbl_BankMaster]    Script Date: 03/06/2020 1:35:47 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_BankMaster]') AND type in (N'U'))
DROP TABLE [dbo].[tbl_BankMaster]
GO
/****** Object:  Table [dbo].[syUsersRoles]    Script Date: 03/06/2020 1:35:47 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[syUsersRoles]') AND type in (N'U'))
DROP TABLE [dbo].[syUsersRoles]
GO
/****** Object:  Table [dbo].[syRolesResourcesLevels]    Script Date: 03/06/2020 1:35:47 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[syRolesResourcesLevels]') AND type in (N'U'))
DROP TABLE [dbo].[syRolesResourcesLevels]
GO
/****** Object:  Table [dbo].[syRoles]    Script Date: 03/06/2020 1:35:47 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[syRoles]') AND type in (N'U'))
DROP TABLE [dbo].[syRoles]
GO
/****** Object:  Table [dbo].[syRoleResources]    Script Date: 03/06/2020 1:35:47 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[syRoleResources]') AND type in (N'U'))
DROP TABLE [dbo].[syRoleResources]
GO
/****** Object:  Table [dbo].[syResourceTypes]    Script Date: 03/06/2020 1:35:47 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[syResourceTypes]') AND type in (N'U'))
DROP TABLE [dbo].[syResourceTypes]
GO
/****** Object:  Table [dbo].[syResources]    Script Date: 03/06/2020 1:35:47 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[syResources]') AND type in (N'U'))
DROP TABLE [dbo].[syResources]
GO
/****** Object:  Table [dbo].[syNavigationNodes]    Script Date: 03/06/2020 1:35:47 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[syNavigationNodes]') AND type in (N'U'))
DROP TABLE [dbo].[syNavigationNodes]
GO
/****** Object:  Table [dbo].[RecipesDet1]    Script Date: 03/06/2020 1:35:47 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[RecipesDet1]') AND type in (N'U'))
DROP TABLE [dbo].[RecipesDet1]
GO
/****** Object:  Table [dbo].[RecipesDet]    Script Date: 03/06/2020 1:35:47 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[RecipesDet]') AND type in (N'U'))
DROP TABLE [dbo].[RecipesDet]
GO
/****** Object:  Table [dbo].[Recipes1]    Script Date: 03/06/2020 1:35:47 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Recipes1]') AND type in (N'U'))
DROP TABLE [dbo].[Recipes1]
GO
/****** Object:  Table [dbo].[Recipes]    Script Date: 03/06/2020 1:35:47 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Recipes]') AND type in (N'U'))
DROP TABLE [dbo].[Recipes]
GO
/****** Object:  Table [dbo].[QBill]    Script Date: 03/06/2020 1:35:47 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[QBill]') AND type in (N'U'))
DROP TABLE [dbo].[QBill]
GO
/****** Object:  Table [dbo].[OBill]    Script Date: 03/06/2020 1:35:47 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OBill]') AND type in (N'U'))
DROP TABLE [dbo].[OBill]
GO
/****** Object:  Table [dbo].[MyOrder]    Script Date: 03/06/2020 1:35:47 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[MyOrder]') AND type in (N'U'))
DROP TABLE [dbo].[MyOrder]
GO
/****** Object:  Table [dbo].[Item1]    Script Date: 03/06/2020 1:35:47 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Item1]') AND type in (N'U'))
DROP TABLE [dbo].[Item1]
GO
/****** Object:  Table [dbo].[Invoice1]    Script Date: 03/06/2020 1:35:47 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Invoice1]') AND type in (N'U'))
DROP TABLE [dbo].[Invoice1]
GO
/****** Object:  Table [dbo].[Ingredient]    Script Date: 03/06/2020 1:35:47 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Ingredient]') AND type in (N'U'))
DROP TABLE [dbo].[Ingredient]
GO
/****** Object:  Table [dbo].[Bill1]    Script Date: 03/06/2020 1:35:47 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Bill1]') AND type in (N'U'))
DROP TABLE [dbo].[Bill1]
GO
/****** Object:  UserDefinedFunction [dbo].[SPLIT]    Script Date: 03/06/2020 1:35:47 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SPLIT]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[SPLIT]
GO
/****** Object:  UserDefinedFunction [dbo].[getTransType]    Script Date: 03/06/2020 1:35:47 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[getTransType]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[getTransType]
GO
/****** Object:  UserDefinedFunction [dbo].[getTransactionTotal]    Script Date: 03/06/2020 1:35:47 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[getTransactionTotal]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[getTransactionTotal]
GO
/****** Object:  UserDefinedFunction [dbo].[getTestTotal]    Script Date: 03/06/2020 1:35:47 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[getTestTotal]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[getTestTotal]
GO
/****** Object:  UserDefinedFunction [dbo].[getRefundVoidmMount]    Script Date: 03/06/2020 1:35:47 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[getRefundVoidmMount]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[getRefundVoidmMount]
GO
/****** Object:  UserDefinedFunction [dbo].[getPaymentFrequency]    Script Date: 03/06/2020 1:35:47 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[getPaymentFrequency]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[getPaymentFrequency]
GO
/****** Object:  UserDefinedFunction [dbo].[getPaymentCount]    Script Date: 03/06/2020 1:35:47 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[getPaymentCount]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[getPaymentCount]
GO
/****** Object:  UserDefinedFunction [dbo].[getPaidAmount]    Script Date: 03/06/2020 1:35:47 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[getPaidAmount]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[getPaidAmount]
GO
/****** Object:  UserDefinedFunction [dbo].[getNetDeal]    Script Date: 03/06/2020 1:35:47 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[getNetDeal]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[getNetDeal]
GO
/****** Object:  UserDefinedFunction [dbo].[getLastPurchase]    Script Date: 03/06/2020 1:35:47 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[getLastPurchase]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[getLastPurchase]
GO
/****** Object:  UserDefinedFunction [dbo].[getIdentityTheftCount]    Script Date: 03/06/2020 1:35:47 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[getIdentityTheftCount]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[getIdentityTheftCount]
GO
/****** Object:  UserDefinedFunction [dbo].[getFirstTransactionDate]    Script Date: 03/06/2020 1:35:47 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[getFirstTransactionDate]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[getFirstTransactionDate]
GO
/****** Object:  UserDefinedFunction [dbo].[getDecalCount]    Script Date: 03/06/2020 1:35:47 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[getDecalCount]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[getDecalCount]
GO
/****** Object:  UserDefinedFunction [dbo].[getChargeAMt]    Script Date: 03/06/2020 1:35:47 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[getChargeAMt]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[getChargeAMt]
GO
/****** Object:  UserDefinedFunction [dbo].[getCardType]    Script Date: 03/06/2020 1:35:47 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[getCardType]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[getCardType]
GO
/****** Object:  UserDefinedFunction [dbo].[getBalanceAmount]    Script Date: 03/06/2020 1:35:47 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[getBalanceAmount]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[getBalanceAmount]
GO
/****** Object:  Schema [esankalp_niraj]    Script Date: 03/06/2020 1:35:47 PM ******/
IF  EXISTS (SELECT * FROM sys.schemas WHERE name = N'esankalp_niraj')
DROP SCHEMA [esankalp_niraj]
GO
/****** Object:  Schema [esankalp_Dharvik]    Script Date: 03/06/2020 1:35:48 PM ******/
IF  EXISTS (SELECT * FROM sys.schemas WHERE name = N'esankalp_Dharvik')
DROP SCHEMA [esankalp_Dharvik]
GO
/****** Object:  User [esankalp_Dharvik]    Script Date: 03/06/2020 1:35:48 PM ******/
IF  EXISTS (SELECT * FROM sys.database_principals WHERE name = N'esankalp_Dharvik')
DROP USER [esankalp_Dharvik]
GO
/****** Object:  User [esankalp_Dharvik]    Script Date: 03/06/2020 1:35:48 PM ******/
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'esankalp_Dharvik')
CREATE USER [esankalp_Dharvik] FOR LOGIN [esankalp_Dharvik] WITH DEFAULT_SCHEMA=[esankalp_Dharvik]
GO
ALTER ROLE [db_ddladmin] ADD MEMBER [esankalp_Dharvik]
GO
ALTER ROLE [db_backupoperator] ADD MEMBER [esankalp_Dharvik]
GO
ALTER ROLE [db_datareader] ADD MEMBER [esankalp_Dharvik]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [esankalp_Dharvik]
GO
/****** Object:  Schema [esankalp_Dharvik]    Script Date: 03/06/2020 1:35:48 PM ******/
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = N'esankalp_Dharvik')
EXEC sys.sp_executesql N'CREATE SCHEMA [esankalp_Dharvik]'

GO
/****** Object:  Schema [esankalp_niraj]    Script Date: 03/06/2020 1:35:48 PM ******/
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = N'esankalp_niraj')
EXEC sys.sp_executesql N'CREATE SCHEMA [esankalp_niraj]'

GO
/****** Object:  UserDefinedFunction [dbo].[getBalanceAmount]    Script Date: 03/06/2020 1:35:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[getBalanceAmount]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'CREATE FUNCTION [dbo].[getBalanceAmount]
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
		   SET @Paid=(SELECT SUM(ChargeAmt)  FROM tbl_OrderTransactions WHERE AOID=@AOID AND TransactionID!=''0'' AND TransType=1 )
	       SET   @ReturnValue =(@Total-@Paid ) 
	  END
	  ELSE
	  BEGIN

	  SET @ReturnValue=''0'';
	  END
	   
	 
	
	  RETURN @ReturnValue
	
END
' 
END

GO
/****** Object:  UserDefinedFunction [dbo].[getCardType]    Script Date: 03/06/2020 1:35:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[getCardType]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'CREATE FUNCTION [dbo].[getCardType]
	(
		@AOID			BIGINT
	)
	RETURNS		VARCHAR (MAX)
AS
BEGIN
	  DECLARE @ReturnValue		VARCHAR (MAX)=''''
	  DECLARE @CardNumber		VARCHAR(20)
	  DECLARE @CardNumberInt	INT
	  
	  SET @CardNumber=ISNULL((SELECT TOP 1 CCI.CardNumber FROM tbl_OrderCardCheckInfo CCI INNER JOIN tbl_AgentOrder AO ON CCI.AOID=AO.OrderID WHERE CCI.AOID=@AOID AND CCI.PaymentMode=1 AND AO.IsCompleted=1),'''')
	  
	
	  IF(@CardNumber!='''')
	BEGIN
		SET @CardNumberInt=CONVERT(INT,SUBSTRING(@CardNumber,1,6))
		IF(@ReturnValue='''')
		BEGIN
			IF EXISTS(SELECT * FROM tbl_CardTypes WHERE @CardNumberInt BETWEEN RangeFrom AND RamgeTo)
			BEGIN
				SET @ReturnValue=(SELECT TOP 1 CardName FROM tbl_CardTypes WHERE @CardNumberInt BETWEEN RangeFrom AND RamgeTo)
			END
		END
		
		SET @CardNumberInt=CONVERT(INT,SUBSTRING(@CardNumber,1,4))
		IF(@ReturnValue='''')
		BEGIN
			IF EXISTS(SELECT * FROM tbl_CardTypes WHERE @CardNumberInt BETWEEN RangeFrom AND RamgeTo)
			BEGIN
				SET @ReturnValue=(SELECT TOP 1 CardName FROM tbl_CardTypes WHERE @CardNumberInt BETWEEN RangeFrom AND RamgeTo)
			END
		END
		
		SET @CardNumberInt=CONVERT(INT,SUBSTRING(@CardNumber,1,3))
		IF(@ReturnValue='''')
		BEGIN
			IF EXISTS(SELECT * FROM tbl_CardTypes WHERE @CardNumberInt BETWEEN RangeFrom AND RamgeTo)
			BEGIN
				SET @ReturnValue=(SELECT TOP 1 CardName FROM tbl_CardTypes WHERE @CardNumberInt BETWEEN RangeFrom AND RamgeTo)
			END
		END
		
		SET @CardNumberInt=CONVERT(INT,SUBSTRING(@CardNumber,1,2))
		IF(@ReturnValue='''')
		BEGIN
			IF EXISTS(SELECT * FROM tbl_CardTypes WHERE @CardNumberInt BETWEEN RangeFrom AND RamgeTo)
			BEGIN
				SET @ReturnValue=(SELECT TOP 1 CardName FROM tbl_CardTypes WHERE @CardNumberInt BETWEEN RangeFrom AND RamgeTo)
			END
		END
		
		SET @CardNumberInt=CONVERT(INT,SUBSTRING(@CardNumber,1,1))
		IF(@ReturnValue='''')
		BEGIN
			IF EXISTS(SELECT * FROM tbl_CardTypes WHERE @CardNumberInt BETWEEN RangeFrom AND RamgeTo)
			BEGIN
				SET @ReturnValue=(SELECT TOP 1 CardName FROM tbl_CardTypes WHERE @CardNumberInt BETWEEN RangeFrom AND RamgeTo)
			END
		END
	END
	
	RETURN @ReturnValue
	
END
' 
END

GO
/****** Object:  UserDefinedFunction [dbo].[getChargeAMt]    Script Date: 03/06/2020 1:35:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[getChargeAMt]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'CREATE FUNCTION [dbo].[getChargeAMt]
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
' 
END

GO
/****** Object:  UserDefinedFunction [dbo].[getDecalCount]    Script Date: 03/06/2020 1:35:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[getDecalCount]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'CREATE FUNCTION [dbo].[getDecalCount]
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
' 
END

GO
/****** Object:  UserDefinedFunction [dbo].[getFirstTransactionDate]    Script Date: 03/06/2020 1:35:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[getFirstTransactionDate]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'Create FUNCTION [dbo].[getFirstTransactionDate]
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
' 
END

GO
/****** Object:  UserDefinedFunction [dbo].[getIdentityTheftCount]    Script Date: 03/06/2020 1:35:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[getIdentityTheftCount]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'CREATE FUNCTION [dbo].[getIdentityTheftCount]
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
' 
END

GO
/****** Object:  UserDefinedFunction [dbo].[getLastPurchase]    Script Date: 03/06/2020 1:35:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[getLastPurchase]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'CREATE FUNCTION [dbo].[getLastPurchase]
	(
		@ID			BIGINT
	)
	RETURNS		VARCHAR (MAX)
AS
BEGIN
	  DECLARE @ReturnValue VARCHAR (MAX),@AOID BIGINT
	  
	  SET @AOID=(SELECT TOP 1 OrderID FROm tbl_AgentOrder WHERE IsCompleted=1 AND AccountID=@ID ORDER By EndDate DESC )
	  
	  IF (@AOID!='''')
	  BEGIN
			 SET @ReturnValue=(SELECT P.Package FROM tbl_AgentOrderDetails AOD INNER JOIN tbl_Package P ON AOD.PackageID=P.PackageID WHERE AOID=@AOID)
	  END
	  ElSE
	  BEGIN
			SET @ReturnValue='''';
	  END

	 
	 
	  RETURN @ReturnValue
	
END
' 
END

GO
/****** Object:  UserDefinedFunction [dbo].[getNetDeal]    Script Date: 03/06/2020 1:35:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[getNetDeal]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'CREATE FUNCTION [dbo].[getNetDeal]
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
' 
END

GO
/****** Object:  UserDefinedFunction [dbo].[getPaidAmount]    Script Date: 03/06/2020 1:35:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[getPaidAmount]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'CREATE FUNCTION [dbo].[getPaidAmount]
	(
		@AOID			BIGINT
	)
	RETURNS		VARCHAR (MAX)
AS
BEGIN
	  DECLARE @ReturnValue VARCHAR (MAX),@PaidAmount FLoat,@RefundAmount Float

	  SET @PaidAmount=ISNULL((SELECT SUM(ChargeAmt)  FROM tbl_OrderTransactions WHERE AOID=@AOID AND (TransType =1 OR TransType =6 ) AND TransactionID IS NOT NULL AND TransactionID !=''0''  ),0);

	  SET @RefundAmount=ISNULL((SELECT SUM(ChargeAmt)  FROM tbl_OrderTransactions WHERE AOID=@AOID AND (TransType =2 OR TransType =3) AND TransactionID IS NOT NULL AND TransactionID !=''0'' ),0)
	
	  SELECT  @ReturnValue = @PaidAmount+@RefundAmount;
	
	  RETURN @ReturnValue
	
END
' 
END

GO
/****** Object:  UserDefinedFunction [dbo].[getPaymentCount]    Script Date: 03/06/2020 1:35:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[getPaymentCount]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'CREATE FUNCTION [dbo].[getPaymentCount]
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
' 
END

GO
/****** Object:  UserDefinedFunction [dbo].[getPaymentFrequency]    Script Date: 03/06/2020 1:35:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[getPaymentFrequency]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'CREATE FUNCTION [dbo].[getPaymentFrequency]
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

	      
	       SET   @ReturnValue =''Monthly'';
	  END
	  ELSE
	  BEGIN

	  SET @ReturnValue=''Once'';
	  END
	   
	 
	
	  RETURN @ReturnValue
	
END
' 
END

GO
/****** Object:  UserDefinedFunction [dbo].[getRefundVoidmMount]    Script Date: 03/06/2020 1:35:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[getRefundVoidmMount]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'CREATE FUNCTION [dbo].[getRefundVoidmMount]
	(
		@AOID			BIGINT
	)
	RETURNS		VARCHAR (MAX)
AS
BEGIN
	  DECLARE @ReturnValue VARCHAR (MAX)
	
	  SELECT  @ReturnValue = ISNULL((SELECT Top 1 ChargeAmt  FROM tbl_OrderTransactions WHERE AOID=@AOID AND ISNULL(TransType,0) IN(2,3)ORDER by ChargeDate desc) ,''0'')
	
	  RETURN @ReturnValue
	
END
' 
END

GO
/****** Object:  UserDefinedFunction [dbo].[getTestTotal]    Script Date: 03/06/2020 1:35:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[getTestTotal]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'CREATE FUNCTION [dbo].[getTestTotal]
	(
		@AOID			BIGINT
	)
	RETURNS		VARCHAR (MAX)
AS
BEGIN
	  DECLARE @ReturnValue VARCHAR (MAX)
	
	  SELECT  @ReturnValue = (SELECT SUM(ChargeAmt)  FROM tbl_OrderTransactions WHERE AOID=@AOID AND (TransactionID!=''0'' OR TransactionID IS  NULL))
	
	  RETURN @ReturnValue
	
END
' 
END

GO
/****** Object:  UserDefinedFunction [dbo].[getTransactionTotal]    Script Date: 03/06/2020 1:35:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[getTransactionTotal]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'CREATE FUNCTION [dbo].[getTransactionTotal]
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
' 
END

GO
/****** Object:  UserDefinedFunction [dbo].[getTransType]    Script Date: 03/06/2020 1:35:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[getTransType]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'CREATE FUNCTION [dbo].[getTransType]
	(
		@AOID			BIGINT
	)
	RETURNS		VARCHAR (MAX)
AS
BEGIN
	  DECLARE @ReturnValue VARCHAR (MAX),@TransType INT
	  
	  SET @TransType=(SELECT TOP 1 TransType FROM tbl_OrderTransactions WHERE AOID=@AOID AND TransactionID !='''' ORDER BY ChargeDate DESC )
	  
	
	  SELECT  @ReturnValue = CASE WHEN @TransType=1 THEN ''Charge'' WHEN @TransType=2 THEN ''Refund'' WHEN @TransType=3 THEN ''Void''
	                         WHEN @TransType=4 THEN ''Authorization'' WHEN @TransType=5 THEN ''Paused'' WHEN @TransType=6 THEN ''Full Pay''
	                         WHEN @TransType=0 THEN ''Check'' ELSE '''' END 
	
	  RETURN @ReturnValue
	
END
' 
END

GO
/****** Object:  UserDefinedFunction [dbo].[SPLIT]    Script Date: 03/06/2020 1:35:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SPLIT]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'CREATE FUNCTION [dbo].[SPLIT] (

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

set @separator='',''

SET @Counter = 0

IF SUBSTRING(@str_in,LEN(@str_in),1) <> @separator 

SET @str_in = @str_in + @separator

SET @Occurrences = (DATALENGTH(REPLACE(@str_in,@separator,@separator+''#'')) - DATALENGTH(@str_in))/ DATALENGTH(@separator)

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
' 
END

GO
/****** Object:  Table [dbo].[Bill1]    Script Date: 03/06/2020 1:35:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Bill1]') AND type in (N'U'))
BEGIN
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Ingredient]    Script Date: 03/06/2020 1:35:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Ingredient]') AND type in (N'U'))
BEGIN
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
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Invoice1]    Script Date: 03/06/2020 1:35:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Invoice1]') AND type in (N'U'))
BEGIN
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
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Item1]    Script Date: 03/06/2020 1:35:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Item1]') AND type in (N'U'))
BEGIN
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MyOrder]    Script Date: 03/06/2020 1:35:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[MyOrder]') AND type in (N'U'))
BEGIN
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[OBill]    Script Date: 03/06/2020 1:35:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OBill]') AND type in (N'U'))
BEGIN
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[QBill]    Script Date: 03/06/2020 1:35:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[QBill]') AND type in (N'U'))
BEGIN
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Recipes]    Script Date: 03/06/2020 1:35:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Recipes]') AND type in (N'U'))
BEGIN
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
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Recipes1]    Script Date: 03/06/2020 1:35:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Recipes1]') AND type in (N'U'))
BEGIN
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
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[RecipesDet]    Script Date: 03/06/2020 1:35:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[RecipesDet]') AND type in (N'U'))
BEGIN
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[RecipesDet1]    Script Date: 03/06/2020 1:35:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[RecipesDet1]') AND type in (N'U'))
BEGIN
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[syNavigationNodes]    Script Date: 03/06/2020 1:35:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[syNavigationNodes]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[syNavigationNodes](
	[NodeID] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[DisplayIndex] [int] NOT NULL,
	[ResourceId] [int] NOT NULL,
	[ParentId] [int] NULL,
	[IsPopupWindow] [bit] NULL,
 CONSTRAINT [PK_syNavigationNodes] PRIMARY KEY CLUSTERED 
(
	[NodeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[syResources]    Script Date: 03/06/2020 1:35:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[syResources]') AND type in (N'U'))
BEGIN
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[syResourceTypes]    Script Date: 03/06/2020 1:35:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[syResourceTypes]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[syResourceTypes](
	[ResourceTypeId] [int] NOT NULL,
	[ResourceType] [varchar](500) NULL,
 CONSTRAINT [PK_syResourceTypes] PRIMARY KEY CLUSTERED 
(
	[ResourceTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[syRoleResources]    Script Date: 03/06/2020 1:35:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[syRoleResources]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[syRoleResources](
	[RoleResourceId] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[RoleId] [int] NOT NULL,
	[ResourceId] [int] NOT NULL,
 CONSTRAINT [PK_syRoleResources] PRIMARY KEY CLUSTERED 
(
	[RoleResourceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[syRoles]    Script Date: 03/06/2020 1:35:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[syRoles]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[syRoles](
	[RoleId] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[RoleCode] [varchar](50) NOT NULL,
	[RoleDescription] [varchar](500) NOT NULL,
	[RoleStatus] [bit] NOT NULL,
 CONSTRAINT [PK_syRoles] PRIMARY KEY CLUSTERED 
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[syRolesResourcesLevels]    Script Date: 03/06/2020 1:35:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[syRolesResourcesLevels]') AND type in (N'U'))
BEGIN
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[syUsersRoles]    Script Date: 03/06/2020 1:35:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[syUsersRoles]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[syUsersRoles](
	[UserRoleId] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[UserId] [int] NOT NULL,
	[RoleId] [int] NULL,
 CONSTRAINT [PK_syUsersRoles] PRIMARY KEY CLUSTERED 
(
	[UserRoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[tbl_BankMaster]    Script Date: 03/06/2020 1:35:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_BankMaster]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tbl_BankMaster](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Bank] [nvarchar](50) NOT NULL,
	[Details] [nvarchar](50) NULL,
 CONSTRAINT [PK_BankMaster] PRIMARY KEY CLUSTERED 
(
	[Bank] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[tbl_Bill]    Script Date: 03/06/2020 1:35:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_Bill]') AND type in (N'U'))
BEGIN
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[tbl_CallHistory]    Script Date: 03/06/2020 1:35:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_CallHistory]') AND type in (N'U'))
BEGIN
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[tbl_Category]    Script Date: 03/06/2020 1:35:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_Category]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tbl_Category](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CatName] [varchar](100) NOT NULL,
	[GST] [decimal](18, 2) NULL,
	[Type] [int] NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[CatName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_Chattter]    Script Date: 03/06/2020 1:35:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_Chattter]') AND type in (N'U'))
BEGIN
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_ChatViewedBy]    Script Date: 03/06/2020 1:35:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_ChatViewedBy]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tbl_ChatViewedBy](
	[CVID] [bigint] IDENTITY(1,1) NOT NULL,
	[CID] [bigint] NULL,
	[ViewedById] [int] NULL,
	[ViewedDate] [datetime] NULL,
 CONSTRAINT [PK_tbl_ChatViewedBy] PRIMARY KEY CLUSTERED 
(
	[CVID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[tbl_Client]    Script Date: 03/06/2020 1:35:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_Client]') AND type in (N'U'))
BEGIN
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_Cust1]    Script Date: 03/06/2020 1:35:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_Cust1]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tbl_Cust1](
	[cust_id] [int] IDENTITY(1,1) NOT NULL,
	[mono] [nvarchar](50) NOT NULL,
	[consumer] [nvarchar](max) NULL,
	[bv] [nvarchar](max) NULL,
	[sanction] [nvarchar](max) NULL,
	[avgunit] [nvarchar](max) NULL,
	[load] [nvarchar](max) NULL,
	[totalpay] [nvarchar](max) NULL,
	[paymode] [nvarchar](max) NULL,
	[paydetail] [nvarchar](max) NULL,
	[custremark] [nvarchar](max) NULL,
 CONSTRAINT [PK_tbl_Cust1] PRIMARY KEY CLUSTERED 
(
	[mono] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[tbl_CustAccount]    Script Date: 03/06/2020 1:35:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_CustAccount]') AND type in (N'U'))
BEGIN
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[tbl_Customer]    Script Date: 03/06/2020 1:35:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_Customer]') AND type in (N'U'))
BEGIN
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_EMails]    Script Date: 03/06/2020 1:35:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_EMails]') AND type in (N'U'))
BEGIN
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_EmailTemplates]    Script Date: 03/06/2020 1:35:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_EmailTemplates]') AND type in (N'U'))
BEGIN
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_EmpAccount]    Script Date: 03/06/2020 1:35:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_EmpAccount]') AND type in (N'U'))
BEGIN
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[tbl_Employee]    Script Date: 03/06/2020 1:35:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_Employee]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tbl_Employee](
	[EmpId] [int] IDENTITY(1,1) NOT NULL,
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_Enquiry1]    Script Date: 03/06/2020 1:35:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_Enquiry1]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tbl_Enquiry1](
	[enquiry_id] [int] IDENTITY(1,1) NOT NULL,
	[custtype] [nvarchar](max) NULL,
	[fullname] [nvarchar](max) NULL,
	[mobno] [nvarchar](50) NOT NULL,
	[email] [nvarchar](max) NULL,
	[address] [nvarchar](max) NULL,
	[intedate] [nvarchar](max) NULL,
	[reabuy] [nvarchar](max) NULL,
	[user_id] [int] NULL,
 CONSTRAINT [PK_tbl_Enquiry1] PRIMARY KEY CLUSTERED 
(
	[mobno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[tbl_Expenses]    Script Date: 03/06/2020 1:35:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_Expenses]') AND type in (N'U'))
BEGIN
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_follow1]    Script Date: 03/06/2020 1:35:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_follow1]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tbl_follow1](
	[call_id] [int] IDENTITY(1,1) NOT NULL,
	[calldatetime] [nvarchar](50) NULL,
	[action] [nvarchar](max) NULL,
	[purpose] [nvarchar](max) NULL,
	[mono] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_tbl_follow1] PRIMARY KEY CLUSTERED 
(
	[mono] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[tbl_FromAddress]    Script Date: 03/06/2020 1:35:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_FromAddress]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tbl_FromAddress](
	[FromID] [int] IDENTITY(1,1) NOT NULL,
	[FromEmailAddress] [varchar](500) NULL,
	[FromName] [varchar](500) NULL,
 CONSTRAINT [PK_tbl_FromAddress] PRIMARY KEY CLUSTERED 
(
	[FromID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_Invoice]    Script Date: 03/06/2020 1:35:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_Invoice]') AND type in (N'U'))
BEGIN
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_Item]    Script Date: 03/06/2020 1:35:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_Item]') AND type in (N'U'))
BEGIN
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_Notes]    Script Date: 03/06/2020 1:35:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_Notes]') AND type in (N'U'))
BEGIN
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[tbl_Order]    Script Date: 03/06/2020 1:35:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_Order]') AND type in (N'U'))
BEGIN
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_Purchase]    Script Date: 03/06/2020 1:35:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_Purchase]') AND type in (N'U'))
BEGIN
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
END
GO
/****** Object:  Table [dbo].[tbl_Quotation]    Script Date: 03/06/2020 1:35:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_Quotation]') AND type in (N'U'))
BEGIN
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_SuppAccount]    Script Date: 03/06/2020 1:35:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_SuppAccount]') AND type in (N'U'))
BEGIN
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
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_Supplier]    Script Date: 03/06/2020 1:35:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_Supplier]') AND type in (N'U'))
BEGIN
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_Transaction]    Script Date: 03/06/2020 1:35:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_Transaction]') AND type in (N'U'))
BEGIN
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[tbl_user]    Script Date: 03/06/2020 1:35:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_user]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tbl_user](
	[user_id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](max) NULL,
	[email] [nvarchar](max) NULL,
	[designation] [nvarchar](max) NULL,
	[address] [nvarchar](max) NULL,
	[pass] [nvarchar](max) NULL,
	[mobno] [nvarchar](50) NULL,
 CONSTRAINT [PK_tbl_user] PRIMARY KEY CLUSTERED 
(
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[tblLogin]    Script Date: 03/06/2020 1:35:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblLogin]') AND type in (N'U'))
BEGIN
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblLoginHistory]    Script Date: 03/06/2020 1:35:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblLoginHistory]') AND type in (N'U'))
BEGIN
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblMessage]    Script Date: 03/06/2020 1:35:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblMessage]') AND type in (N'U'))
BEGIN
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblPagesLoginHistory]    Script Date: 03/06/2020 1:35:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblPagesLoginHistory]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblPagesLoginHistory](
	[PHID] [bigint] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[LHID] [bigint] NULL,
	[PageName] [varchar](100) NULL,
	[PageInDateTime] [datetime] NULL,
	[PageOutDateTime] [datetime] NULL,
 CONSTRAINT [PK_tblPagesLoginHistory] PRIMARY KEY CLUSTERED 
(
	[PHID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_Bill] ON 

GO
INSERT [dbo].[tbl_Bill] ([BillId], [InvoiceId], [ItemId], [ItemQty], [ItemSaleAmt], [Vat], [Rate], [Discount], [Model], [Size], [GST], [Disc], [TaxAmt]) VALUES (1, 1, 108, CAST(1.00 AS Decimal(18, 2)), CAST(5.10 AS Decimal(18, 2)), CAST(0.77 AS Decimal(18, 2)), CAST(4.32 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, NULL, CAST(18.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(4.32 AS Decimal(18, 2)))
GO
INSERT [dbo].[tbl_Bill] ([BillId], [InvoiceId], [ItemId], [ItemQty], [ItemSaleAmt], [Vat], [Rate], [Discount], [Model], [Size], [GST], [Disc], [TaxAmt]) VALUES (2, 1, 18, CAST(1.00 AS Decimal(18, 2)), CAST(200.01 AS Decimal(18, 2)), CAST(30.51 AS Decimal(18, 2)), CAST(169.50 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, NULL, CAST(18.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(169.50 AS Decimal(18, 2)))
GO
INSERT [dbo].[tbl_Bill] ([BillId], [InvoiceId], [ItemId], [ItemQty], [ItemSaleAmt], [Vat], [Rate], [Discount], [Model], [Size], [GST], [Disc], [TaxAmt]) VALUES (3, 2, 565, CAST(1.00 AS Decimal(18, 2)), CAST(191.16 AS Decimal(18, 2)), CAST(29.16 AS Decimal(18, 2)), CAST(162.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, NULL, CAST(18.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(162.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[tbl_Bill] ([BillId], [InvoiceId], [ItemId], [ItemQty], [ItemSaleAmt], [Vat], [Rate], [Discount], [Model], [Size], [GST], [Disc], [TaxAmt]) VALUES (4, 2, 294, CAST(1.00 AS Decimal(18, 2)), CAST(389.40 AS Decimal(18, 2)), CAST(59.40 AS Decimal(18, 2)), CAST(330.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, NULL, CAST(18.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(330.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[tbl_Bill] ([BillId], [InvoiceId], [ItemId], [ItemQty], [ItemSaleAmt], [Vat], [Rate], [Discount], [Model], [Size], [GST], [Disc], [TaxAmt]) VALUES (5, 2, 560, CAST(1.00 AS Decimal(18, 2)), CAST(2568.86 AS Decimal(18, 2)), CAST(391.86 AS Decimal(18, 2)), CAST(2177.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, NULL, CAST(18.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(2177.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[tbl_Bill] ([BillId], [InvoiceId], [ItemId], [ItemQty], [ItemSaleAmt], [Vat], [Rate], [Discount], [Model], [Size], [GST], [Disc], [TaxAmt]) VALUES (6, 3, 167, CAST(1.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), CAST(15.25 AS Decimal(18, 2)), CAST(84.75 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, NULL, CAST(18.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(84.75 AS Decimal(18, 2)))
GO
INSERT [dbo].[tbl_Bill] ([BillId], [InvoiceId], [ItemId], [ItemQty], [ItemSaleAmt], [Vat], [Rate], [Discount], [Model], [Size], [GST], [Disc], [TaxAmt]) VALUES (7, 3, 108, CAST(1.00 AS Decimal(18, 2)), CAST(5.10 AS Decimal(18, 2)), CAST(0.77 AS Decimal(18, 2)), CAST(4.32 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, NULL, CAST(18.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(4.32 AS Decimal(18, 2)))
GO
INSERT [dbo].[tbl_Bill] ([BillId], [InvoiceId], [ItemId], [ItemQty], [ItemSaleAmt], [Vat], [Rate], [Discount], [Model], [Size], [GST], [Disc], [TaxAmt]) VALUES (8, 4, 100, CAST(1.00 AS Decimal(18, 2)), CAST(1.18 AS Decimal(18, 2)), CAST(0.18 AS Decimal(18, 2)), CAST(1.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, NULL, CAST(18.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(1.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[tbl_Bill] ([BillId], [InvoiceId], [ItemId], [ItemQty], [ItemSaleAmt], [Vat], [Rate], [Discount], [Model], [Size], [GST], [Disc], [TaxAmt]) VALUES (9, 4, 167, CAST(12.00 AS Decimal(18, 2)), CAST(1200.06 AS Decimal(18, 2)), CAST(183.06 AS Decimal(18, 2)), CAST(84.75 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, NULL, CAST(18.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(84.75 AS Decimal(18, 2)))
GO
INSERT [dbo].[tbl_Bill] ([BillId], [InvoiceId], [ItemId], [ItemQty], [ItemSaleAmt], [Vat], [Rate], [Discount], [Model], [Size], [GST], [Disc], [TaxAmt]) VALUES (10, 5, 1, CAST(1.00 AS Decimal(18, 2)), CAST(11.80 AS Decimal(18, 2)), CAST(1.80 AS Decimal(18, 2)), CAST(10.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, NULL, CAST(18.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(10.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[tbl_Bill] ([BillId], [InvoiceId], [ItemId], [ItemQty], [ItemSaleAmt], [Vat], [Rate], [Discount], [Model], [Size], [GST], [Disc], [TaxAmt]) VALUES (11, 6, 2, CAST(1.00 AS Decimal(18, 2)), CAST(29.50 AS Decimal(18, 2)), CAST(4.50 AS Decimal(18, 2)), CAST(25.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, NULL, CAST(18.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(25.00 AS Decimal(18, 2)))
GO
SET IDENTITY_INSERT [dbo].[tbl_Bill] OFF
GO
INSERT [dbo].[tbl_Client] ([ClientId], [ClientName], [Address], [Mobile], [Email], [Details], [Date], [Status], [GST], [PAN]) VALUES (1, N'Bharat Traders', N'Near Bus stand, Yavtmal - 44033', N'8600873002', N'bharat@gmail.com', NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime), 1, N'AASD33333', N'BNLP33333')
GO
SET IDENTITY_INSERT [dbo].[tbl_CustAccount] ON 

GO
INSERT [dbo].[tbl_CustAccount] ([AccountId], [CustId], [Invoiceid], [Debit], [Credit], [Balance], [Date], [Note]) VALUES (1, 1, 1, CAST(205.11 AS Decimal(18, 2)), CAST(205.11 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(N'2019-04-01 22:43:16.447' AS DateTime), NULL)
GO
INSERT [dbo].[tbl_CustAccount] ([AccountId], [CustId], [Invoiceid], [Debit], [Credit], [Balance], [Date], [Note]) VALUES (2, 1, 2, CAST(3149.42 AS Decimal(18, 2)), CAST(1000.00 AS Decimal(18, 2)), CAST(2149.42 AS Decimal(18, 2)), CAST(N'2019-04-01 22:48:01.963' AS DateTime), NULL)
GO
INSERT [dbo].[tbl_CustAccount] ([AccountId], [CustId], [Invoiceid], [Debit], [Credit], [Balance], [Date], [Note]) VALUES (5, 1, 3, CAST(0.00 AS Decimal(18, 2)), CAST(500.00 AS Decimal(18, 2)), NULL, CAST(N'2019-04-01 22:55:36.277' AS DateTime), NULL)
GO
INSERT [dbo].[tbl_CustAccount] ([AccountId], [CustId], [Invoiceid], [Debit], [Credit], [Balance], [Date], [Note]) VALUES (7, 1, 4, CAST(1201.24 AS Decimal(18, 2)), CAST(1201.24 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(N'2019-04-28 13:20:57.760' AS DateTime), NULL)
GO
INSERT [dbo].[tbl_CustAccount] ([AccountId], [CustId], [Invoiceid], [Debit], [Credit], [Balance], [Date], [Note]) VALUES (8, 1, 5, CAST(11.80 AS Decimal(18, 2)), CAST(11.80 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(N'2019-04-28 15:57:06.757' AS DateTime), NULL)
GO
INSERT [dbo].[tbl_CustAccount] ([AccountId], [CustId], [Invoiceid], [Debit], [Credit], [Balance], [Date], [Note]) VALUES (9, 2, 6, CAST(29.50 AS Decimal(18, 2)), CAST(29.50 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(N'2019-06-19 11:12:43.857' AS DateTime), NULL)
GO
SET IDENTITY_INSERT [dbo].[tbl_CustAccount] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_Customer] ON 

GO
INSERT [dbo].[tbl_Customer] ([CustId], [CustName], [Address], [Mobile], [Email], [Details], [Date], [Status], [GST], [PAN]) VALUES (1, N'Dharvik Traders', N'Nerpinglai', N'8600873002', NULL, NULL, CAST(N'2019-04-01 22:43:15.823' AS DateTime), 1, N'FGTG6776', NULL)
GO
INSERT [dbo].[tbl_Customer] ([CustId], [CustName], [Address], [Mobile], [Email], [Details], [Date], [Status], [GST], [PAN]) VALUES (2, N'Mrunal Meshram', N'Nagpur', N'8668429189', NULL, NULL, CAST(N'2019-06-19 11:12:43.030' AS DateTime), 1, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[tbl_Customer] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_Employee] ON 

GO
INSERT [dbo].[tbl_Employee] ([EmpId], [EmpName], [Address], [Mobile], [Email], [Details], [Status], [Date]) VALUES (1, N'Sachin Mahore', NULL, N'8600873002', N'sachinmahore@gmail.com', NULL, 1, CAST(N'2019-04-01 22:50:33.807' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[tbl_Employee] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_Enquiry1] ON 

GO
INSERT [dbo].[tbl_Enquiry1] ([enquiry_id], [custtype], [fullname], [mobno], [email], [address], [intedate], [reabuy], [user_id]) VALUES (2, N'Individual', N'samarth', N'8888517243', N'h.r.dankhade@gmail.com', N'h.r.dankhade@gmail.com', N'3/9/2019', N'ASSNCASJ', 7)
GO
SET IDENTITY_INSERT [dbo].[tbl_Enquiry1] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_Invoice] ON 

GO
INSERT [dbo].[tbl_Invoice] ([CustId], [Amount], [Discount], [TotalAmt], [InvoiceDate], [Vat], [Time], [PayMode], [Paid], [Note], [Advance], [Point], [Person], [InvoiceId], [SGST], [CGST], [IGST], [AutoInvoiceID]) VALUES (1, CAST(173.82 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(205.11 AS Decimal(18, 2)), CAST(N'2019-04-01 00:00:00.000' AS DateTime), CAST(31.29 AS Decimal(18, 2)), N'10:43 PM', N'Cash', N'Paid', NULL, CAST(205.11 AS Decimal(18, 2)), CAST(2.05 AS Decimal(18, 2)), N'Cash', NULL, CAST(15.65 AS Decimal(18, 2)), CAST(15.65 AS Decimal(18, 2)), CAST(31.29 AS Decimal(18, 2)), 1)
GO
INSERT [dbo].[tbl_Invoice] ([CustId], [Amount], [Discount], [TotalAmt], [InvoiceDate], [Vat], [Time], [PayMode], [Paid], [Note], [Advance], [Point], [Person], [InvoiceId], [SGST], [CGST], [IGST], [AutoInvoiceID]) VALUES (1, CAST(2669.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(3149.42 AS Decimal(18, 2)), CAST(N'2019-04-01 00:00:00.000' AS DateTime), CAST(480.42 AS Decimal(18, 2)), N'10:48 PM', N'Cash', N'Paid', NULL, CAST(1000.00 AS Decimal(18, 2)), CAST(31.49 AS Decimal(18, 2)), N'Cash', NULL, CAST(240.21 AS Decimal(18, 2)), CAST(240.21 AS Decimal(18, 2)), CAST(480.42 AS Decimal(18, 2)), 2)
GO
INSERT [dbo].[tbl_Invoice] ([CustId], [Amount], [Discount], [TotalAmt], [InvoiceDate], [Vat], [Time], [PayMode], [Paid], [Note], [Advance], [Point], [Person], [InvoiceId], [SGST], [CGST], [IGST], [AutoInvoiceID]) VALUES (1, CAST(89.07 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(105.10 AS Decimal(18, 2)), CAST(N'2019-04-26 00:00:00.000' AS DateTime), CAST(16.03 AS Decimal(18, 2)), N'6:27 PM', N'Cash', N'Paid', NULL, CAST(105.10 AS Decimal(18, 2)), CAST(1.05 AS Decimal(18, 2)), N'Cash', NULL, CAST(8.02 AS Decimal(18, 2)), CAST(8.02 AS Decimal(18, 2)), CAST(16.03 AS Decimal(18, 2)), 3)
GO
INSERT [dbo].[tbl_Invoice] ([CustId], [Amount], [Discount], [TotalAmt], [InvoiceDate], [Vat], [Time], [PayMode], [Paid], [Note], [Advance], [Point], [Person], [InvoiceId], [SGST], [CGST], [IGST], [AutoInvoiceID]) VALUES (1, CAST(1018.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(1201.24 AS Decimal(18, 2)), CAST(N'2019-04-28 00:00:00.000' AS DateTime), CAST(183.24 AS Decimal(18, 2)), N'1:20 PM', N'Cash', N'Paid', NULL, CAST(1201.24 AS Decimal(18, 2)), CAST(12.01 AS Decimal(18, 2)), N'Cash', NULL, CAST(91.62 AS Decimal(18, 2)), CAST(91.62 AS Decimal(18, 2)), CAST(183.24 AS Decimal(18, 2)), 4)
GO
INSERT [dbo].[tbl_Invoice] ([CustId], [Amount], [Discount], [TotalAmt], [InvoiceDate], [Vat], [Time], [PayMode], [Paid], [Note], [Advance], [Point], [Person], [InvoiceId], [SGST], [CGST], [IGST], [AutoInvoiceID]) VALUES (1, CAST(10.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(11.80 AS Decimal(18, 2)), CAST(N'2019-04-28 00:00:00.000' AS DateTime), CAST(1.80 AS Decimal(18, 2)), N'3:57 PM', N'Cash', N'Paid', NULL, CAST(11.80 AS Decimal(18, 2)), CAST(0.11 AS Decimal(18, 2)), N'Cash', NULL, CAST(0.90 AS Decimal(18, 2)), CAST(0.90 AS Decimal(18, 2)), CAST(1.80 AS Decimal(18, 2)), 5)
GO
INSERT [dbo].[tbl_Invoice] ([CustId], [Amount], [Discount], [TotalAmt], [InvoiceDate], [Vat], [Time], [PayMode], [Paid], [Note], [Advance], [Point], [Person], [InvoiceId], [SGST], [CGST], [IGST], [AutoInvoiceID]) VALUES (2, CAST(25.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(29.50 AS Decimal(18, 2)), CAST(N'2019-06-19 00:00:00.000' AS DateTime), CAST(4.50 AS Decimal(18, 2)), N'11:12 AM', N'Cash', N'Paid', NULL, CAST(29.50 AS Decimal(18, 2)), CAST(0.29 AS Decimal(18, 2)), N'Cash', NULL, CAST(2.25 AS Decimal(18, 2)), CAST(2.25 AS Decimal(18, 2)), CAST(4.50 AS Decimal(18, 2)), 6)
GO
SET IDENTITY_INSERT [dbo].[tbl_Invoice] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_Item] ON 

GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (1, N'0', CAST(0.00 AS Decimal(18, 2)), CAST(1.00 AS Decimal(18, 2)), 1, CAST(1.00 AS Decimal(18, 2)), N'01/01/2018', N'01/01/2018', CAST(1.00 AS Decimal(18, 2)), N'01/01/2018', N'01/01/2018', N'0', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (6, N'Jeans', CAST(500.00 AS Decimal(18, 2)), CAST(600.00 AS Decimal(18, 2)), 2, CAST(0.00 AS Decimal(18, 2)), N'Pcs', NULL, NULL, N'10', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (100, N'UPVC UNION 1/2"', CAST(0.00 AS Decimal(18, 2)), CAST(1.00 AS Decimal(18, 2)), 4, CAST(0.00 AS Decimal(18, 2)), N'PCS', N'', CAST(18.00 AS Decimal(18, 2)), N'100', N'39174000', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (1, N'Lux Soap 100gm', CAST(8.80 AS Decimal(18, 2)), CAST(10.00 AS Decimal(18, 2)), 1, CAST(0.00 AS Decimal(18, 2)), N'Pcs', N'lux soap', CAST(18.00 AS Decimal(18, 2)), N'101', N'GG55', NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (2, N'Lux Soap 200gm', CAST(18.90 AS Decimal(18, 2)), CAST(25.00 AS Decimal(18, 2)), 3, CAST(0.00 AS Decimal(18, 2)), N'Pcs', NULL, CAST(18.00 AS Decimal(18, 2)), N'102', N'GG55', NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (3, N'Rin 100gm', CAST(12.00 AS Decimal(18, 2)), CAST(14.00 AS Decimal(18, 2)), 3, CAST(0.00 AS Decimal(18, 2)), N'Pcs', N'na', CAST(18.00 AS Decimal(18, 2)), N'103', N'GG55', NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (104, N'UPVC UNION 1.1/2"', CAST(0.00 AS Decimal(18, 2)), CAST(1.00 AS Decimal(18, 2)), 4, CAST(0.00 AS Decimal(18, 2)), N'PCS', N'', CAST(18.00 AS Decimal(18, 2)), N'104', N'39174000', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (5, N'Vim 50gm', CAST(4.00 AS Decimal(18, 2)), CAST(5.00 AS Decimal(18, 2)), 2, CAST(0.00 AS Decimal(18, 2)), N'Pcs', NULL, CAST(5.00 AS Decimal(18, 2)), N'105', N'GG55', NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (106, N'UPVC END CAP 1/2"', CAST(1.90 AS Decimal(18, 2)), CAST(2.50 AS Decimal(18, 2)), 4, CAST(650.00 AS Decimal(18, 2)), N'PCS', N'', CAST(18.00 AS Decimal(18, 2)), N'106', N'39174000', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (107, N'UPVC END CAP 3/4"', CAST(2.60 AS Decimal(18, 2)), CAST(3.39 AS Decimal(18, 2)), 4, CAST(355.00 AS Decimal(18, 2)), N'PCS', N'', CAST(18.00 AS Decimal(18, 2)), N'107', N'39174000', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (108, N'UPVC END CAP 1"', CAST(3.25 AS Decimal(18, 2)), CAST(4.32 AS Decimal(18, 2)), 4, CAST(450.00 AS Decimal(18, 2)), N'PCS', N'', CAST(18.00 AS Decimal(18, 2)), N'108', N'39174000', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (109, N'UPVC END CAP 1.1/4"', CAST(0.00 AS Decimal(18, 2)), CAST(1.00 AS Decimal(18, 2)), 4, CAST(0.00 AS Decimal(18, 2)), N'PCS', N'', CAST(18.00 AS Decimal(18, 2)), N'109', N'39174000', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (11, N'BALL VALVE UPVC 1.1/4"', CAST(65.70 AS Decimal(18, 2)), CAST(76.00 AS Decimal(18, 2)), 4, CAST(20.00 AS Decimal(18, 2)), N'PCS', N'', CAST(18.00 AS Decimal(18, 2)), N'11', N'3917.00', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (110, N'UPVC ENDCAP 1.1/2"', CAST(0.00 AS Decimal(18, 2)), CAST(1.00 AS Decimal(18, 2)), 4, CAST(0.00 AS Decimal(18, 2)), N'PCS', N'', CAST(18.00 AS Decimal(18, 2)), N'110', N'39174000', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (111, N'UPVC END CAP 1/2"', CAST(0.00 AS Decimal(18, 2)), CAST(1.00 AS Decimal(18, 2)), 4, CAST(0.00 AS Decimal(18, 2)), N'PCS', N'', CAST(18.00 AS Decimal(18, 2)), N'111', N'39174000', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (112, N'UPVC END CAP 2"', CAST(0.00 AS Decimal(18, 2)), CAST(1.00 AS Decimal(18, 2)), 4, CAST(0.00 AS Decimal(18, 2)), N'PCS', N'', CAST(18.00 AS Decimal(18, 2)), N'112', N'39174000', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (113, N'UPVC COUPLING 1/2"', CAST(2.30 AS Decimal(18, 2)), CAST(3.00 AS Decimal(18, 2)), 4, CAST(1000.00 AS Decimal(18, 2)), N'PCS', NULL, CAST(18.00 AS Decimal(18, 2)), N'113', N'39174000', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (114, N'UPVC REDUCING BUSH 3/4"*1/2"', CAST(2.35 AS Decimal(18, 2)), CAST(1.85 AS Decimal(18, 2)), 4, CAST(650.00 AS Decimal(18, 2)), N'PCS', NULL, CAST(18.00 AS Decimal(18, 2)), N'114', N'39174000', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (115, N'UPVC REDUCING BUSH 1"*3/4"', CAST(2.36 AS Decimal(18, 2)), CAST(3.00 AS Decimal(18, 2)), 4, CAST(450.00 AS Decimal(18, 2)), N'PCS', N'', CAST(18.00 AS Decimal(18, 2)), N'115', N'39174000', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (116, N'UPVC REDUCING BUSH 1"*1/2"', CAST(3.25 AS Decimal(18, 2)), CAST(4.10 AS Decimal(18, 2)), 4, CAST(400.00 AS Decimal(18, 2)), N'PCS', N'', CAST(18.00 AS Decimal(18, 2)), N'116', N'39174000', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (117, N'UPVC REDUCING BUSH 1.1/4"*1"', CAST(0.00 AS Decimal(18, 2)), CAST(1.00 AS Decimal(18, 2)), 4, CAST(0.00 AS Decimal(18, 2)), N'PCS', N'', CAST(18.00 AS Decimal(18, 2)), N'117', N'39174000', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (118, N'UPVC REDUCING BUSH 1.1/2"*1"', CAST(0.00 AS Decimal(18, 2)), CAST(1.00 AS Decimal(18, 2)), 4, CAST(0.00 AS Decimal(18, 2)), N'PCS', N'', CAST(18.00 AS Decimal(18, 2)), N'118', N'39174000', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (119, N'UPVC REDUCER TEE 1"*1/2"', CAST(10.23 AS Decimal(18, 2)), CAST(13.13 AS Decimal(18, 2)), 4, CAST(68.00 AS Decimal(18, 2)), N'PCS', N'', CAST(18.00 AS Decimal(18, 2)), N'119', N'39174000', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (12, N'BALL VALVE UPVC 1.1/2"', CAST(83.70 AS Decimal(18, 2)), CAST(96.00 AS Decimal(18, 2)), 4, CAST(30.00 AS Decimal(18, 2)), N'PCS', N'', CAST(18.00 AS Decimal(18, 2)), N'12', N'3917.00', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (120, N'UPVC REDUCER TEE 1"*3/4"', CAST(10.38 AS Decimal(18, 2)), CAST(13.75 AS Decimal(18, 2)), 4, CAST(100.00 AS Decimal(18, 2)), N'PCS', N'', CAST(18.00 AS Decimal(18, 2)), N'120', N'39174000', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (121, N'UPVC REDUCER TEE 3/4"*1/2"', CAST(0.00 AS Decimal(18, 2)), CAST(1.00 AS Decimal(18, 2)), 4, CAST(0.00 AS Decimal(18, 2)), N'PCS', N'', CAST(18.00 AS Decimal(18, 2)), N'121', N'39174000', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (122, N'UPVC REDUCER TEE 1.1/2"*1/2"', CAST(0.00 AS Decimal(18, 2)), CAST(1.00 AS Decimal(18, 2)), 4, CAST(0.00 AS Decimal(18, 2)), N'PCS', N'', CAST(18.00 AS Decimal(18, 2)), N'122', N'39174000', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (123, N'UPVC REDUCER TEE 1.1/2"*1"', CAST(22.46 AS Decimal(18, 2)), CAST(28.56 AS Decimal(18, 2)), 4, CAST(36.00 AS Decimal(18, 2)), N'PCS', N'', CAST(18.00 AS Decimal(18, 2)), N'123', N'39174000', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (124, N'UPVC RED ELBOW 1" *3/4''"', CAST(0.00 AS Decimal(18, 2)), CAST(1.00 AS Decimal(18, 2)), 4, CAST(0.00 AS Decimal(18, 2)), N'PCS', N'', CAST(18.00 AS Decimal(18, 2)), N'124', N'39174000', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (125, N'UPVC RED ELBOW 1" *1/2"', CAST(0.00 AS Decimal(18, 2)), CAST(1.00 AS Decimal(18, 2)), 4, CAST(0.00 AS Decimal(18, 2)), N'PCS', N'', CAST(18.00 AS Decimal(18, 2)), N'125', N'39174000', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (126, N'UPVC RED ELBOW 3/4''"*1/2"', CAST(0.00 AS Decimal(18, 2)), CAST(1.00 AS Decimal(18, 2)), 4, CAST(0.00 AS Decimal(18, 2)), N'PCS', N'', CAST(18.00 AS Decimal(18, 2)), N'126', N'39174000', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (127, N'UPVC COUPLING 3/4"', CAST(3.59 AS Decimal(18, 2)), CAST(4.23 AS Decimal(18, 2)), 4, CAST(992.00 AS Decimal(18, 2)), N'PCS', N'', CAST(18.00 AS Decimal(18, 2)), N'127', N'39174000', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (128, N'UPVC COUPLING 1"', CAST(5.50 AS Decimal(18, 2)), CAST(6.78 AS Decimal(18, 2)), 4, CAST(840.00 AS Decimal(18, 2)), N'PCS', N'
', CAST(18.00 AS Decimal(18, 2)), N'128', N'39174000', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (129, N'UPVC COUPLING 1.1/4"', CAST(8.05 AS Decimal(18, 2)), CAST(10.51 AS Decimal(18, 2)), 4, CAST(32.00 AS Decimal(18, 2)), N'PCS', N'', CAST(18.00 AS Decimal(18, 2)), N'129', N'39174000', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (13, N'BALL VALVE UPVC  1/2" LONG HANDLE', CAST(23.62 AS Decimal(18, 2)), CAST(33.05 AS Decimal(18, 2)), 4, CAST(10.00 AS Decimal(18, 2)), N'PCS', N'', CAST(18.00 AS Decimal(18, 2)), N'13', N'3917.00', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (130, N'UPVC COUPLING 1.1/2"', CAST(10.48 AS Decimal(18, 2)), CAST(13.22 AS Decimal(18, 2)), 4, CAST(40.00 AS Decimal(18, 2)), N'PCS', N'', CAST(18.00 AS Decimal(18, 2)), N'130', N'39174000', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (131, N'UPVC COUPLING 2"', CAST(15.68 AS Decimal(18, 2)), CAST(19.61 AS Decimal(18, 2)), 4, CAST(60.00 AS Decimal(18, 2)), N'PCS', N'', CAST(18.00 AS Decimal(18, 2)), N'131', N'39174000', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (132, N'BALL VALVE UPVC 2"', CAST(126.00 AS Decimal(18, 2)), CAST(155.00 AS Decimal(18, 2)), 4, CAST(9.00 AS Decimal(18, 2)), N'PCS', N'', CAST(18.00 AS Decimal(18, 2)), N'132', N'3917.00', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (133, N'PTMT PILLAR COKC', CAST(58.00 AS Decimal(18, 2)), CAST(68.00 AS Decimal(18, 2)), 5, CAST(-2.00 AS Decimal(18, 2)), N'PCS', N'', CAST(18.00 AS Decimal(18, 2)), N'133', N'3924', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (134, N'HOSE COLLAR 1/2"', CAST(1.65 AS Decimal(18, 2)), CAST(2.10 AS Decimal(18, 2)), 14, CAST(300.00 AS Decimal(18, 2)), N'PCS', N'', CAST(18.00 AS Decimal(18, 2)), N'134', N'39174000', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (135, N'HOSE COLLAR 3/4"', CAST(2.02 AS Decimal(18, 2)), CAST(2.60 AS Decimal(18, 2)), 14, CAST(0.00 AS Decimal(18, 2)), N'PCS', N'', CAST(18.00 AS Decimal(18, 2)), N'135', N'39174000', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (136, N'HOSE COLLAR 1"', CAST(2.76 AS Decimal(18, 2)), CAST(2.97 AS Decimal(18, 2)), 14, CAST(200.00 AS Decimal(18, 2)), N'PCS', N'', CAST(18.00 AS Decimal(18, 2)), N'136', N'39174000', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (137, N'CPVC ELBOW 3/4"', CAST(4.91 AS Decimal(18, 2)), CAST(6.45 AS Decimal(18, 2)), 7, CAST(100.00 AS Decimal(18, 2)), N'PCS', N'', CAST(18.00 AS Decimal(18, 2)), N'137', N'39174000', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (138, N'KIZEN SDR 11  3/4" CPVC PIPE 3MTR', CAST(96.10 AS Decimal(18, 2)), CAST(128.82 AS Decimal(18, 2)), 7, CAST(140.00 AS Decimal(18, 2)), N'PCS', N'', CAST(18.00 AS Decimal(18, 2)), N'138', N'39174000', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(128.82 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (139, N'CPVC ELBOW 1"', CAST(9.15 AS Decimal(18, 2)), CAST(12.02 AS Decimal(18, 2)), 7, CAST(20.00 AS Decimal(18, 2)), N'PCS', N'', CAST(18.00 AS Decimal(18, 2)), N'139', N'39174000', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (14, N'BALL VALVE UPVC 3/4" LONG HANDLE', CAST(28.35 AS Decimal(18, 2)), CAST(40.68 AS Decimal(18, 2)), 4, CAST(0.00 AS Decimal(18, 2)), N'PCS', N'', CAST(18.00 AS Decimal(18, 2)), N'14', N'3917.00', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (140, N'CPVC TEE 3/4"', CAST(7.12 AS Decimal(18, 2)), CAST(9.43 AS Decimal(18, 2)), 7, CAST(40.00 AS Decimal(18, 2)), N'PCS', N'', CAST(18.00 AS Decimal(18, 2)), N'140', N'39174000', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (141, N'CPVC TEE 1"', CAST(12.88 AS Decimal(18, 2)), CAST(17.06 AS Decimal(18, 2)), 7, CAST(200.00 AS Decimal(18, 2)), N'PCS', N'', CAST(18.00 AS Decimal(18, 2)), N'141', N'39174000', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (142, N'CPVC MTA 3/4"', CAST(4.75 AS Decimal(18, 2)), CAST(6.57 AS Decimal(18, 2)), 7, CAST(400.00 AS Decimal(18, 2)), N'PCS', N'', CAST(18.00 AS Decimal(18, 2)), N'142', N'39174000', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (143, N'CPVC UNION 1"', CAST(30.50 AS Decimal(18, 2)), CAST(42.00 AS Decimal(18, 2)), 7, CAST(40.00 AS Decimal(18, 2)), N'PCS', N'', CAST(18.00 AS Decimal(18, 2)), N'143', N'39174000', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (144, N'CPVC REDUCING BUSH 1"*3/4"', CAST(4.06 AS Decimal(18, 2)), CAST(5.60 AS Decimal(18, 2)), 7, CAST(600.00 AS Decimal(18, 2)), N'PCS', N'', CAST(18.00 AS Decimal(18, 2)), N'144', N'39174000', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (145, N'CPVC REDUCER TEE 1*3/4', CAST(11.86 AS Decimal(18, 2)), CAST(16.35 AS Decimal(18, 2)), 7, CAST(100.00 AS Decimal(18, 2)), N'PCS', N'', CAST(18.00 AS Decimal(18, 2)), N'145', N'39174000', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (146, N'CPVC REDUCER ELBOW 1" *3/4"', CAST(10.84 AS Decimal(18, 2)), CAST(15.00 AS Decimal(18, 2)), 7, CAST(40.00 AS Decimal(18, 2)), N'PCS', N'', CAST(18.00 AS Decimal(18, 2)), N'146', N'39174000', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (147, N'CPVC REDUCER MTA 3/4*1/2', CAST(5.08 AS Decimal(18, 2)), CAST(7.00 AS Decimal(18, 2)), 7, CAST(100.00 AS Decimal(18, 2)), N'PCS', N'', CAST(18.00 AS Decimal(18, 2)), N'147', N'39174000', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (148, N'CPVC BRASS RED MTA 3/4*1/2', CAST(27.79 AS Decimal(18, 2)), CAST(35.70 AS Decimal(18, 2)), 7, CAST(300.00 AS Decimal(18, 2)), N'PCS', N'', CAST(18.00 AS Decimal(18, 2)), N'148', N'39174000', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (149, N'CPVC BRASS RED FTA 3/4" * 1/2"', CAST(19.32 AS Decimal(18, 2)), CAST(26.62 AS Decimal(18, 2)), 7, CAST(200.00 AS Decimal(18, 2)), N'PCS', N'', CAST(18.00 AS Decimal(18, 2)), N'149', N'39174000', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (15, N'BALL VALVE UPVC 1" LONG HANDLE', CAST(37.80 AS Decimal(18, 2)), CAST(44.00 AS Decimal(18, 2)), 4, CAST(0.00 AS Decimal(18, 2)), N'PCS', N'', CAST(18.00 AS Decimal(18, 2)), N'15', N'3917.00', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (150, N'SERVICE SEDDLE "2*1/2"', CAST(18.51 AS Decimal(18, 2)), CAST(19.98 AS Decimal(18, 2)), 14, CAST(25.00 AS Decimal(18, 2)), N'PCS', NULL, CAST(18.00 AS Decimal(18, 2)), N'150', N'39174000', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (151, N'SERVICE SEDDLE 4"*1/2"', CAST(22.03 AS Decimal(18, 2)), CAST(32.20 AS Decimal(18, 2)), 14, CAST(40.00 AS Decimal(18, 2)), N'PCS', NULL, CAST(18.00 AS Decimal(18, 2)), N'151', N'39174000', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (152, N'SERVICE SEDDLE 2.1/2*1/2', CAST(22.03 AS Decimal(18, 2)), CAST(23.80 AS Decimal(18, 2)), 14, CAST(0.00 AS Decimal(18, 2)), N'PCS', N'', CAST(18.00 AS Decimal(18, 2)), N'152', N'39174000', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (153, N'CPVC BRASS RED ELBOW 1* 1/2', CAST(27.12 AS Decimal(18, 2)), CAST(37.70 AS Decimal(18, 2)), 7, CAST(50.00 AS Decimal(18, 2)), N'PCS', N'', CAST(18.00 AS Decimal(18, 2)), N'153', N'39174000', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (154, N'PROTECTOR PATCH 75*75', CAST(22.50 AS Decimal(18, 2)), CAST(24.30 AS Decimal(18, 2)), 3, CAST(80.00 AS Decimal(18, 2)), N'PCS', N'', CAST(18.00 AS Decimal(18, 2)), N'154', N'39199090', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (155, N'105 PVC SOLUTION 25ML PVC CANS', CAST(6.45 AS Decimal(18, 2)), CAST(7.96 AS Decimal(18, 2)), 3, CAST(1200.00 AS Decimal(18, 2)), N'PCS', NULL, CAST(18.00 AS Decimal(18, 2)), N'155', N'35061000', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (156, N'305 CPVC SOLUTION N300(118ML)', CAST(69.70 AS Decimal(18, 2)), CAST(80.51 AS Decimal(18, 2)), 3, CAST(0.00 AS Decimal(18, 2)), N'PCS', N'', CAST(18.00 AS Decimal(18, 2)), N'156', N'35061000', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (157, N'FLUSH COCK', CAST(145.80 AS Decimal(18, 2)), CAST(155.00 AS Decimal(18, 2)), 15, CAST(40.00 AS Decimal(18, 2)), N'PCS', N'', CAST(18.00 AS Decimal(18, 2)), N'157', N'8481', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (158, N'CHAPLA KONDA 1.1/2"', CAST(480.00 AS Decimal(18, 2)), CAST(500.00 AS Decimal(18, 2)), 16, CAST(0.00 AS Decimal(18, 2)), N'PKT', N'', CAST(18.00 AS Decimal(18, 2)), N'158', N'', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (159, N'WOOD BREKET BH151', CAST(70.00 AS Decimal(18, 2)), CAST(80.00 AS Decimal(18, 2)), 9, CAST(0.00 AS Decimal(18, 2)), N'PCS', NULL, CAST(12.00 AS Decimal(18, 2)), N'159', N'4421', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (16, N'R.O COCK', CAST(7.00 AS Decimal(18, 2)), CAST(11.00 AS Decimal(18, 2)), 5, CAST(180.00 AS Decimal(18, 2)), N'PCS', N'', CAST(18.00 AS Decimal(18, 2)), N'16', N'3917', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (160, N'WOOD BREKET BH302', CAST(70.00 AS Decimal(18, 2)), CAST(80.00 AS Decimal(18, 2)), 9, CAST(10.00 AS Decimal(18, 2)), N'PCS', NULL, CAST(12.00 AS Decimal(18, 2)), N'160', N'4421', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (161, N'WOOD BREKET BH362', CAST(70.00 AS Decimal(18, 2)), CAST(80.00 AS Decimal(18, 2)), 9, CAST(5.00 AS Decimal(18, 2)), N'PCS', NULL, CAST(12.00 AS Decimal(18, 2)), N'161', N'4421', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (162, N'WOOD BREKET TK362', CAST(70.00 AS Decimal(18, 2)), CAST(80.00 AS Decimal(18, 2)), 9, CAST(12.00 AS Decimal(18, 2)), N'PCS', NULL, CAST(12.00 AS Decimal(18, 2)), N'162', N'4421', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (163, N'WOOD BREKET TK151', CAST(70.00 AS Decimal(18, 2)), CAST(80.00 AS Decimal(18, 2)), 9, CAST(20.00 AS Decimal(18, 2)), N'PCS', N'', CAST(12.00 AS Decimal(18, 2)), N'163', N'4421', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (164, N'WOOD BREKET TK1619', CAST(70.00 AS Decimal(18, 2)), CAST(80.00 AS Decimal(18, 2)), 9, CAST(20.00 AS Decimal(18, 2)), N'PCS', N'', CAST(12.00 AS Decimal(18, 2)), N'164', N'4421', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (165, N'SS CURTAIN BRAKETS 139 COPER', CAST(70.00 AS Decimal(18, 2)), CAST(80.00 AS Decimal(18, 2)), 9, CAST(0.00 AS Decimal(18, 2)), N'PCS', N'', CAST(18.00 AS Decimal(18, 2)), N'165', N'4421', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (166, N'KIZEN SCH 40 1/2" UPVC PIPE 3MTR', CAST(57.72 AS Decimal(18, 2)), CAST(67.80 AS Decimal(18, 2)), 4, CAST(125.00 AS Decimal(18, 2)), N'PCS', N'', CAST(18.00 AS Decimal(18, 2)), N'166', N'39174000', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (167, N'KIZEN SCH 40 3/4" UPVC PIPE 3MTR', CAST(73.74 AS Decimal(18, 2)), CAST(84.75 AS Decimal(18, 2)), 4, CAST(0.00 AS Decimal(18, 2)), N'PCS', N'', CAST(18.00 AS Decimal(18, 2)), N'167', N'39174000', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (168, N'KIZEN SCH 40 1" UPVC PIPE 3MTR', CAST(99.56 AS Decimal(18, 2)), CAST(122.88 AS Decimal(18, 2)), 4, CAST(0.00 AS Decimal(18, 2)), N'PCS', NULL, CAST(18.00 AS Decimal(18, 2)), N'168', N'39174000', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (169, N'SCH 40 1/2" UPVC PLUMBING PIPE 3MTR', CAST(41.78 AS Decimal(18, 2)), CAST(55.08 AS Decimal(18, 2)), 4, CAST(0.00 AS Decimal(18, 2)), N'PCS', N'', CAST(18.00 AS Decimal(18, 2)), N'169', N'39174000', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (17, N'KIZEN SCH 40 1/2" UPVC PIPE 6MTR', CAST(115.45 AS Decimal(18, 2)), CAST(128.82 AS Decimal(18, 2)), 4, CAST(0.00 AS Decimal(18, 2)), N'PCS', N'', CAST(18.00 AS Decimal(18, 2)), N'17', N'39174000', N'RAJENDRA INDUSTRIES', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (170, N'SCH 40 3/4" UPVC PLUMBING PIPE 3MTR', CAST(50.94 AS Decimal(18, 2)), CAST(63.56 AS Decimal(18, 2)), 4, CAST(0.00 AS Decimal(18, 2)), N'PCS', N'', CAST(18.00 AS Decimal(18, 2)), N'170', N'39174000', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (171, N'SCH 40 1" UPVC PLUMBING PIPE 3MTR', CAST(74.36 AS Decimal(18, 2)), CAST(108.48 AS Decimal(18, 2)), 4, CAST(0.00 AS Decimal(18, 2)), N'PCS', N'', CAST(18.00 AS Decimal(18, 2)), N'171', N'39174000', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (172, N'INSULATION TAPE', CAST(6.10 AS Decimal(18, 2)), CAST(6.60 AS Decimal(18, 2)), 3, CAST(0.00 AS Decimal(18, 2)), N'PCS', N'', CAST(18.00 AS Decimal(18, 2)), N'172', N'85469090', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (173, N'PVC BALL VALVE 1/2" PLAIN', CAST(14.08 AS Decimal(18, 2)), CAST(15.93 AS Decimal(18, 2)), 17, CAST(25.00 AS Decimal(18, 2)), N'PCS', N'', CAST(18.00 AS Decimal(18, 2)), N'173', N'3917', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (174, N'UPVC BRASS TEE MARCOS 1/2*3/4', CAST(18.61 AS Decimal(18, 2)), CAST(25.42 AS Decimal(18, 2)), 4, CAST(25.00 AS Decimal(18, 2)), N'PCS', NULL, CAST(18.00 AS Decimal(18, 2)), N'174', N'3917', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (175, N'UPVC BRASS ELBOW MARCOS 1/2*3/4', CAST(15.58 AS Decimal(18, 2)), CAST(19.81 AS Decimal(18, 2)), 4, CAST(299.00 AS Decimal(18, 2)), N'PCS', N'', CAST(18.00 AS Decimal(18, 2)), N'175', N'3917', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (176, N'UPVC BRASS MTA MARCOS 1*1/2"', CAST(25.20 AS Decimal(18, 2)), CAST(33.90 AS Decimal(18, 2)), 4, CAST(125.00 AS Decimal(18, 2)), N'PCS', NULL, CAST(18.00 AS Decimal(18, 2)), N'176', N'3917', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (177, N'UPVC BRASS ELBOW MARCOS 1/2"', CAST(12.95 AS Decimal(18, 2)), CAST(16.47 AS Decimal(18, 2)), 4, CAST(150.00 AS Decimal(18, 2)), N'PCS', N'', CAST(18.00 AS Decimal(18, 2)), N'177', N'3917', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (178, N'PVC BALL VALVE 3/4" PLAIN', CAST(16.38 AS Decimal(18, 2)), CAST(18.50 AS Decimal(18, 2)), 17, CAST(40.00 AS Decimal(18, 2)), N'PCS', NULL, CAST(18.00 AS Decimal(18, 2)), N'178', N'3917', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (179, N'PVC BALL VALVE 1" PLAIN', CAST(20.75 AS Decimal(18, 2)), CAST(22.41 AS Decimal(18, 2)), 17, CAST(70.00 AS Decimal(18, 2)), N'PCS', N'', CAST(18.00 AS Decimal(18, 2)), N'179', N'3917', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (18, N'KIZEN SCH 40 3/4" UPVC PIPE 6MTR', CAST(144.71 AS Decimal(18, 2)), CAST(169.50 AS Decimal(18, 2)), 4, CAST(0.00 AS Decimal(18, 2)), N'PCS', N'', CAST(18.00 AS Decimal(18, 2)), N'18', N'39174000', N'RAJENDRA INDUSTRIES', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (180, N'PVC BALL VALVE 3/4"  (THREADED)', CAST(16.38 AS Decimal(18, 2)), CAST(18.00 AS Decimal(18, 2)), 17, CAST(100.00 AS Decimal(18, 2)), N'PCS', N'', CAST(18.00 AS Decimal(18, 2)), N'180', N'3917', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (181, N'PVC BALL VALVE 1/2"  (THREADED)', CAST(14.08 AS Decimal(18, 2)), CAST(15.75 AS Decimal(18, 2)), 17, CAST(0.00 AS Decimal(18, 2)), N'PCS', N'', CAST(18.00 AS Decimal(18, 2)), N'181', N'3917', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (182, N'PVC BALL VALVE 1"  (THREADED)', CAST(19.63 AS Decimal(18, 2)), CAST(24.00 AS Decimal(18, 2)), 17, CAST(80.00 AS Decimal(18, 2)), N'PCS', N'', CAST(18.00 AS Decimal(18, 2)), N'182', N'3917', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (183, N'118ML CPVC SOLVENT', CAST(49.28 AS Decimal(18, 2)), CAST(55.00 AS Decimal(18, 2)), 3, CAST(0.00 AS Decimal(18, 2)), N'PCS', N'', CAST(18.00 AS Decimal(18, 2)), N'183', N'3506', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (184, N'50 ML CPVC SOLVENT', CAST(28.75 AS Decimal(18, 2)), CAST(31.05 AS Decimal(18, 2)), 3, CAST(30.00 AS Decimal(18, 2)), N'PCS', N'', CAST(18.00 AS Decimal(18, 2)), N'184', N'3506', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (185, N'UPVC BRASS TEE MARCOS 1 * 1/2"', CAST(19.36 AS Decimal(18, 2)), CAST(20.90 AS Decimal(18, 2)), 4, CAST(430.00 AS Decimal(18, 2)), N'PCS', N'', CAST(18.00 AS Decimal(18, 2)), N'185', N'3917', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (186, N'UPVC BRASS ELBOW MARCOS 1*1/2', CAST(18.61 AS Decimal(18, 2)), CAST(24.39 AS Decimal(18, 2)), 4, CAST(60.00 AS Decimal(18, 2)), N'PCS', N'', CAST(18.00 AS Decimal(18, 2)), N'186', N'3917', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(29.66 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (187, N'UPVC BRASS ELBOW MARCOS 1*3/4', CAST(30.24 AS Decimal(18, 2)), CAST(44.45 AS Decimal(18, 2)), 4, CAST(144.00 AS Decimal(18, 2)), N'PCS', N'', CAST(18.00 AS Decimal(18, 2)), N'187', N'3917', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (188, N'UPVC BRASS MTA 1"', CAST(44.27 AS Decimal(18, 2)), CAST(59.32 AS Decimal(18, 2)), 4, CAST(373.00 AS Decimal(18, 2)), N'PCS', N'', CAST(18.00 AS Decimal(18, 2)), N'188', N'3917', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (189, N'UPVC BRASS TEE MARCOS 1/2"', CAST(15.04 AS Decimal(18, 2)), CAST(23.73 AS Decimal(18, 2)), 4, CAST(100.00 AS Decimal(18, 2)), N'PCS', N'', CAST(18.00 AS Decimal(18, 2)), N'189', N'3917', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (19, N'KIZEN SCH 40  1" UPVC PIPE 6MTR', CAST(211.31 AS Decimal(18, 2)), CAST(245.77 AS Decimal(18, 2)), 4, CAST(0.00 AS Decimal(18, 2)), N'PCS', N'', CAST(18.00 AS Decimal(18, 2)), N'19', N'39174000', N'RAJENDRA INDUSTRIES', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (190, N'UPVC BRASS MTA MARCOS 1/2"', CAST(15.92 AS Decimal(18, 2)), CAST(23.73 AS Decimal(18, 2)), 4, CAST(300.00 AS Decimal(18, 2)), N'PCS', N'', CAST(18.00 AS Decimal(18, 2)), N'190', N'3917', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (191, N'UPVC BRASS FTA MARCOS 3/4*1/2"', CAST(15.96 AS Decimal(18, 2)), CAST(25.42 AS Decimal(18, 2)), 4, CAST(430.00 AS Decimal(18, 2)), N'PCS', N'', CAST(18.00 AS Decimal(18, 2)), N'191', N'3917', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (192, N'KIZEN SCH 40 1.1/4" UPVC PIPE 3MTR', CAST(139.75 AS Decimal(18, 2)), CAST(177.95 AS Decimal(18, 2)), 4, CAST(30.00 AS Decimal(18, 2)), N'PCS', N'', CAST(18.00 AS Decimal(18, 2)), N'192', N'39174000', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (193, N'KIZEN SCH 40 1.1/2" UPVC PIPE 3MTR', CAST(166.01 AS Decimal(18, 2)), CAST(220.35 AS Decimal(18, 2)), 4, CAST(40.00 AS Decimal(18, 2)), N'PCS', N'', CAST(18.00 AS Decimal(18, 2)), N'193', N'39174000', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (194, N'UPVC TANK NIPPLE 1.1/2"', CAST(33.05 AS Decimal(18, 2)), CAST(40.25 AS Decimal(18, 2)), 4, CAST(36.00 AS Decimal(18, 2)), N'PCS', N'', CAST(18.00 AS Decimal(18, 2)), N'194', N'39174000', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (195, N'SERVICE SEDDLE 2.1/2*3/4', CAST(21.87 AS Decimal(18, 2)), CAST(27.54 AS Decimal(18, 2)), 14, CAST(0.00 AS Decimal(18, 2)), N'PCS', N'', CAST(18.00 AS Decimal(18, 2)), N'195', N'39174000', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (196, N'UPVC NAIL CLAMP 1/2"', CAST(1.48 AS Decimal(18, 2)), CAST(1.66 AS Decimal(18, 2)), 4, CAST(2994.00 AS Decimal(18, 2)), N'PCS', N'', CAST(18.00 AS Decimal(18, 2)), N'196', N'39174000', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (197, N'UPVC NAIL CLAMP 3/4"', CAST(2.68 AS Decimal(18, 2)), CAST(2.92 AS Decimal(18, 2)), 4, CAST(1000.00 AS Decimal(18, 2)), N'PCS', N'', CAST(18.00 AS Decimal(18, 2)), N'197', N'39174000', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (198, N'SS PIPE 3/4"', CAST(140.00 AS Decimal(18, 2)), CAST(150.00 AS Decimal(18, 2)), 12, CAST(20.00 AS Decimal(18, 2)), N'KG', NULL, CAST(18.00 AS Decimal(18, 2)), N'198', NULL, N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (280, N'PVC MTA 1"', CAST(3.55 AS Decimal(18, 2)), CAST(3.85 AS Decimal(18, 2)), 17, CAST(100.00 AS Decimal(18, 2)), N'PCS', N'', CAST(18.00 AS Decimal(18, 2)), N'280', N'3917', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (281, N'PVC END CAP 1/2"', CAST(1.14 AS Decimal(18, 2)), CAST(1.25 AS Decimal(18, 2)), 17, CAST(750.00 AS Decimal(18, 2)), N'PCS', N'', CAST(18.00 AS Decimal(18, 2)), N'281', N'3917', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (282, N'PVC COUPLER 1/2"', CAST(1.61 AS Decimal(18, 2)), CAST(1.73 AS Decimal(18, 2)), 17, CAST(400.00 AS Decimal(18, 2)), N'PCS', NULL, CAST(18.00 AS Decimal(18, 2)), N'282', N'3917', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (283, N'PVC COUPLER 3/4"', CAST(2.33 AS Decimal(18, 2)), CAST(2.51 AS Decimal(18, 2)), 17, CAST(250.00 AS Decimal(18, 2)), N'PCS', NULL, CAST(18.00 AS Decimal(18, 2)), N'283', N'3917', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (284, N'PVC COUPLER 1"', CAST(3.60 AS Decimal(18, 2)), CAST(3.90 AS Decimal(18, 2)), 17, CAST(75.00 AS Decimal(18, 2)), N'PCS', NULL, CAST(18.00 AS Decimal(18, 2)), N'284', N'3917', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (285, N'PVC ELBOW 1/2"', CAST(2.33 AS Decimal(18, 2)), CAST(2.51 AS Decimal(18, 2)), 17, CAST(-600.00 AS Decimal(18, 2)), N'PCS', N'', CAST(18.00 AS Decimal(18, 2)), N'285', N'3917', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (286, N'PVC ELBOW 3/4"', CAST(3.26 AS Decimal(18, 2)), CAST(3.47 AS Decimal(18, 2)), 17, CAST(500.00 AS Decimal(18, 2)), N'PCS', N'', CAST(18.00 AS Decimal(18, 2)), N'286', N'3917', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (287, N'PVC ELBOW 1"', CAST(4.85 AS Decimal(18, 2)), CAST(5.99 AS Decimal(18, 2)), 17, CAST(10.00 AS Decimal(18, 2)), N'PCS', N'', CAST(18.00 AS Decimal(18, 2)), N'287', N'3917', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (288, N'PVC TEE 3/4"', CAST(4.66 AS Decimal(18, 2)), CAST(5.03 AS Decimal(18, 2)), 17, CAST(270.00 AS Decimal(18, 2)), N'PCS', N'', CAST(18.00 AS Decimal(18, 2)), N'288', N'3917', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (289, N'PVC FTA 3/4"', CAST(2.33 AS Decimal(18, 2)), CAST(2.51 AS Decimal(18, 2)), 17, CAST(285.00 AS Decimal(18, 2)), N'PCS', N'', CAST(18.00 AS Decimal(18, 2)), N'289', N'3917', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (29, N'SS CURTAIN BRAKETS 385', CAST(70.00 AS Decimal(18, 2)), CAST(75.00 AS Decimal(18, 2)), 9, CAST(20.00 AS Decimal(18, 2)), N'PCS', N'', CAST(18.00 AS Decimal(18, 2)), N'29', N'8302', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (290, N'PVC MTA 1/2"', CAST(1.66 AS Decimal(18, 2)), CAST(1.74 AS Decimal(18, 2)), 17, CAST(150.00 AS Decimal(18, 2)), N'PCS', N'', CAST(18.00 AS Decimal(18, 2)), N'290', N'3917', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (291, N'PVC MTA 3/4"', CAST(2.16 AS Decimal(18, 2)), CAST(2.33 AS Decimal(18, 2)), 17, CAST(100.00 AS Decimal(18, 2)), N'PCS', N'', CAST(18.00 AS Decimal(18, 2)), N'291', N'3917', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (292, N'PVC END CAP 3/4"', CAST(1.28 AS Decimal(18, 2)), CAST(1.40 AS Decimal(18, 2)), 17, CAST(363.00 AS Decimal(18, 2)), N'PCS', N'', CAST(18.00 AS Decimal(18, 2)), N'292', N'3917', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (293, N'DREAM LIGHT BIB COCK', CAST(197.00 AS Decimal(18, 2)), CAST(226.00 AS Decimal(18, 2)), 8, CAST(11.00 AS Decimal(18, 2)), N'PCS', N'', CAST(18.00 AS Decimal(18, 2)), N'293', N'8481', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (294, N'DREAM LIGHT FLUSH COCK (EX.L)', CAST(300.00 AS Decimal(18, 2)), CAST(330.00 AS Decimal(18, 2)), 8, CAST(3.00 AS Decimal(18, 2)), N'PCS', N'', CAST(18.00 AS Decimal(18, 2)), N'294', N'8481', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (295, N'DREAM LIGHT CONCEALED COCK (EX.L)', CAST(250.00 AS Decimal(18, 2)), CAST(275.00 AS Decimal(18, 2)), 8, CAST(9.00 AS Decimal(18, 2)), N'PCS', N'', CAST(18.00 AS Decimal(18, 2)), N'295', N'8481', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (296, N'DREAM LIGHT SINK COCK', CAST(361.00 AS Decimal(18, 2)), CAST(400.00 AS Decimal(18, 2)), 8, CAST(10.00 AS Decimal(18, 2)), N'PCS', N'', CAST(18.00 AS Decimal(18, 2)), N'296', N'8481', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (297, N'DREAM LIGHT 2 IN 1 BIB COCK (NL)', CAST(320.00 AS Decimal(18, 2)), CAST(370.00 AS Decimal(18, 2)), 8, CAST(2.00 AS Decimal(18, 2)), N'PCS', N'', CAST(18.00 AS Decimal(18, 2)), N'297', N'8481', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (298, N'CORSA CONCEALED(EX.L)', CAST(250.00 AS Decimal(18, 2)), CAST(300.00 AS Decimal(18, 2)), 8, CAST(16.00 AS Decimal(18, 2)), N'PCS', N'', CAST(18.00 AS Decimal(18, 2)), N'298', N'8481', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (299, N'MESTRO CONCEALED (EX.L)', CAST(250.00 AS Decimal(18, 2)), CAST(300.00 AS Decimal(18, 2)), 8, CAST(10.00 AS Decimal(18, 2)), N'PCS', N'', CAST(18.00 AS Decimal(18, 2)), N'299', N'8481', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (3, N'75MM WHITE HAVY TRAP', CAST(21.00 AS Decimal(18, 2)), CAST(29.66 AS Decimal(18, 2)), 2, CAST(70.00 AS Decimal(18, 2)), N'PCS', N'', CAST(18.00 AS Decimal(18, 2)), N'3', N'3917', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (30, N'SS CURTAIN BRAKETS 385A', CAST(70.00 AS Decimal(18, 2)), CAST(75.00 AS Decimal(18, 2)), 9, CAST(10.00 AS Decimal(18, 2)), N'PCS', NULL, CAST(18.00 AS Decimal(18, 2)), N'30', N'8302', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (300, N'MIXER BEND', CAST(80.00 AS Decimal(18, 2)), CAST(88.00 AS Decimal(18, 2)), 8, CAST(3.00 AS Decimal(18, 2)), N'PCS', N'', CAST(18.00 AS Decimal(18, 2)), N'300', N'8481', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (301, N'FLUSH SPINDLE LONG', CAST(100.00 AS Decimal(18, 2)), CAST(110.00 AS Decimal(18, 2)), 8, CAST(10.00 AS Decimal(18, 2)), N'PCS', N'', CAST(18.00 AS Decimal(18, 2)), N'301', N'8481', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (302, N'FLUSH SPINDLE (L)', CAST(80.00 AS Decimal(18, 2)), CAST(88.00 AS Decimal(18, 2)), 8, CAST(10.00 AS Decimal(18, 2)), N'PCS', N'', CAST(18.00 AS Decimal(18, 2)), N'302', N'8481', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (303, N'SPINDLE CERAMIC', CAST(34.00 AS Decimal(18, 2)), CAST(40.00 AS Decimal(18, 2)), 8, CAST(12.00 AS Decimal(18, 2)), N'PCS', N'', CAST(18.00 AS Decimal(18, 2)), N'303', N'8481', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (304, N'METROPOLE FLUSH COCK', CAST(1550.00 AS Decimal(18, 2)), CAST(1627.00 AS Decimal(18, 2)), 8, CAST(5.00 AS Decimal(18, 2)), N'PCS', N'', CAST(18.00 AS Decimal(18, 2)), N'304', N'8481', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (305, N'C TYPE BALL VALVE 1.1/2"', CAST(113.00 AS Decimal(18, 2)), CAST(157.00 AS Decimal(18, 2)), 7, CAST(10.00 AS Decimal(18, 2)), N'PCS', N'', CAST(18.00 AS Decimal(18, 2)), N'305', N'8481', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (306, N'EASY SEAL HIGH SPEED RAPID 25HM BLUE', CAST(5.50 AS Decimal(18, 2)), CAST(6.00 AS Decimal(18, 2)), 3, CAST(0.00 AS Decimal(18, 2)), N'PCS', NULL, CAST(28.00 AS Decimal(18, 2)), N'306', N'32141000', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (307, N'EASY SEAL HIGH SPEED RAPID 50GM BLUE', CAST(11.00 AS Decimal(18, 2)), CAST(12.50 AS Decimal(18, 2)), 3, CAST(0.00 AS Decimal(18, 2)), N'PCS', NULL, CAST(28.00 AS Decimal(18, 2)), N'307', N'32141000', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (308, N'FLUSH COCK ZINK PLUG', CAST(180.60 AS Decimal(18, 2)), CAST(205.00 AS Decimal(18, 2)), 15, CAST(0.00 AS Decimal(18, 2)), N'PCS', NULL, CAST(18.00 AS Decimal(18, 2)), N'308', N'8481', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (309, N'UPVC PUSH TANK NIPPLE 1"', CAST(13.28 AS Decimal(18, 2)), CAST(18.30 AS Decimal(18, 2)), 4, CAST(98.00 AS Decimal(18, 2)), N'PCS', N'', CAST(18.00 AS Decimal(18, 2)), N'309', N'39174000', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (31, N'SS CURTAIN BRAKETS 380', CAST(70.00 AS Decimal(18, 2)), CAST(75.00 AS Decimal(18, 2)), 9, CAST(15.00 AS Decimal(18, 2)), N'PCS', N'', CAST(18.00 AS Decimal(18, 2)), N'31', N'8302', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (310, N'UPVC PUSH TANK NIPPLE 1/2"', CAST(10.56 AS Decimal(18, 2)), CAST(13.30 AS Decimal(18, 2)), 4, CAST(398.00 AS Decimal(18, 2)), N'PCS', N'', CAST(18.00 AS Decimal(18, 2)), N'310', N'39174000', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (311, N'SERVICE SEDDLE 3"*3/4"', CAST(24.23 AS Decimal(18, 2)), CAST(26.17 AS Decimal(18, 2)), 14, CAST(50.00 AS Decimal(18, 2)), N'PCS', NULL, CAST(18.00 AS Decimal(18, 2)), N'311', N'39174000', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (312, N'SERVICE SEDDLE 3"*1/2"', CAST(23.31 AS Decimal(18, 2)), CAST(32.20 AS Decimal(18, 2)), 14, CAST(0.00 AS Decimal(18, 2)), N'PCS', NULL, CAST(18.00 AS Decimal(18, 2)), N'312', N'39174000', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (313, N'CPVC BRASS REDUCER FTA 1*1/2', CAST(22.38 AS Decimal(18, 2)), CAST(31.33 AS Decimal(18, 2)), 7, CAST(100.00 AS Decimal(18, 2)), N'PCS', N'', CAST(18.00 AS Decimal(18, 2)), N'313', N'39174000', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (371, N'118 ML CPVC SOLVENT MARCOS', CAST(49.28 AS Decimal(18, 2)), CAST(53.22 AS Decimal(18, 2)), 3, CAST(0.00 AS Decimal(18, 2)), N'PCS', N'', CAST(18.00 AS Decimal(18, 2)), N'371', N'3506', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (372, N'UPVC MTA 1"', CAST(4.36 AS Decimal(18, 2)), CAST(6.35 AS Decimal(18, 2)), 4, CAST(450.00 AS Decimal(18, 2)), N'PCS', N'', CAST(18.00 AS Decimal(18, 2)), N'372', N'39174000', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (373, N'UPVC REDUCER COUPLER 3/4*1/2', CAST(3.42 AS Decimal(18, 2)), CAST(4.53 AS Decimal(18, 2)), 4, CAST(700.00 AS Decimal(18, 2)), N'PCS', N'', CAST(18.00 AS Decimal(18, 2)), N'373', N'39174000', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (374, N'UPVC REDUCER COUPLER 1*1/2', CAST(4.98 AS Decimal(18, 2)), CAST(6.78 AS Decimal(18, 2)), 4, CAST(1000.00 AS Decimal(18, 2)), N'PCS', N'', CAST(18.00 AS Decimal(18, 2)), N'374', N'39174000', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (375, N'UPVC REDUCER COUPLER 1*3/4', CAST(5.08 AS Decimal(18, 2)), CAST(6.78 AS Decimal(18, 2)), 4, CAST(500.00 AS Decimal(18, 2)), N'PCS', N'', CAST(18.00 AS Decimal(18, 2)), N'375', N'39174000', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (376, N'6MM LEVEL TUBE', CAST(80.08 AS Decimal(18, 2)), CAST(85.00 AS Decimal(18, 2)), 6, CAST(30.00 AS Decimal(18, 2)), N'KG', N'', CAST(18.00 AS Decimal(18, 2)), N'376', N'0', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (377, N'UPVC METAL CLAMP 3/4', CAST(1.90 AS Decimal(18, 2)), CAST(2.06 AS Decimal(18, 2)), 4, CAST(700.00 AS Decimal(18, 2)), N'PCS', N'', CAST(18.00 AS Decimal(18, 2)), N'377', N'0', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (378, N'UPVC METAL CLAMP 1/2"', CAST(1.79 AS Decimal(18, 2)), CAST(1.93 AS Decimal(18, 2)), 4, CAST(700.00 AS Decimal(18, 2)), N'PCS', N'', CAST(18.00 AS Decimal(18, 2)), N'378', N'0', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (379, N'UPVC METAL CLAMP 1"', CAST(2.18 AS Decimal(18, 2)), CAST(2.35 AS Decimal(18, 2)), 4, CAST(700.00 AS Decimal(18, 2)), N'PCS', N'', CAST(18.00 AS Decimal(18, 2)), N'379', N'0', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (38, N'SS CURTAIN BRAKETS 332-B3', CAST(145.00 AS Decimal(18, 2)), CAST(155.00 AS Decimal(18, 2)), 9, CAST(0.00 AS Decimal(18, 2)), N'PCS', N'', CAST(18.00 AS Decimal(18, 2)), N'38', N'8302', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (380, N'PVC ELBOW 75MM PN4 KIZEN', CAST(14.40 AS Decimal(18, 2)), CAST(20.76 AS Decimal(18, 2)), 17, CAST(0.00 AS Decimal(18, 2)), N'PCS', N'', CAST(18.00 AS Decimal(18, 2)), N'380', N'39174000', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (462, N'TRUNK CHHAPKA 1.5', CAST(50.00 AS Decimal(18, 2)), CAST(55.00 AS Decimal(18, 2)), 16, CAST(50.00 AS Decimal(18, 2)), N'PKT', NULL, CAST(18.00 AS Decimal(18, 2)), N'462', N'8302', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (463, N'CUTTING WHEELS 4" TCT BLADES', CAST(8.00 AS Decimal(18, 2)), CAST(8.50 AS Decimal(18, 2)), 10, CAST(0.00 AS Decimal(18, 2)), N'PCS', N'', CAST(18.00 AS Decimal(18, 2)), N'463', N'', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (464, N'10ML CPVC SOLVENT MARCOS', CAST(8.22 AS Decimal(18, 2)), CAST(11.44 AS Decimal(18, 2)), 3, CAST(0.00 AS Decimal(18, 2)), N'PCS', N'', CAST(18.00 AS Decimal(18, 2)), N'464', N'3506', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (465, N'105 PVC SOLUTION 10ML', CAST(4.30 AS Decimal(18, 2)), CAST(5.50 AS Decimal(18, 2)), 3, CAST(0.00 AS Decimal(18, 2)), N'PCS', N'', CAST(18.00 AS Decimal(18, 2)), N'465', N'35061000', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (466, N'CUBIX SINK COCK', CAST(840.00 AS Decimal(18, 2)), CAST(910.00 AS Decimal(18, 2)), 13, CAST(1.00 AS Decimal(18, 2)), N'PCS', N'', CAST(18.00 AS Decimal(18, 2)), N'466', N'8481', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (467, N'TOUCH SWAN NECK', CAST(624.00 AS Decimal(18, 2)), CAST(686.00 AS Decimal(18, 2)), 13, CAST(2.00 AS Decimal(18, 2)), N'PCS', N'', CAST(18.00 AS Decimal(18, 2)), N'467', N'8481', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (468, N'TOUCH SHORT BODY BIB COCK', CAST(302.00 AS Decimal(18, 2)), CAST(335.00 AS Decimal(18, 2)), 13, CAST(5.00 AS Decimal(18, 2)), N'PCS', N'', CAST(18.00 AS Decimal(18, 2)), N'468', N'8481', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (469, N'TOUCH TWO WAY BIB COCK', CAST(476.00 AS Decimal(18, 2)), CAST(525.00 AS Decimal(18, 2)), 13, CAST(2.00 AS Decimal(18, 2)), N'PCS', N'', CAST(18.00 AS Decimal(18, 2)), N'469', N'8481', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (47, N'PTMT SWAN NECK', CAST(135.00 AS Decimal(18, 2)), CAST(145.00 AS Decimal(18, 2)), 5, CAST(6.00 AS Decimal(18, 2)), N'PCS', NULL, CAST(18.00 AS Decimal(18, 2)), N'47', N'3924', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (470, N'TOUCH KNOB', CAST(75.00 AS Decimal(18, 2)), CAST(80.00 AS Decimal(18, 2)), 13, CAST(5.00 AS Decimal(18, 2)), N'PCS', N'', CAST(18.00 AS Decimal(18, 2)), N'470', N'8481', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (471, N'MAJESTIC SWAN NECK', CAST(552.00 AS Decimal(18, 2)), CAST(610.00 AS Decimal(18, 2)), 13, CAST(2.00 AS Decimal(18, 2)), N'PCS', N'', CAST(18.00 AS Decimal(18, 2)), N'471', N'8481', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (472, N'CRAZE SWAN NECK', CAST(552.00 AS Decimal(18, 2)), CAST(610.00 AS Decimal(18, 2)), 13, CAST(2.00 AS Decimal(18, 2)), N'PCS', N'', CAST(18.00 AS Decimal(18, 2)), N'472', N'8481', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (473, N'CRAZE BIB COCK TWO WAY', CAST(476.00 AS Decimal(18, 2)), CAST(525.00 AS Decimal(18, 2)), 13, CAST(2.00 AS Decimal(18, 2)), N'PCS', N'', CAST(18.00 AS Decimal(18, 2)), N'473', N'8481', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (474, N'ICON SWAN NECK', CAST(600.00 AS Decimal(18, 2)), CAST(660.00 AS Decimal(18, 2)), 13, CAST(2.00 AS Decimal(18, 2)), N'PCS', N'', CAST(18.00 AS Decimal(18, 2)), N'474', N'8481', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (475, N'WASHING MASCHINE TAP COUNTY', CAST(280.00 AS Decimal(18, 2)), CAST(310.00 AS Decimal(18, 2)), 13, CAST(6.00 AS Decimal(18, 2)), N'PCS', NULL, CAST(18.00 AS Decimal(18, 2)), N'475', N'8481', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (476, N'DELUXE BIB COCK TWO WAY', CAST(476.00 AS Decimal(18, 2)), CAST(525.00 AS Decimal(18, 2)), 13, CAST(1.00 AS Decimal(18, 2)), N'PCS', N'', CAST(18.00 AS Decimal(18, 2)), N'476', N'8481', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (477, N'FERRULE COCK HEAVY', CAST(180.00 AS Decimal(18, 2)), CAST(205.00 AS Decimal(18, 2)), 13, CAST(6.00 AS Decimal(18, 2)), N'PCS', N'', CAST(18.00 AS Decimal(18, 2)), N'477', N'8481', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (478, N'WASHING MASHINE OUTLET PIPE', CAST(36.00 AS Decimal(18, 2)), CAST(40.00 AS Decimal(18, 2)), 10, CAST(25.00 AS Decimal(18, 2)), N'PCS', N'', CAST(18.00 AS Decimal(18, 2)), N'478', N'3917', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (479, N'WATER CAN JUG TAP', CAST(120.00 AS Decimal(18, 2)), CAST(130.00 AS Decimal(18, 2)), 10, CAST(4.00 AS Decimal(18, 2)), N'PKT', NULL, CAST(18.00 AS Decimal(18, 2)), N'479', N'3917', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (48, N'HOOK', CAST(8.50 AS Decimal(18, 2)), CAST(10.00 AS Decimal(18, 2)), 8, CAST(100.00 AS Decimal(18, 2)), N'PCS', N'', CAST(18.00 AS Decimal(18, 2)), N'48', N'3924', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (480, N'SPRAY GUN', CAST(90.00 AS Decimal(18, 2)), CAST(110.00 AS Decimal(18, 2)), 10, CAST(0.00 AS Decimal(18, 2)), N'PCS', N'', CAST(18.00 AS Decimal(18, 2)), N'480', N'3917', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (481, N'PVC BATHROOM JALI', CAST(30.00 AS Decimal(18, 2)), CAST(36.00 AS Decimal(18, 2)), 10, CAST(10.00 AS Decimal(18, 2)), N'PKT', N'', CAST(18.00 AS Decimal(18, 2)), N'481', N'3917', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (482, N'WASHER', CAST(40.00 AS Decimal(18, 2)), CAST(45.00 AS Decimal(18, 2)), 10, CAST(6.00 AS Decimal(18, 2)), N'PKT', N'', CAST(18.00 AS Decimal(18, 2)), N'482', N'3917', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (483, N'9.5*6 SKREW', CAST(50.00 AS Decimal(18, 2)), CAST(55.00 AS Decimal(18, 2)), 16, CAST(88.00 AS Decimal(18, 2)), N'PKT', N'', CAST(18.00 AS Decimal(18, 2)), N'483', N'7318', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (484, N'SPINDLE(BRASS FASE)', CAST(27.00 AS Decimal(18, 2)), CAST(30.00 AS Decimal(18, 2)), 15, CAST(154.00 AS Decimal(18, 2)), N'PCS', N'', CAST(18.00 AS Decimal(18, 2)), N'484', N'8481', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (485, N'UNION 1/2"', CAST(25.00 AS Decimal(18, 2)), CAST(28.00 AS Decimal(18, 2)), 14, CAST(64.00 AS Decimal(18, 2)), N'PCS', N'', CAST(18.00 AS Decimal(18, 2)), N'485', N'3917', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (486, N'UNION PVC ROYAL', CAST(20.10 AS Decimal(18, 2)), CAST(22.00 AS Decimal(18, 2)), 14, CAST(93.00 AS Decimal(18, 2)), N'PCS', N'', CAST(18.00 AS Decimal(18, 2)), N'486', N'3917', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (487, N'SHOWER SET', CAST(60.00 AS Decimal(18, 2)), CAST(65.00 AS Decimal(18, 2)), 8, CAST(300.00 AS Decimal(18, 2)), N'PCS', N'', CAST(18.00 AS Decimal(18, 2)), N'487', N'8481', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (488, N'METAL TAPS LIGHT', CAST(30.00 AS Decimal(18, 2)), CAST(40.00 AS Decimal(18, 2)), 8, CAST(100.00 AS Decimal(18, 2)), N'PCS', N'', CAST(18.00 AS Decimal(18, 2)), N'488', N'8481', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (489, N'SS SHOWER TUBE', CAST(50.00 AS Decimal(18, 2)), CAST(55.00 AS Decimal(18, 2)), 8, CAST(65.00 AS Decimal(18, 2)), N'PCS', N'', CAST(18.00 AS Decimal(18, 2)), N'489', N'8481', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (49, N'SHOWER ARM 9" KALAM(HK-1602)', CAST(39.00 AS Decimal(18, 2)), CAST(39.00 AS Decimal(18, 2)), 8, CAST(0.00 AS Decimal(18, 2)), N'PCS', N'', CAST(18.00 AS Decimal(18, 2)), N'49', N'3924', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (490, N'BALL COCK BRASS', CAST(40.00 AS Decimal(18, 2)), CAST(50.00 AS Decimal(18, 2)), 8, CAST(98.00 AS Decimal(18, 2)), N'PCS', N'', CAST(18.00 AS Decimal(18, 2)), N'490', N'8481', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (491, N'WASHING MASHIN BIB COCK', CAST(100.00 AS Decimal(18, 2)), CAST(115.00 AS Decimal(18, 2)), 8, CAST(20.00 AS Decimal(18, 2)), N'PCS', N'', CAST(18.00 AS Decimal(18, 2)), N'491', N'8481', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (492, N'BOX LOCK', CAST(200.00 AS Decimal(18, 2)), CAST(225.00 AS Decimal(18, 2)), 16, CAST(17.00 AS Decimal(18, 2)), N'PCS', N'', CAST(18.00 AS Decimal(18, 2)), N'492', N'', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (493, N'SIDE LOCK', CAST(95.00 AS Decimal(18, 2)), CAST(120.00 AS Decimal(18, 2)), 16, CAST(10.00 AS Decimal(18, 2)), N'PCS', N'', CAST(18.00 AS Decimal(18, 2)), N'493', N'', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (494, N'PADLOCK 30MM', CAST(8.00 AS Decimal(18, 2)), CAST(10.00 AS Decimal(18, 2)), 16, CAST(100.00 AS Decimal(18, 2)), N'PCS', N'', CAST(18.00 AS Decimal(18, 2)), N'494', N'', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (495, N'PADLOCK 50MM', CAST(15.00 AS Decimal(18, 2)), CAST(20.00 AS Decimal(18, 2)), 16, CAST(80.00 AS Decimal(18, 2)), N'PCS', N'', CAST(18.00 AS Decimal(18, 2)), N'495', N'', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (496, N'PADLOCK 65MM', CAST(24.00 AS Decimal(18, 2)), CAST(30.00 AS Decimal(18, 2)), 16, CAST(20.00 AS Decimal(18, 2)), N'PCS', N'', CAST(18.00 AS Decimal(18, 2)), N'496', N'', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (497, N'CURTAIN BRAKET 25MM', CAST(22.00 AS Decimal(18, 2)), CAST(30.00 AS Decimal(18, 2)), 16, CAST(15.00 AS Decimal(18, 2)), N'PCS', N'', CAST(18.00 AS Decimal(18, 2)), N'497', N'', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (498, N'SS PIPE 1.5"', CAST(140.00 AS Decimal(18, 2)), CAST(155.00 AS Decimal(18, 2)), 14, CAST(113.20 AS Decimal(18, 2)), N'PCS', NULL, CAST(18.00 AS Decimal(18, 2)), N'498', N'7304', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (499, N'JJ ELBOW 63MM', CAST(4.15 AS Decimal(18, 2)), CAST(5.00 AS Decimal(18, 2)), 17, CAST(150.00 AS Decimal(18, 2)), N'PCS', N'', CAST(18.00 AS Decimal(18, 2)), N'499', N'3917', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (5, N'105 PVC SOLUTION 100ML PVC CANS', CAST(19.35 AS Decimal(18, 2)), CAST(24.15 AS Decimal(18, 2)), 3, CAST(0.00 AS Decimal(18, 2)), N'PCS', N'', CAST(18.00 AS Decimal(18, 2)), N'5', N'35061000', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(40.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (50, N'BIB COCK 5805', CAST(10.31 AS Decimal(18, 2)), CAST(11.30 AS Decimal(18, 2)), 5, CAST(150.00 AS Decimal(18, 2)), N'PCS', NULL, CAST(18.00 AS Decimal(18, 2)), N'50', N'84818020', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (500, N'JJ END CAP 50MM', CAST(1.75 AS Decimal(18, 2)), CAST(2.00 AS Decimal(18, 2)), 17, CAST(200.00 AS Decimal(18, 2)), N'PCS', N'', CAST(18.00 AS Decimal(18, 2)), N'500', N'3917', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (501, N'PP FOOT VALVE 3/4"', CAST(15.42 AS Decimal(18, 2)), CAST(17.65 AS Decimal(18, 2)), 17, CAST(110.00 AS Decimal(18, 2)), N'PCS', N'', CAST(18.00 AS Decimal(18, 2)), N'501', N'3917', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (502, N'NEOSEAL PIPE THREAD SEALNTS BLK 50GM', CAST(12.60 AS Decimal(18, 2)), CAST(15.72 AS Decimal(18, 2)), 3, CAST(80.00 AS Decimal(18, 2)), N'PCS', N'', CAST(18.00 AS Decimal(18, 2)), N'502', N'32141000', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (503, N'NEOSEAL PIPE THREAD SEALNTS WHITE 50GM', CAST(12.60 AS Decimal(18, 2)), CAST(15.72 AS Decimal(18, 2)), 3, CAST(80.00 AS Decimal(18, 2)), N'PCS', N'', CAST(18.00 AS Decimal(18, 2)), N'503', N'32141000', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (504, N'MASKING TAPE 24MM*20MTR', CAST(90.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), 3, CAST(18.00 AS Decimal(18, 2)), N'PCS', N'', CAST(18.00 AS Decimal(18, 2)), N'504', N'4811', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (505, N'HELTH FAUCET GUN', CAST(40.00 AS Decimal(18, 2)), CAST(45.00 AS Decimal(18, 2)), 15, CAST(170.00 AS Decimal(18, 2)), N'PCS', N'', CAST(18.00 AS Decimal(18, 2)), N'505', N'8481', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (506, N'PVC SINK COUPLING', CAST(10.00 AS Decimal(18, 2)), CAST(12.00 AS Decimal(18, 2)), 8, CAST(44.00 AS Decimal(18, 2)), N'PCS', N'', CAST(18.00 AS Decimal(18, 2)), N'506', N'3917', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (507, N'PVC BALL VALVE 2" PLAIN', CAST(60.65 AS Decimal(18, 2)), CAST(65.00 AS Decimal(18, 2)), 17, CAST(4.00 AS Decimal(18, 2)), N'PCS', N'', CAST(18.00 AS Decimal(18, 2)), N'507', N'3917', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (508, N'PROTECTOR DREEP TAPE', CAST(28.62 AS Decimal(18, 2)), CAST(30.90 AS Decimal(18, 2)), 3, CAST(240.00 AS Decimal(18, 2)), N'PCS', NULL, CAST(18.00 AS Decimal(18, 2)), N'508', N'3919', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (509, N'SS CURTAIN BRAKET 438 PINK', CAST(128.00 AS Decimal(18, 2)), CAST(135.00 AS Decimal(18, 2)), 9, CAST(10.00 AS Decimal(18, 2)), N'PCS', N'', CAST(18.00 AS Decimal(18, 2)), N'509', N'8302', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (51, N'BIB COCK 5807', CAST(11.65 AS Decimal(18, 2)), CAST(12.00 AS Decimal(18, 2)), 5, CAST(450.00 AS Decimal(18, 2)), N'PCS', N'', CAST(18.00 AS Decimal(18, 2)), N'51', N'84818020', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (510, N'SS CURTAIN BRAKET 349', CAST(137.00 AS Decimal(18, 2)), CAST(145.00 AS Decimal(18, 2)), 9, CAST(10.00 AS Decimal(18, 2)), N'PCS', N'', CAST(18.00 AS Decimal(18, 2)), N'510', N'8302', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (511, N'SS CURTAIN BRAKET 441C', CAST(70.00 AS Decimal(18, 2)), CAST(75.00 AS Decimal(18, 2)), 9, CAST(20.00 AS Decimal(18, 2)), N'PCS', N'', CAST(18.00 AS Decimal(18, 2)), N'511', N'8302', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (512, N'SS CURTAIN BRAKET 441E', CAST(70.00 AS Decimal(18, 2)), CAST(75.00 AS Decimal(18, 2)), 9, CAST(20.00 AS Decimal(18, 2)), N'PCS', N'', CAST(18.00 AS Decimal(18, 2)), N'512', N'8302', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (513, N'SS CURTAIN BRAKET TROFFY PINK', CAST(95.00 AS Decimal(18, 2)), CAST(104.00 AS Decimal(18, 2)), 9, CAST(0.00 AS Decimal(18, 2)), N'PCS', N'', CAST(18.00 AS Decimal(18, 2)), N'513', N'8302', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (514, N'SS CURTAIN BRAKET 439 WENGI', CAST(128.00 AS Decimal(18, 2)), CAST(135.00 AS Decimal(18, 2)), 9, CAST(5.00 AS Decimal(18, 2)), N'PCS', N'', CAST(18.00 AS Decimal(18, 2)), N'514', N'8302', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (515, N'EASY SEAL 25GM', CAST(5.20 AS Decimal(18, 2)), CAST(6.48 AS Decimal(18, 2)), 3, CAST(0.00 AS Decimal(18, 2)), N'PCS', N'', CAST(18.00 AS Decimal(18, 2)), N'515', N'32141000', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (516, N'EASY SEAL 50GM', CAST(10.40 AS Decimal(18, 2)), CAST(12.96 AS Decimal(18, 2)), 3, CAST(0.00 AS Decimal(18, 2)), N'PCS', N'', CAST(18.00 AS Decimal(18, 2)), N'516', N'32141000', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (517, N'EASY SEAL 100GM', CAST(15.60 AS Decimal(18, 2)), CAST(19.49 AS Decimal(18, 2)), 3, CAST(120.00 AS Decimal(18, 2)), N'PCS', N'', CAST(18.00 AS Decimal(18, 2)), N'517', N'32141000', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (518, N'DJOINT SHORT SEDDLE 90MM', CAST(58.60 AS Decimal(18, 2)), CAST(74.60 AS Decimal(18, 2)), 17, CAST(6.00 AS Decimal(18, 2)), N'PCS', N'', CAST(18.00 AS Decimal(18, 2)), N'518', N'39174000', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (519, N'UPVC BRASS ELBOW KAIZEN 1 *1/2', CAST(26.95 AS Decimal(18, 2)), CAST(36.00 AS Decimal(18, 2)), 4, CAST(48.00 AS Decimal(18, 2)), N'PCS', NULL, CAST(18.00 AS Decimal(18, 2)), N'519', N'39174000', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (52, N'BIB COCK 5808', CAST(13.51 AS Decimal(18, 2)), CAST(14.59 AS Decimal(18, 2)), 5, CAST(200.00 AS Decimal(18, 2)), N'PCS', N'', CAST(18.00 AS Decimal(18, 2)), N'52', N'84818020', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (520, N'POLO TYPE SHORT 20MM', CAST(13.50 AS Decimal(18, 2)), CAST(15.00 AS Decimal(18, 2)), 5, CAST(480.00 AS Decimal(18, 2)), N'PCS', N'', CAST(18.00 AS Decimal(18, 2)), N'520', N'3917', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (521, N'PVC CONNECTION PIPE 24"', CAST(21.00 AS Decimal(18, 2)), CAST(24.00 AS Decimal(18, 2)), 5, CAST(0.00 AS Decimal(18, 2)), N'PCS', N'', CAST(18.00 AS Decimal(18, 2)), N'521', N'3917', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (522, N'BIB COCK 5813C', CAST(34.24 AS Decimal(18, 2)), CAST(37.00 AS Decimal(18, 2)), 5, CAST(0.00 AS Decimal(18, 2)), N'PCS', N'', CAST(18.00 AS Decimal(18, 2)), N'522', N'3917', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (523, N'PROTECTOR HPRT 15MTR', CAST(57.19 AS Decimal(18, 2)), CAST(62.10 AS Decimal(18, 2)), 3, CAST(102.00 AS Decimal(18, 2)), N'PCS', N'', CAST(18.00 AS Decimal(18, 2)), N'523', N'3919', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (524, N'CPVC COUPLER 1"', CAST(6.27 AS Decimal(18, 2)), CAST(8.31 AS Decimal(18, 2)), 7, CAST(160.00 AS Decimal(18, 2)), N'PCS', N'', CAST(18.00 AS Decimal(18, 2)), N'524', N'39172390', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (525, N'SERVICE SEDLE 2.1/2 * 1', CAST(22.03 AS Decimal(18, 2)), CAST(23.79 AS Decimal(18, 2)), 17, CAST(50.00 AS Decimal(18, 2)), N'PCS', N'', CAST(18.00 AS Decimal(18, 2)), N'525', N'3917', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (526, N'SERVICE SEDLE 3 * 1', CAST(24.23 AS Decimal(18, 2)), CAST(26.17 AS Decimal(18, 2)), 17, CAST(20.00 AS Decimal(18, 2)), N'PCS', N'', CAST(18.00 AS Decimal(18, 2)), N'526', N'3917', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (527, N'SERVICE SEDLE 2 * 1', CAST(18.50 AS Decimal(18, 2)), CAST(19.98 AS Decimal(18, 2)), 17, CAST(20.00 AS Decimal(18, 2)), N'PCS', N'', CAST(18.00 AS Decimal(18, 2)), N'527', N'3917', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (528, N'SERVICE SEDLE 4 * 1', CAST(29.96 AS Decimal(18, 2)), CAST(32.36 AS Decimal(18, 2)), 17, CAST(25.00 AS Decimal(18, 2)), N'PCS', N'', CAST(18.00 AS Decimal(18, 2)), N'528', N'3917', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (553, N'BALL VALVE 8058B', CAST(7.51 AS Decimal(18, 2)), CAST(8.52 AS Decimal(18, 2)), 5, CAST(80.00 AS Decimal(18, 2)), N'PCS', N'', CAST(18.00 AS Decimal(18, 2)), N'553', N'3917', N'00', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (554, N'FEVIKWIK GEL 1GM', CAST(6.62 AS Decimal(18, 2)), CAST(8.47 AS Decimal(18, 2)), 3, CAST(4.00 AS Decimal(18, 2)), N'PCS', N'', CAST(18.00 AS Decimal(18, 2)), N'554', N'3506', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (555, N'FEVICOL MR 22.5GM', CAST(6.61 AS Decimal(18, 2)), CAST(8.47 AS Decimal(18, 2)), 3, CAST(25.00 AS Decimal(18, 2)), N'PCS', N'', CAST(18.00 AS Decimal(18, 2)), N'555', N'3506', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (556, N'WUDFIN OAK YELLOW', CAST(90.90 AS Decimal(18, 2)), CAST(98.17 AS Decimal(18, 2)), 1, CAST(4.00 AS Decimal(18, 2)), N'PCS', N'', CAST(18.00 AS Decimal(18, 2)), N'556', N'3208', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (557, N'PILLAR COCK SWAN NECK FLOARANCE', CAST(768.00 AS Decimal(18, 2)), CAST(829.44 AS Decimal(18, 2)), 13, CAST(2.00 AS Decimal(18, 2)), N'PCS', N'', CAST(18.00 AS Decimal(18, 2)), N'557', N'8481', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (558, N'SINK COCK FLORANCE', CAST(748.00 AS Decimal(18, 2)), CAST(808.00 AS Decimal(18, 2)), 13, CAST(3.00 AS Decimal(18, 2)), N'PCS', N'', CAST(18.00 AS Decimal(18, 2)), N'558', N'8481', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (559, N'TWO WAY BIB COCK FLORANCE', CAST(835.00 AS Decimal(18, 2)), CAST(902.00 AS Decimal(18, 2)), 13, CAST(1.00 AS Decimal(18, 2)), N'PCS', N'', CAST(18.00 AS Decimal(18, 2)), N'559', N'8481', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (56, N'TOWEL HANGER(M 532 3FT)', CAST(119.25 AS Decimal(18, 2)), CAST(135.00 AS Decimal(18, 2)), 10, CAST(3.00 AS Decimal(18, 2)), N'PCS', N'', CAST(18.00 AS Decimal(18, 2)), N'56', N'', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (560, N'FOUR WAY SINGLE LIVER DIVRTOR MIXER FLORANCE', CAST(2016.00 AS Decimal(18, 2)), CAST(2177.00 AS Decimal(18, 2)), 13, CAST(1.00 AS Decimal(18, 2)), N'PCS', N'', CAST(18.00 AS Decimal(18, 2)), N'560', N'8481', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (561, N'WALL MIXER WITH BEND FLOARANCE', CAST(1848.00 AS Decimal(18, 2)), CAST(1996.00 AS Decimal(18, 2)), 13, CAST(1.00 AS Decimal(18, 2)), N'PCS', N'', CAST(18.00 AS Decimal(18, 2)), N'561', N'8481', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (562, N'FLOARANCE SHORT BODY', CAST(475.00 AS Decimal(18, 2)), CAST(513.00 AS Decimal(18, 2)), 13, CAST(3.00 AS Decimal(18, 2)), N'PCS', N'', CAST(18.00 AS Decimal(18, 2)), N'562', N'8481', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (563, N'FLOARANCE LONG BODY', CAST(514.00 AS Decimal(18, 2)), CAST(555.00 AS Decimal(18, 2)), 13, CAST(3.00 AS Decimal(18, 2)), N'PCS', N'', CAST(18.00 AS Decimal(18, 2)), N'563', N'8481', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (564, N'DELUXE WALL MIXER WITH BEND 3 WAY', CAST(1580.00 AS Decimal(18, 2)), CAST(1706.00 AS Decimal(18, 2)), 13, CAST(1.00 AS Decimal(18, 2)), N'PCS', N'', CAST(18.00 AS Decimal(18, 2)), N'564', N'8481', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (565, N'MASJID TAP', CAST(150.00 AS Decimal(18, 2)), CAST(162.00 AS Decimal(18, 2)), 13, CAST(20.00 AS Decimal(18, 2)), N'PCS', N'', CAST(18.00 AS Decimal(18, 2)), N'565', N'8481', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (566, N'WATER METER KRANTI', CAST(850.00 AS Decimal(18, 2)), CAST(918.00 AS Decimal(18, 2)), 13, CAST(10.00 AS Decimal(18, 2)), N'PCS', N'', CAST(18.00 AS Decimal(18, 2)), N'566', N'8481', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (567, N'PVC HAKI BIB COCK', CAST(36.25 AS Decimal(18, 2)), CAST(39.15 AS Decimal(18, 2)), 5, CAST(0.00 AS Decimal(18, 2)), N'PCS', N'', CAST(18.00 AS Decimal(18, 2)), N'567', N'', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (568, N'UPVC TANK NIPPLE 1 1/4"', CAST(24.25 AS Decimal(18, 2)), CAST(27.80 AS Decimal(18, 2)), 4, CAST(58.00 AS Decimal(18, 2)), N'PCS', N'', CAST(18.00 AS Decimal(18, 2)), N'568', N'39174000', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (569, N'TOWEL ROD PC', CAST(250.00 AS Decimal(18, 2)), CAST(265.00 AS Decimal(18, 2)), 10, CAST(0.00 AS Decimal(18, 2)), N'PCS', N'', CAST(18.00 AS Decimal(18, 2)), N'569', N'8302', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (57, N'TOWEL HANGER(M 531 1.1/2FT)', CAST(55.65 AS Decimal(18, 2)), CAST(65.00 AS Decimal(18, 2)), 10, CAST(12.00 AS Decimal(18, 2)), N'PCS', N'', CAST(18.00 AS Decimal(18, 2)), N'57', N'', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (570, N'WALL HANGER PC 8PT', CAST(170.00 AS Decimal(18, 2)), CAST(185.00 AS Decimal(18, 2)), 10, CAST(0.00 AS Decimal(18, 2)), N'PCS', N'', CAST(18.00 AS Decimal(18, 2)), N'570', N'8302', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (571, N'BATHROOM DOOR KIT MINI PC', CAST(45.00 AS Decimal(18, 2)), CAST(47.00 AS Decimal(18, 2)), 10, CAST(84.00 AS Decimal(18, 2)), N'PCS', N'', CAST(18.00 AS Decimal(18, 2)), N'571', N'8302', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (572, N'D HOOK', CAST(53.00 AS Decimal(18, 2)), CAST(57.00 AS Decimal(18, 2)), 10, CAST(50.00 AS Decimal(18, 2)), N'KG', N'', CAST(18.00 AS Decimal(18, 2)), N'572', N'7318', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (58, N'TOWEL HANGER(M 531 2FT)', CAST(63.60 AS Decimal(18, 2)), CAST(70.00 AS Decimal(18, 2)), 10, CAST(18.00 AS Decimal(18, 2)), N'PCS', N'', CAST(18.00 AS Decimal(18, 2)), N'58', N'', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (59, N'3MM DOOR KIT', CAST(250.00 AS Decimal(18, 2)), CAST(265.00 AS Decimal(18, 2)), 11, CAST(0.00 AS Decimal(18, 2)), N'PCS', NULL, CAST(18.00 AS Decimal(18, 2)), N'59', N'8302', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (6, N'305 CPVC SOLUTION 10ML', CAST(10.25 AS Decimal(18, 2)), CAST(13.20 AS Decimal(18, 2)), 3, CAST(0.00 AS Decimal(18, 2)), N'PCS', NULL, CAST(18.00 AS Decimal(18, 2)), N'6', N'35061000', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(25.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (60, N'TOWEL HANGER(M 535 2FT)', CAST(69.00 AS Decimal(18, 2)), CAST(75.00 AS Decimal(18, 2)), 10, CAST(15.00 AS Decimal(18, 2)), N'PCS', N'', CAST(18.00 AS Decimal(18, 2)), N'60', N'', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (61, N'TOWEL HANGER(M 535 2.1/2FT)', CAST(76.85 AS Decimal(18, 2)), CAST(84.00 AS Decimal(18, 2)), 10, CAST(2.00 AS Decimal(18, 2)), N'PCS', N'', CAST(18.00 AS Decimal(18, 2)), N'61', N'', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (62, N'TOWEL HANGER(M 535 3FT)', CAST(84.80 AS Decimal(18, 2)), CAST(95.00 AS Decimal(18, 2)), 10, CAST(5.00 AS Decimal(18, 2)), N'PCS', N'', CAST(18.00 AS Decimal(18, 2)), N'62', N'', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (63, N'105 PVC SOLUTION 50ML PVC CANS', CAST(10.75 AS Decimal(18, 2)), CAST(13.22 AS Decimal(18, 2)), 3, CAST(500.00 AS Decimal(18, 2)), N'PCS', N'', CAST(18.00 AS Decimal(18, 2)), N'63', N'35061000', N'NEOSAL ADHESHIVE PVT LTD', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(25.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (64, N'305 CPVC SOLUTION 25ML', CAST(22.55 AS Decimal(18, 2)), CAST(27.60 AS Decimal(18, 2)), 3, CAST(0.00 AS Decimal(18, 2)), N'PCS', NULL, CAST(18.00 AS Decimal(18, 2)), N'64', N'35061000', N'NEOSAL ADHESHIVE PVT LTD', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (65, N'P.T.E.F TEFLON TAPE PREMIUM 5MTR', CAST(4.20 AS Decimal(18, 2)), CAST(4.70 AS Decimal(18, 2)), 3, CAST(2495.00 AS Decimal(18, 2)), N'PCS', N'', CAST(18.00 AS Decimal(18, 2)), N'65', N'39209941', N'NEOSAL ADHESHIVE PVT LTD', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(10.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (66, N'BALL VALVE UPVC  1/2" NEOSEAL', CAST(28.00 AS Decimal(18, 2)), CAST(30.00 AS Decimal(18, 2)), 4, CAST(65.00 AS Decimal(18, 2)), N'PCS', N'', CAST(18.00 AS Decimal(18, 2)), N'66', N'84818090', N'NEOSAL ADHESHIVE PVT LTD', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (67, N'BALL VALVE UPVC  3/4" NEOSEAL', CAST(35.20 AS Decimal(18, 2)), CAST(38.00 AS Decimal(18, 2)), 4, CAST(0.00 AS Decimal(18, 2)), N'PCS', N'', CAST(18.00 AS Decimal(18, 2)), N'67', N'84818090', N'NEOSAL ADHESHIVE PVT LTD', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (68, N'BALL VALVE UPVC 1" NEOSEAL', CAST(52.00 AS Decimal(18, 2)), CAST(55.00 AS Decimal(18, 2)), 4, CAST(0.00 AS Decimal(18, 2)), N'PCS', N'', CAST(18.00 AS Decimal(18, 2)), N'68', N'84818090', N'NEOSAL ADHESHIVE PVT LTD', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (69, N'CONCEALED STOP COCK', CAST(175.00 AS Decimal(18, 2)), CAST(185.00 AS Decimal(18, 2)), 13, CAST(12.00 AS Decimal(18, 2)), N'PCS', N'', CAST(18.00 AS Decimal(18, 2)), N'69', N'8481', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (7, N'BALL VALVE 15MM', CAST(25.00 AS Decimal(18, 2)), CAST(28.00 AS Decimal(18, 2)), 4, CAST(0.00 AS Decimal(18, 2)), N'PCS', N'', CAST(18.00 AS Decimal(18, 2)), N'7', N'8481', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (70, N'TAPPER COCK LONG (GAC)', CAST(60.00 AS Decimal(18, 2)), CAST(70.00 AS Decimal(18, 2)), 13, CAST(0.00 AS Decimal(18, 2)), N'PCS', N'', CAST(18.00 AS Decimal(18, 2)), N'70', N'8481', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (71, N'BALL VALVE BRASS 15MM', CAST(68.00 AS Decimal(18, 2)), CAST(78.00 AS Decimal(18, 2)), 13, CAST(10.00 AS Decimal(18, 2)), N'PCS', NULL, CAST(18.00 AS Decimal(18, 2)), N'71', N'8481', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (72, N'BALL VALVE  BRASS 20MM', CAST(95.00 AS Decimal(18, 2)), CAST(110.00 AS Decimal(18, 2)), 13, CAST(0.00 AS Decimal(18, 2)), N'PCS', N'', CAST(18.00 AS Decimal(18, 2)), N'72', N'8481', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (73, N'BALL VALVE  BRASS 25MM', CAST(128.00 AS Decimal(18, 2)), CAST(138.00 AS Decimal(18, 2)), 13, CAST(2.00 AS Decimal(18, 2)), N'PCS', N'', CAST(18.00 AS Decimal(18, 2)), N'73', N'8481', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (74, N'2MM DOOR KIT', CAST(165.00 AS Decimal(18, 2)), CAST(170.00 AS Decimal(18, 2)), 11, CAST(0.00 AS Decimal(18, 2)), N'PCS', NULL, CAST(18.00 AS Decimal(18, 2)), N'74', N'8302', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (75, N'5MM DOOR KIT', CAST(490.00 AS Decimal(18, 2)), CAST(550.00 AS Decimal(18, 2)), 11, CAST(8.00 AS Decimal(18, 2)), N'PCS', NULL, CAST(18.00 AS Decimal(18, 2)), N'75', N'8302', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (76, N'WHITE METAL DOOR KIT 10"', CAST(730.00 AS Decimal(18, 2)), CAST(800.00 AS Decimal(18, 2)), 11, CAST(5.00 AS Decimal(18, 2)), N'PCS', NULL, CAST(18.00 AS Decimal(18, 2)), N'76', N'8302', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (77, N'SCH 40 1/2" UPVC PLUMBING PIPE 6MTR', CAST(83.56 AS Decimal(18, 2)), CAST(110.00 AS Decimal(18, 2)), 4, CAST(0.00 AS Decimal(18, 2)), N'PCS', N'', CAST(18.00 AS Decimal(18, 2)), N'77', N'39174000', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (78, N'SCH 40 3/4" UPVC PLUMBING PIPE 6MTR', CAST(106.62 AS Decimal(18, 2)), CAST(122.00 AS Decimal(18, 2)), 4, CAST(0.00 AS Decimal(18, 2)), N'PCS', N'', CAST(18.00 AS Decimal(18, 2)), N'78', N'39174000', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (79, N'SCH 40 1" UPVC PLUMBING PIPE 6MTR', CAST(155.60 AS Decimal(18, 2)), CAST(178.13 AS Decimal(18, 2)), 4, CAST(0.00 AS Decimal(18, 2)), N'PCS', N'', CAST(18.00 AS Decimal(18, 2)), N'79', N'39174000', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (8, N'BALL VALVE UPVC  1/2"', CAST(22.50 AS Decimal(18, 2)), CAST(30.51 AS Decimal(18, 2)), 4, CAST(0.00 AS Decimal(18, 2)), N'PCS', N'', CAST(18.00 AS Decimal(18, 2)), N'8', N'3917.00', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (80, N'UPVC ELBOW 1/2"', CAST(3.14 AS Decimal(18, 2)), CAST(3.98 AS Decimal(18, 2)), 4, CAST(0.00 AS Decimal(18, 2)), N'PCS', N'', CAST(18.00 AS Decimal(18, 2)), N'80', N'39174000', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (81, N'UPVC ELBOW 3/4''"', CAST(4.98 AS Decimal(18, 2)), CAST(6.01 AS Decimal(18, 2)), 4, CAST(0.00 AS Decimal(18, 2)), N'PCS', N'', CAST(18.00 AS Decimal(18, 2)), N'81', N'39174000', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (82, N'UPVC ELBOW 1"', CAST(7.97 AS Decimal(18, 2)), CAST(9.91 AS Decimal(18, 2)), 4, CAST(0.00 AS Decimal(18, 2)), N'PCS', NULL, CAST(18.00 AS Decimal(18, 2)), N'82', N'39174000', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (83, N'UPVC ELBOW 1.1/4"', CAST(12.87 AS Decimal(18, 2)), CAST(16.37 AS Decimal(18, 2)), 4, CAST(100.00 AS Decimal(18, 2)), N'PCS', N'', CAST(18.00 AS Decimal(18, 2)), N'83', N'39174000', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (84, N'UPVC ELBOW 1.1/2"', CAST(17.98 AS Decimal(18, 2)), CAST(22.87 AS Decimal(18, 2)), 4, CAST(114.00 AS Decimal(18, 2)), N'PCS', N'', CAST(18.00 AS Decimal(18, 2)), N'84', N'39174000', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (85, N'UPVC ELBOW 2"', CAST(25.75 AS Decimal(18, 2)), CAST(32.62 AS Decimal(18, 2)), 4, CAST(32.00 AS Decimal(18, 2)), N'PCS', N'', CAST(18.00 AS Decimal(18, 2)), N'85', N'39174000', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (86, N'UPVC TEE 1/2"', CAST(4.18 AS Decimal(18, 2)), CAST(5.72 AS Decimal(18, 2)), 4, CAST(480.00 AS Decimal(18, 2)), N'PCS', N'', CAST(18.00 AS Decimal(18, 2)), N'86', N'39174000', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (87, N'UPVC TEE 3/4"', CAST(6.61 AS Decimal(18, 2)), CAST(8.43 AS Decimal(18, 2)), 4, CAST(160.00 AS Decimal(18, 2)), N'PCS', N'', CAST(18.00 AS Decimal(18, 2)), N'87', N'39174000', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (88, N'UPVC TEE 1"', CAST(11.00 AS Decimal(18, 2)), CAST(13.40 AS Decimal(18, 2)), 4, CAST(100.00 AS Decimal(18, 2)), N'PCS', NULL, CAST(18.00 AS Decimal(18, 2)), N'88', N'39174000', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (89, N'UPVC TEE 1.1/4"', CAST(18.18 AS Decimal(18, 2)), CAST(23.14 AS Decimal(18, 2)), 4, CAST(88.00 AS Decimal(18, 2)), N'PCS', NULL, CAST(18.00 AS Decimal(18, 2)), N'89', N'39174000', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (45, N'Parale G', CAST(34.50 AS Decimal(18, 2)), CAST(36.00 AS Decimal(18, 2)), 1, CAST(0.00 AS Decimal(18, 2)), N'Pcs', NULL, NULL, N'9', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (90, N'UPVC TEE 1.1/2"', CAST(23.81 AS Decimal(18, 2)), CAST(27.83 AS Decimal(18, 2)), 4, CAST(110.00 AS Decimal(18, 2)), N'PCS', N'', CAST(18.00 AS Decimal(18, 2)), N'90', N'39174000', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (91, N'UPVC TEE 2"', CAST(34.47 AS Decimal(18, 2)), CAST(45.76 AS Decimal(18, 2)), 4, CAST(16.00 AS Decimal(18, 2)), N'PCS', NULL, CAST(18.00 AS Decimal(18, 2)), N'91', N'39174000', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (92, N'UPVC MTA 1/2"', CAST(1.95 AS Decimal(18, 2)), CAST(2.48 AS Decimal(18, 2)), 4, CAST(500.00 AS Decimal(18, 2)), N'PCS', N'', CAST(18.00 AS Decimal(18, 2)), N'92', N'39174000', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (93, N'UPVC MTA 3/4"', CAST(2.92 AS Decimal(18, 2)), CAST(3.71 AS Decimal(18, 2)), 4, CAST(1300.00 AS Decimal(18, 2)), N'PCS', N'', CAST(18.00 AS Decimal(18, 2)), N'93', N'39174000', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (94, N'UPVC FTA 1/2"', CAST(2.43 AS Decimal(18, 2)), CAST(3.10 AS Decimal(18, 2)), 4, CAST(1000.00 AS Decimal(18, 2)), N'PCS', N'', CAST(18.00 AS Decimal(18, 2)), N'94', N'39174000', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (95, N'UPVC FTA 3/4"', CAST(3.65 AS Decimal(18, 2)), CAST(4.64 AS Decimal(18, 2)), 4, CAST(800.00 AS Decimal(18, 2)), N'PCS', N'', CAST(18.00 AS Decimal(18, 2)), N'95', N'39174000', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (96, N'UPVC FTA 1"', CAST(5.38 AS Decimal(18, 2)), CAST(7.28 AS Decimal(18, 2)), 4, CAST(400.00 AS Decimal(18, 2)), N'PCS', N'', CAST(18.00 AS Decimal(18, 2)), N'96', N'39174000', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (97, N'UPVC FTA 1.1/4"', CAST(9.13 AS Decimal(18, 2)), CAST(11.73 AS Decimal(18, 2)), 4, CAST(50.00 AS Decimal(18, 2)), N'PCS', N'', CAST(18.00 AS Decimal(18, 2)), N'97', N'39174000', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (98, N'UPVC FTA 1.1//2"', CAST(0.00 AS Decimal(18, 2)), CAST(1.00 AS Decimal(18, 2)), 4, CAST(0.00 AS Decimal(18, 2)), N'PCS', N'', CAST(18.00 AS Decimal(18, 2)), N'98', N'39174000', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (99, N'UPVC FTA 2"', CAST(15.78 AS Decimal(18, 2)), CAST(20.10 AS Decimal(18, 2)), 4, CAST(16.00 AS Decimal(18, 2)), N'PCS', N'', CAST(18.00 AS Decimal(18, 2)), N'99', N'39174000', N'NA', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (7, N'Tshirts', CAST(500.00 AS Decimal(18, 2)), CAST(600.00 AS Decimal(18, 2)), 2, CAST(0.00 AS Decimal(18, 2)), N'Pcs', NULL, NULL, N'GGJ2356', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (8, N'Nailpaints', CAST(15.00 AS Decimal(18, 2)), CAST(20.00 AS Decimal(18, 2)), 3, CAST(0.00 AS Decimal(18, 2)), N'Pcs', NULL, NULL, N'GHH234', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tbl_Item] ([ItemId], [ItemName], [PurchasePrice], [SalePrice], [CatId], [ItemQty], [Unit], [Details], [Vat], [Barcode], [HSN], [MFGComapny], [ExpiryDate], [MRP], [Wprice], [WoutSalePrice], [MFGDate]) VALUES (44, N'Washing Powder', CAST(10.00 AS Decimal(18, 2)), CAST(15.00 AS Decimal(18, 2)), 2, CAST(0.00 AS Decimal(18, 2)), N'Kg', NULL, NULL, N'GHH23445', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[tbl_Item] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_Supplier] ON 

GO
INSERT [dbo].[tbl_Supplier] ([SupplierId], [SupplierName], [Address], [Mobile], [Date], [GST], [Email]) VALUES (1, N'Relience Industries', NULL, N'7867545676', CAST(N'2019-04-01 22:51:56.400' AS DateTime), NULL, N'relngp@relience.com')
GO
SET IDENTITY_INSERT [dbo].[tbl_Supplier] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_Transaction] ON 

GO
INSERT [dbo].[tbl_Transaction] ([Id], [Date], [Bank], [Amount], [Mode], [CheckNo], [CheckDate], [ClearDate], [VoucherId], [Stakeholder], [StakeholderId]) VALUES (1, CAST(N'2019-04-01 22:53:55.747' AS DateTime), N'SBI, TRIMURTINAGAR', CAST(500.00 AS Decimal(18, 2)), N'Cash', N'86888', CAST(N'2019-04-04 00:00:00.000' AS DateTime), NULL, NULL, NULL, N'1')
GO
INSERT [dbo].[tbl_Transaction] ([Id], [Date], [Bank], [Amount], [Mode], [CheckNo], [CheckDate], [ClearDate], [VoucherId], [Stakeholder], [StakeholderId]) VALUES (2, CAST(N'2019-04-01 22:54:50.260' AS DateTime), N'SBI Lehgaon', CAST(500.00 AS Decimal(18, 2)), N'Cash', N'97897', NULL, NULL, NULL, NULL, N'1')
GO
INSERT [dbo].[tbl_Transaction] ([Id], [Date], [Bank], [Amount], [Mode], [CheckNo], [CheckDate], [ClearDate], [VoucherId], [Stakeholder], [StakeholderId]) VALUES (3, CAST(N'2019-04-01 22:55:36.277' AS DateTime), N'SBI Lehgaon', CAST(500.00 AS Decimal(18, 2)), N'Cash', N'97897', NULL, NULL, NULL, NULL, N'1')
GO
SET IDENTITY_INSERT [dbo].[tbl_Transaction] OFF
GO
SET IDENTITY_INSERT [dbo].[tblLogin] ON 

GO
INSERT [dbo].[tblLogin] ([UserID], [Username], [Password], [ClientOrVendorID], [IsClientOrVendor], [FirstName], [LastName], [Email], [IsSuperUser], [SortOrderSFP], [Address1], [City], [StateID], [ZipCode], [Country], [WorkPhone], [CellPhone], [IsActive], [Extension], [VendorID], [EmployeeID], [AddToGroup], [UserType], [StationMarketID], [ShowNotification], [UserCode], [Timezone], [Language], [Locale], [Company], [Department], [UserLicense], [EmailEncoding], [StartDay], [EndDay], [FederationID], [CreatedDate], [CreatedById], [LastModifiedDate], [LastModifiedById], [LastLoginDate], [IsDeleted], [CommunityNickname], [UserRoleId], [SMTPUserName], [SMTPPassword]) VALUES (1, N'DharvikAdm', N'123', 1, 1, N'Dharvik', N'Inc', N'dharvikinc@gmail.com', 1, NULL, N'Nagpur', N'Nagpur', N'MH', N'440016', N'IND', NULL, N'7517012001', 1, N'100', NULL, 1, 1, 1, NULL, NULL, N'1', N'CST', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[tblLogin] OFF
GO
/****** Object:  StoredProcedure [dbo].[SP_Acct]    Script Date: 03/06/2020 1:35:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_Acct]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[SP_Acct] AS' 
END
GO
ALTER PROCEDURE [dbo].[SP_Acct](@CustId varchar (10),@InvoiceId int,@Debit decimal(18,2),@Credit decimal(18,2),@Balance decimal(18,2),@Date datetime,@Note varchar(200))
AS

insert into Account(CustId,Invoiceid,Debit,Credit,Balance,Date,Note)
Values(@CustId,@InvoiceId,@Debit,@Credit,@Balance,@Date,@Note)

GO
/****** Object:  StoredProcedure [dbo].[SP_Bill]    Script Date: 03/06/2020 1:35:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_Bill]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[SP_Bill] AS' 
END
GO
ALTER PROCEDURE [dbo].[SP_Bill]
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
/****** Object:  StoredProcedure [dbo].[SP_Bill1]    Script Date: 03/06/2020 1:35:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_Bill1]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[SP_Bill1] AS' 
END
GO
ALTER PROCEDURE [dbo].[SP_Bill1]
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
/****** Object:  StoredProcedure [dbo].[SP_EmpAcct]    Script Date: 03/06/2020 1:35:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_EmpAcct]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[SP_EmpAcct] AS' 
END
GO
ALTER PROCEDURE [dbo].[SP_EmpAcct]
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
/****** Object:  StoredProcedure [dbo].[SP_Invoice1]    Script Date: 03/06/2020 1:35:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_Invoice1]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[SP_Invoice1] AS' 
END
GO
ALTER PROCEDURE [dbo].[SP_Invoice1]
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
/****** Object:  StoredProcedure [dbo].[SP_MyAcct]    Script Date: 03/06/2020 1:35:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_MyAcct]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[SP_MyAcct] AS' 
END
GO
ALTER PROCEDURE [dbo].[SP_MyAcct]
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
/****** Object:  StoredProcedure [dbo].[SP_Myorder]    Script Date: 03/06/2020 1:35:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_Myorder]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[SP_Myorder] AS' 
END
GO
ALTER PROCEDURE [dbo].[SP_Myorder]
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
/****** Object:  StoredProcedure [dbo].[SP_OBill]    Script Date: 03/06/2020 1:35:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_OBill]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[SP_OBill] AS' 
END
GO
/****** Object:  StoredProcedure [dbo].[SP_Invoice]    Script Date: 07/24/2017 08:49:50 ******/
ALTER PROCEDURE [dbo].[SP_OBill]
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
/****** Object:  StoredProcedure [dbo].[SP_Order]    Script Date: 03/06/2020 1:35:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_Order]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[SP_Order] AS' 
END
GO
/****** Object:  StoredProcedure [dbo].[SP_Invoice]    Script Date: 07/24/2017 08:49:50 ******/
ALTER PROCEDURE [dbo].[SP_Order]
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
/****** Object:  StoredProcedure [dbo].[SP_PartyAcct]    Script Date: 03/06/2020 1:35:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_PartyAcct]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[SP_PartyAcct] AS' 
END
GO
ALTER PROCEDURE [dbo].[SP_PartyAcct]
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
/****** Object:  StoredProcedure [dbo].[SP_QBill]    Script Date: 03/06/2020 1:35:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_QBill]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[SP_QBill] AS' 
END
GO
/****** Object:  StoredProcedure [dbo].[SP_Invoice]    Script Date: 07/24/2017 08:49:50 ******/
ALTER PROCEDURE [dbo].[SP_QBill]
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
/****** Object:  StoredProcedure [dbo].[SP_Quotation]    Script Date: 03/06/2020 1:35:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_Quotation]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[SP_Quotation] AS' 
END
GO
ALTER PROCEDURE [dbo].[SP_Quotation]
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
/****** Object:  StoredProcedure [dbo].[SP_Recipes]    Script Date: 03/06/2020 1:35:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_Recipes]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[SP_Recipes] AS' 
END
GO
ALTER PROCEDURE [dbo].[SP_Recipes]
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
/****** Object:  StoredProcedure [dbo].[SP_Recipes1]    Script Date: 03/06/2020 1:35:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_Recipes1]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[SP_Recipes1] AS' 
END
GO
ALTER PROCEDURE [dbo].[SP_Recipes1]
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
/****** Object:  StoredProcedure [dbo].[SP_RecipesDet]    Script Date: 03/06/2020 1:35:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_RecipesDet]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[SP_RecipesDet] AS' 
END
GO
ALTER PROCEDURE [dbo].[SP_RecipesDet]
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
/****** Object:  StoredProcedure [dbo].[SP_RecipesDet1]    Script Date: 03/06/2020 1:35:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_RecipesDet1]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[SP_RecipesDet1] AS' 
END
GO
ALTER PROCEDURE [dbo].[SP_RecipesDet1]
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
/****** Object:  StoredProcedure [dbo].[SPAccount]    Script Date: 03/06/2020 1:35:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SPAccount]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[SPAccount] AS' 
END
GO
ALTER PROCEDURE [dbo].[SPAccount](@CustId varchar (10),@InvoiceId int,@Debit decimal(18,2),@Credit decimal(18,2),@Balance decimal(18,2),@Date datetime,@Note varchar(200),@Count int output)
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
/****** Object:  StoredProcedure [dbo].[SPCategory]    Script Date: 03/06/2020 1:35:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SPCategory]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[SPCategory] AS' 
END
GO
ALTER PROCEDURE [dbo].[SPCategory](@CatName varchar (100),@Count int output)
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
/****** Object:  StoredProcedure [dbo].[SPCatgory]    Script Date: 03/06/2020 1:35:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SPCatgory]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[SPCatgory] AS' 
END
GO
ALTER PROCEDURE [dbo].[SPCatgory](@CatName varchar (100),@GST decimal(18,2),@Count int output)
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
/****** Object:  StoredProcedure [dbo].[spcust]    Script Date: 03/06/2020 1:35:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spcust]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[spcust] AS' 
END
GO
ALTER procedure [dbo].[spcust]
(@mono nvarchar(max),
@consumer	nvarchar(MAX),
@bv	nvarchar(MAX),
@sanction	nvarchar(MAX),
@avgunit	nvarchar(MAX),
@load	nvarchar(MAX),
@totalpay	nvarchar(MAX),
@paymode	nvarchar(MAX),
@paydetail	nvarchar(MAX),
@custremark	nvarchar(MAX)
)
as insert into tbl_Cust1 (mono,consumer,bv ,sanction,avgunit,load,totalpay ,paymode,paydetail ,custremark )values(@mono,@consumer,@bv ,@sanction,@avgunit,@load,@totalpay ,@paymode,@paydetail ,@custremark   )

GO
/****** Object:  StoredProcedure [dbo].[SPEmp]    Script Date: 03/06/2020 1:35:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SPEmp]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[SPEmp] AS' 
END
GO
ALTER PROCEDURE [dbo].[SPEmp](@Id int,@CustName varchar (200),@Address varchar (300),@Mobile varchar(20),@Email varchar(50),@Details varchar(500),@Date varchar(50),@Status int,@Count int output)
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
/****** Object:  StoredProcedure [dbo].[SPEmployee]    Script Date: 03/06/2020 1:35:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SPEmployee]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[SPEmployee] AS' 
END
GO
ALTER PROCEDURE [dbo].[SPEmployee](@EmpName varchar (100),@Address varchar (100),@Mobile varchar(50),@Email varchar(50),@Designation int,@Details varchar(500),@Count int output)
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
/****** Object:  StoredProcedure [dbo].[spenquiry]    Script Date: 03/06/2020 1:35:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spenquiry]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[spenquiry] AS' 
END
GO
ALTER procedure [dbo].[spenquiry](@custtype nvarchar(max),@fullname nvarchar(max),@mobno nvarchar(50),@email nvarchar(max),@address nvarchar(max),
@intedate nvarchar(max),@reabuy nvarchar(max),@user_id nvarchar(max))
as
insert into tbl_Enquiry1(custtype,fullname,mobno,email,address,intedate,reabuy,user_id) 
values (@custtype,@fullname,@mobno,@email,@address,@intedate,@reabuy,@user_id)

GO
/****** Object:  StoredProcedure [dbo].[spfollow]    Script Date: 03/06/2020 1:35:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spfollow]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[spfollow] AS' 
END
GO
ALTER procedure [dbo].[spfollow](@calldatetime nvarchar(50),@action nvarchar(max),@purpose nvarchar(max),@mono nvarchar(50))
as
insert into tbl_follow1(calldatetime,action,purpose,mono) 
values(@calldatetime,@action,@purpose,@mono)

GO
/****** Object:  StoredProcedure [dbo].[SPIngredient]    Script Date: 03/06/2020 1:35:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SPIngredient]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[SPIngredient] AS' 
END
GO
ALTER PROCEDURE [dbo].[SPIngredient](@IngredientName nvarchar (300),@PurchasePrice decimal (18,0),@SalePrice decimal (18,0),@CatId int,@IngredientQty decimal(18,2),@Unit varchar(50),@Details varchar (max),@Vat decimal(18,2),@Count int output)
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
/****** Object:  StoredProcedure [dbo].[SPItem]    Script Date: 03/06/2020 1:35:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SPItem]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[SPItem] AS' 
END
GO
ALTER PROCEDURE [dbo].[SPItem](@ItemName varchar (300),@PurchasePrice decimal (18,2),@SalePrice decimal (18,2),@CatId int,@ItemQty decimal (18,2),@Unit varchar(50),@Details varchar (max),@Vat decimal(18,2),@Barcode nvarchar(100),@HSN nvarchar(100),@MFGComapny nvarchar(100),@MFGDate nvarchar(50),@ExpiryDate nvarchar(50),@mrp decimal(18,2),@wprice decimal(18,2),@Count int output)
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
/****** Object:  StoredProcedure [dbo].[SPItem1]    Script Date: 03/06/2020 1:35:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SPItem1]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[SPItem1] AS' 
END
GO
ALTER PROCEDURE [dbo].[SPItem1](@ItemName varchar (300),@PurchasePrice decimal (18,2),@SalePrice decimal (18,2),@CatId int,@ItemQty decimal (18,2),@Unit varchar(50),@Details varchar (max),@Vat decimal(18,2),@Barcode nvarchar(100),@HSN nvarchar(100),@MFGComapny nvarchar(100),@MFGDate nvarchar(50),@ExpiryDate nvarchar(50),@mrp decimal(18,2),@wprice decimal(18,2),@WoutSalePrice decimal(18,2),@Count int output)
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
/****** Object:  StoredProcedure [dbo].[spkanthaklogin]    Script Date: 03/06/2020 1:35:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spkanthaklogin]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[spkanthaklogin] AS' 
END
GO
ALTER procedure [dbo].[spkanthaklogin](@email nvarchar(max),@pass nvarchar(max))
as
select * from tbl_user where email=@email and pass=@pass

GO
/****** Object:  StoredProcedure [dbo].[SPParty]    Script Date: 03/06/2020 1:35:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SPParty]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[SPParty] AS' 
END
GO
ALTER PROCEDURE [dbo].[SPParty](@Id nvarchar(10),@CustName varchar (200),@Address varchar (300),@Mobile varchar(20),@Email varchar(50),@Details varchar(500),@Date varchar(50),@Status int,@Commision decimal(18,2),@Count int output)
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
/****** Object:  StoredProcedure [dbo].[SPPurchase]    Script Date: 03/06/2020 1:35:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SPPurchase]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[SPPurchase] AS' 
END
GO
ALTER PROCEDURE [dbo].[SPPurchase](@Barcode nvarchar(100),@Qty decimal(18,2),@PurchasePrice decimal(18,2),@SalePrice decimal(18,2),@idate nvarchar(50), @SupplierId nvarchar(100),@OrderId nvarchar(100),@ItemId nvarchar(50),@Count int output)
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
/****** Object:  StoredProcedure [dbo].[SPRecipes]    Script Date: 03/06/2020 1:35:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SPRecipes]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[SPRecipes] AS' 
END
GO
ALTER PROCEDURE [dbo].[SPRecipes]
	(@ItemId int,
	@Qty decimal(18,2))
AS
		update Ingredient  set IngredientQty=@Qty where Id=@ItemId
	RETURN

GO
/****** Object:  StoredProcedure [dbo].[SPSuppAccount]    Script Date: 03/06/2020 1:35:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SPSuppAccount]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[SPSuppAccount] AS' 
END
GO
ALTER PROCEDURE [dbo].[SPSuppAccount](@SupplierId int,@InvoiceNo Varchar(50),@Debit decimal(18,2),@Credit decimal(18,2),@Balance decimal(18,2),@date varchar(50),@Note varchar(50),@Count int Output)
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
/****** Object:  StoredProcedure [dbo].[SPSupplier]    Script Date: 03/06/2020 1:35:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SPSupplier]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[SPSupplier] AS' 
END
GO
ALTER PROCEDURE [dbo].[SPSupplier]( @SupplierName varchar(100),@Address varchar(200),@Mobile varchar(10),@Date varchar(50),@Count int Output)

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
/****** Object:  StoredProcedure [dbo].[SPupdate]    Script Date: 03/06/2020 1:35:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SPupdate]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[SPupdate] AS' 
END
GO
ALTER PROCEDURE [dbo].[SPupdate]
	(@Barcode nvarchar(100),
	@Qty decimal(18,2),
	@PurchasePrice decimal(18,2),
	@SalePrice decimal(18,2),
	@Vat decimal(18,2))
AS
		update item set ItemQty=@Qty ,PurchasePrice=@PurchasePrice, SalePrice=@SalePrice,Vat=@Vat where Barcode=@Barcode
	RETURN

GO
/****** Object:  StoredProcedure [dbo].[SPupdate1]    Script Date: 03/06/2020 1:35:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SPupdate1]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[SPupdate1] AS' 
END
GO
ALTER PROCEDURE [dbo].[SPupdate1]
	(@Barcode nvarchar(100),
	@Qty decimal(18,2)
)
AS
		update item set ItemQty=@Qty where Barcode=@Barcode
	RETURN

GO
/****** Object:  StoredProcedure [dbo].[spuser]    Script Date: 03/06/2020 1:35:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spuser]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[spuser] AS' 
END
GO
ALTER procedure [dbo].[spuser](@name nvarchar(max),@mobno nvarchar(50),@email nvarchar(max),@designation nvarchar(max),@address nvarchar(max),@pass nvarchar(max))
as
insert into tbl_user(name,mobno,email,designation,address,pass) values(@name,@mobno,@email,@designation,@address,@pass)

GO
/****** Object:  StoredProcedure [dbo].[usp_AddPageLoginHistory]    Script Date: 03/06/2020 1:35:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_AddPageLoginHistory]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[usp_AddPageLoginHistory] AS' 
END
GO
ALTER PROCEDURE [dbo].[usp_AddPageLoginHistory]
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
/****** Object:  StoredProcedure [dbo].[usp_GetChatsList]    Script Date: 03/06/2020 1:35:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetChatsList]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[usp_GetChatsList] AS' 
END
GO
-- exec [usp_GetChatsList] 30717

ALTER PROCEDURE [dbo].[usp_GetChatsList]
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
/****** Object:  StoredProcedure [dbo].[usp_GetCustAccountBalance]    Script Date: 03/06/2020 1:35:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetCustAccountBalance]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[usp_GetCustAccountBalance] AS' 
END
GO
ALTER PROCEDURE [dbo].[usp_GetCustAccountBalance]
(@CustId BIGINT)
AS
BEGIN

  SELECT SUM(Debit)- SUM(Credit) As OpeningBalance FROM tbl_CustAccount  WHERE CustId=@CustId
  END

GO
/****** Object:  StoredProcedure [dbo].[usp_GetCustAccountData]    Script Date: 03/06/2020 1:35:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetCustAccountData]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[usp_GetCustAccountData] AS' 
END
GO
ALTER PROCEDURE [dbo].[usp_GetCustAccountData]
(@CustId BIGINT)
AS
BEGIN

  SELECT [CustId]
      ,[CustName]
      ,[Address]
      ,[Mobile]
      ,[Email]
      ,[Details]
      ,[Date]
      ,[Status]
      ,[GST]
      ,[PAN] FROM tbl_Customer  WHERE CustId=@CustId
  END

GO
/****** Object:  StoredProcedure [dbo].[usp_GetCustAccountList]    Script Date: 03/06/2020 1:35:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetCustAccountList]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[usp_GetCustAccountList] AS' 
END
GO
ALTER PROCEDURE [dbo].[usp_GetCustAccountList]
(@CustName nvarchar(50))
AS
BEGIN

  SELECT * FROM tbl_Customer  WHERE CustName  LIKE '%' +@CustName +'%' OR Mobile LIKE '%' +@CustName +'%'
  END

GO
/****** Object:  StoredProcedure [dbo].[usp_GetCustomerSearch]    Script Date: 03/06/2020 1:35:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetCustomerSearch]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[usp_GetCustomerSearch] AS' 
END
GO
ALTER PROCEDURE [dbo].[usp_GetCustomerSearch]
(@SearchString nvarchar(50))
AS
BEGIN

  SELECT * FROM tbl_Customer  WHERE CustName  LIKE '%' +@SearchString +'%' OR Mobile LIKE '%' +@SearchString +'%'
  END

GO
/****** Object:  StoredProcedure [dbo].[usp_GetEmpAccountData]    Script Date: 03/06/2020 1:35:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetEmpAccountData]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[usp_GetEmpAccountData] AS' 
END
GO
ALTER PROCEDURE [dbo].[usp_GetEmpAccountData]
(@EmpId BIGINT)
AS
BEGIN

  SELECT [EmpId]
      ,[EmpName]
      ,[Address]
      ,[Mobile]
      ,[Email]
      ,[Details]
      ,[Status]
      ,[Date] FROM tbl_Employee  WHERE [EmpId]=@EmpId
  END

GO
/****** Object:  StoredProcedure [dbo].[usp_GetEmpAccountList]    Script Date: 03/06/2020 1:35:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetEmpAccountList]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[usp_GetEmpAccountList] AS' 
END
GO
ALTER PROCEDURE [dbo].[usp_GetEmpAccountList]
(@EmpName nvarchar(50))
AS
BEGIN

  SELECT * FROM tbl_Employee  WHERE EmpName  LIKE '%' +@EmpName +'%' OR Mobile LIKE '%' +@EmpName +'%'
  END

GO
/****** Object:  StoredProcedure [dbo].[usp_GetEmpTransactionDetails]    Script Date: 03/06/2020 1:35:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetEmpTransactionDetails]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[usp_GetEmpTransactionDetails] AS' 
END
GO
ALTER PROCEDURE [dbo].[usp_GetEmpTransactionDetails]
(@EmpId BIGINT)
AS
BEGIN

  SELECT [Id]
      ,[EmpId]
      ,[Invoiceid]
      ,[Debit]
      ,[Credit]
      ,[Balance]
      ,[Date] FROM tbl_EmpAccount  WHERE [EmpId]  =@EmpId
  END

GO
/****** Object:  StoredProcedure [dbo].[usp_GetInvoiceDetails]    Script Date: 03/06/2020 1:35:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetInvoiceDetails]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[usp_GetInvoiceDetails] AS' 
END
GO
ALTER PROCEDURE [dbo].[usp_GetInvoiceDetails]
(@CustId BIGINT)
AS
BEGIN

  SELECT * FROM tbl_Invoice  WHERE CustId  =@CustId
  END

GO
/****** Object:  StoredProcedure [dbo].[usp_GetInvoiceList]    Script Date: 03/06/2020 1:35:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetInvoiceList]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[usp_GetInvoiceList] AS' 
END
GO
ALTER PROCEDURE [dbo].[usp_GetInvoiceList]
(@CFromDate datetime,
@CToDate datetime

)
AS
BEGIN

  SELECT I.AutoInvoiceID,C.CustName ,C.CustId,C.Mobile,C.GST  AS GSTNO,I.Amount,I.TotalAmt,I.Advance,I.Vat,I.PayMode,I.Discount,I.InvoiceDate FROM tbl_Invoice I INNER JOIN tbl_Customer C ON I.CustId=C.CustId  WHERE InvoiceDate>=@CFromDate AND InvoiceDate<= @CToDate+' 23:59:59'
  END

GO
/****** Object:  StoredProcedure [dbo].[usp_GetItemSearch]    Script Date: 03/06/2020 1:35:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetItemSearch]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[usp_GetItemSearch] AS' 
END
GO
ALTER PROCEDURE [dbo].[usp_GetItemSearch]
(@SearchString nvarchar(50))
AS
BEGIN

  SELECT * FROM tbl_Item WHERE ItemName LIKE '%' +@SearchString +'%' OR Barcode LIKE '%' +@SearchString +'%'
  END

GO
/****** Object:  StoredProcedure [dbo].[usp_GetMenuByUserID]    Script Date: 03/06/2020 1:35:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetMenuByUserID]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[usp_GetMenuByUserID] AS' 
END
GO
ALTER PROCEDURE [dbo].[usp_GetMenuByUserID]
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
/****** Object:  StoredProcedure [dbo].[usp_GetNotesList]    Script Date: 03/06/2020 1:35:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetNotesList]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[usp_GetNotesList] AS' 
END
GO
ALTER PROCEDURE [dbo].[usp_GetNotesList]
	
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
/****** Object:  StoredProcedure [dbo].[usp_GetSuppAccountData]    Script Date: 03/06/2020 1:35:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetSuppAccountData]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[usp_GetSuppAccountData] AS' 
END
GO
ALTER PROCEDURE [dbo].[usp_GetSuppAccountData]
(@SupplierId BIGINT)
AS
BEGIN
SELECT [SupplierId]
      ,[SupplierName]
      ,[Address]
      ,[Mobile]
      ,[Date]
      ,[GST]
      ,[Email]
  FROM [Dharvik].[dbo].[tbl_Supplier]  WHERE [SupplierId]=@SupplierId
  END

GO
/****** Object:  StoredProcedure [dbo].[usp_GetSuppAccountList]    Script Date: 03/06/2020 1:35:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetSuppAccountList]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[usp_GetSuppAccountList] AS' 
END
GO
ALTER PROCEDURE [dbo].[usp_GetSuppAccountList]
(@SupplierName nvarchar(50))
AS
BEGIN

  SELECT [SupplierId]
      ,[SupplierName]
      ,[Address]
      ,[Mobile]
      ,[Date]
      ,[GST]
      ,[Email] FROM tbl_Supplier  WHERE [SupplierName]  LIKE '%' +@SupplierName +'%' OR Mobile LIKE '%' +@SupplierName +'%'
  END

GO
/****** Object:  StoredProcedure [dbo].[usp_GetSuppTransactionDetails]    Script Date: 03/06/2020 1:35:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetSuppTransactionDetails]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[usp_GetSuppTransactionDetails] AS' 
END
GO
ALTER PROCEDURE [dbo].[usp_GetSuppTransactionDetails]
(@SupplierId BIGINT)
AS
BEGIN

  SELECT [Id]
      ,[SupplierId]
      ,[InvoiceNo]
      ,[Debit]
      ,[Credit]
      ,[Balance]
      ,[Note]
      ,[Date] FROM tbl_SuppAccount  WHERE [SupplierId]  =@SupplierId
  END

GO
/****** Object:  StoredProcedure [dbo].[usp_GetTransactionDetails]    Script Date: 03/06/2020 1:35:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetTransactionDetails]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[usp_GetTransactionDetails] AS' 
END
GO
ALTER PROCEDURE [dbo].[usp_GetTransactionDetails]
(@CustId BIGINT)
AS
BEGIN

  SELECT [AccountId]
      ,[CustId]
      ,[Invoiceid]
      ,ISNULL(Debit,0) AS Debit
      ,ISNULL(Credit,0) AS Credit
      ,ISNULL(Balance,0) AS Balance
      ,[Date]
      ,[Note] FROM tbl_CustAccount  WHERE CustId  =@CustId
  END

GO
/****** Object:  StoredProcedure [dbo].[usp_GetUserAccess]    Script Date: 03/06/2020 1:35:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetUserAccess]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[usp_GetUserAccess] AS' 
END
GO
ALTER PROCEDURE [dbo].[usp_GetUserAccess]
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
/****** Object:  StoredProcedure [dbo].[usp_GetUserInfoPageList]    Script Date: 03/06/2020 1:35:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetUserInfoPageList]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[usp_GetUserInfoPageList] AS' 
END
GO
--EXEC usp_GetUserInfoPageList 1
ALTER PROCEDURE [dbo].[usp_GetUserInfoPageList]
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
/****** Object:  StoredProcedure [dbo].[usp_GetUserInfoPageListRange]    Script Date: 03/06/2020 1:35:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetUserInfoPageListRange]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[usp_GetUserInfoPageListRange] AS' 
END
GO
ALTER PROCEDURE [dbo].[usp_GetUserInfoPageListRange]
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
/****** Object:  StoredProcedure [dbo].[usp_ImportCsvToLead]    Script Date: 03/06/2020 1:35:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_ImportCsvToLead]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[usp_ImportCsvToLead] AS' 
END
GO
--EXEC usp_ImportCsvToLead 'E:\\WebApps\\MalaGroupFTP\\013019TX23K.csv'
ALTER PROCEDURE [dbo].[usp_ImportCsvToLead]
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
