
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 06/07/2024 13:28:28
-- Generated from EDMX file: E:\Projects\ERP\ERP\New folder\HiWork\HiWork.DAL\Database\CentralDBEntities.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [CentralDB];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_AdditionalOperationPermissions_ScreenOperations]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[AdditionalOperationPermission] DROP CONSTRAINT [FK_AdditionalOperationPermissions_ScreenOperations];
GO
IF OBJECT_ID(N'[dbo].[FK_AdditionalOperationPermissions_UserInformation]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[AdditionalOperationPermission] DROP CONSTRAINT [FK_AdditionalOperationPermissions_UserInformation];
GO
IF OBJECT_ID(N'[dbo].[FK_AdditionalScreenPermissions_UserInformation]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[AdditionalScreenPermission] DROP CONSTRAINT [FK_AdditionalScreenPermissions_UserInformation];
GO
IF OBJECT_ID(N'[dbo].[FK_Company]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[EstimationRequestHistory] DROP CONSTRAINT [FK_Company];
GO
IF OBJECT_ID(N'[dbo].[FK_Company_AgencyPrice_Company]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Company.AgencyPrice] DROP CONSTRAINT [FK_Company_AgencyPrice_Company];
GO
IF OBJECT_ID(N'[dbo].[FK_Company_AgencyPrice_Master_EstimationSpecializedField]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Company.AgencyPrice] DROP CONSTRAINT [FK_Company_AgencyPrice_Master_EstimationSpecializedField];
GO
IF OBJECT_ID(N'[dbo].[FK_Company_AgencyPrice_Master_EstimationType]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Company.AgencyPrice] DROP CONSTRAINT [FK_Company_AgencyPrice_Master_EstimationType];
GO
IF OBJECT_ID(N'[dbo].[FK_Company_AgencyPrice_Master_Language]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Company.AgencyPrice] DROP CONSTRAINT [FK_Company_AgencyPrice_Master_Language];
GO
IF OBJECT_ID(N'[dbo].[FK_Company_AgencyPrice_Master_Language1]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Company.AgencyPrice] DROP CONSTRAINT [FK_Company_AgencyPrice_Master_Language1];
GO
IF OBJECT_ID(N'[dbo].[FK_Company_Branch_Master_Country]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Master.BranchOffice] DROP CONSTRAINT [FK_Company_Branch_Master_Country];
GO
IF OBJECT_ID(N'[dbo].[FK_Company_Department_Company]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Company.Department] DROP CONSTRAINT [FK_Company_Department_Company];
GO
IF OBJECT_ID(N'[dbo].[FK_Company_Department_Company_Branch]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Master.Department] DROP CONSTRAINT [FK_Company_Department_Company_Branch];
GO
IF OBJECT_ID(N'[dbo].[FK_Company_Department_Master_Country]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Master.Department] DROP CONSTRAINT [FK_Company_Department_Master_Country];
GO
IF OBJECT_ID(N'[dbo].[FK_Company_Department_Master_Department]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Company.Department] DROP CONSTRAINT [FK_Company_Department_Master_Department];
GO
IF OBJECT_ID(N'[dbo].[FK_Company_Designation_Company_Branch]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Master.Designation] DROP CONSTRAINT [FK_Company_Designation_Company_Branch];
GO
IF OBJECT_ID(N'[dbo].[FK_Company_Designation_Company_Department]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Master.Designation] DROP CONSTRAINT [FK_Company_Designation_Company_Department];
GO
IF OBJECT_ID(N'[dbo].[FK_Company_Designation_Company_Division]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Master.Designation] DROP CONSTRAINT [FK_Company_Designation_Company_Division];
GO
IF OBJECT_ID(N'[dbo].[FK_Company_Designation_Company_Team]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Master.Designation] DROP CONSTRAINT [FK_Company_Designation_Company_Team];
GO
IF OBJECT_ID(N'[dbo].[FK_Company_Designation_Master_Country]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Master.Designation] DROP CONSTRAINT [FK_Company_Designation_Master_Country];
GO
IF OBJECT_ID(N'[dbo].[FK_Company_Team_Company_Branch]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Master.Team] DROP CONSTRAINT [FK_Company_Team_Company_Branch];
GO
IF OBJECT_ID(N'[dbo].[FK_Company_Team_Company_Department]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Master.Team] DROP CONSTRAINT [FK_Company_Team_Company_Department];
GO
IF OBJECT_ID(N'[dbo].[FK_Company_Team_Company_Division]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Master.Team] DROP CONSTRAINT [FK_Company_Team_Company_Division];
GO
IF OBJECT_ID(N'[dbo].[FK_Company_Team_Master_Country]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Master.Team] DROP CONSTRAINT [FK_Company_Team_Master_Country];
GO
IF OBJECT_ID(N'[dbo].[FK_Company_TeamToMarket_Company_Market]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Master.TeamToMarket] DROP CONSTRAINT [FK_Company_TeamToMarket_Company_Market];
GO
IF OBJECT_ID(N'[dbo].[FK_Company_TeamToMarket_Company_Team]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Master.TeamToMarket] DROP CONSTRAINT [FK_Company_TeamToMarket_Company_Team];
GO
IF OBJECT_ID(N'[dbo].[FK_Company_TeamToMarket_Company_TeamToMarket]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Master.TeamToMarket] DROP CONSTRAINT [FK_Company_TeamToMarket_Company_TeamToMarket];
GO
IF OBJECT_ID(N'[dbo].[FK_Company_TransproPartner_Company]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Company.TransproPartner] DROP CONSTRAINT [FK_Company_TransproPartner_Company];
GO
IF OBJECT_ID(N'[dbo].[FK_Company_TransproPartner_Master_Bank]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Company.TransproPartner] DROP CONSTRAINT [FK_Company_TransproPartner_Master_Bank];
GO
IF OBJECT_ID(N'[dbo].[FK_Company_TransproPartner_Master_BankAccountType]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Company.TransproPartner] DROP CONSTRAINT [FK_Company_TransproPartner_Master_BankAccountType];
GO
IF OBJECT_ID(N'[dbo].[FK_Company_TransproPartner_Master_BankBranch]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Company.TransproPartner] DROP CONSTRAINT [FK_Company_TransproPartner_Master_BankBranch];
GO
IF OBJECT_ID(N'[dbo].[FK_Company_Company]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Company] DROP CONSTRAINT [FK_Company_Company];
GO
IF OBJECT_ID(N'[dbo].[FK_Company_Master_DeliveryMethod]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Company] DROP CONSTRAINT [FK_Company_Master_DeliveryMethod];
GO
IF OBJECT_ID(N'[dbo].[FK_Company_Master_DeliveryMethod1]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Company] DROP CONSTRAINT [FK_Company_Master_DeliveryMethod1];
GO
IF OBJECT_ID(N'[dbo].[FK_Company_Master_DeliveryMethod2]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Company] DROP CONSTRAINT [FK_Company_Master_DeliveryMethod2];
GO
IF OBJECT_ID(N'[dbo].[FK_Company_Master_PartnerServiceType]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Company] DROP CONSTRAINT [FK_Company_Master_PartnerServiceType];
GO
IF OBJECT_ID(N'[dbo].[FK_CompanyAgentBusiness_Master_AgentBusiness]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[CompanyAgentBusiness] DROP CONSTRAINT [FK_CompanyAgentBusiness_Master_AgentBusiness];
GO
IF OBJECT_ID(N'[dbo].[FK_CompanyAgentCharacterstics_Master_AgentCharacterstics]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[CompanyAgentCharacterstics] DROP CONSTRAINT [FK_CompanyAgentCharacterstics_Master_AgentCharacterstics];
GO
IF OBJECT_ID(N'[dbo].[FK_CompanyAgentDesignation_Master_AgentFreeDesignation]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[CompanyAgentDesignation] DROP CONSTRAINT [FK_CompanyAgentDesignation_Master_AgentFreeDesignation];
GO
IF OBJECT_ID(N'[dbo].[FK_CompanyBusinessInformation_Master_CompanyBusinessService]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[CompanyBusinessInformation] DROP CONSTRAINT [FK_CompanyBusinessInformation_Master_CompanyBusinessService];
GO
IF OBJECT_ID(N'[dbo].[FK_CompanyBusinessInformation_Master_CompanyBusinessSpeciality]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[CompanyBusinessInformation] DROP CONSTRAINT [FK_CompanyBusinessInformation_Master_CompanyBusinessSpeciality];
GO
IF OBJECT_ID(N'[dbo].[FK_CompanyBusinessInformation_Master_Language1]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[CompanyBusinessInformation] DROP CONSTRAINT [FK_CompanyBusinessInformation_Master_Language1];
GO
IF OBJECT_ID(N'[dbo].[FK_CompanyBusinessInformation_Master_Language2]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[CompanyBusinessInformation] DROP CONSTRAINT [FK_CompanyBusinessInformation_Master_Language2];
GO
IF OBJECT_ID(N'[dbo].[FK_CompanyIndustryClassification_Company]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[CompanyIndustryClassification] DROP CONSTRAINT [FK_CompanyIndustryClassification_Company];
GO
IF OBJECT_ID(N'[dbo].[FK_CompanyIndustryClassification_Master_CompanyIndustryClassification]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[CompanyIndustryClassification] DROP CONSTRAINT [FK_CompanyIndustryClassification_Master_CompanyIndustryClassification];
GO
IF OBJECT_ID(N'[dbo].[FK_CompanyIndustryClassification_Master_CompanyIndustryClassificationItem]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[CompanyIndustryClassification] DROP CONSTRAINT [FK_CompanyIndustryClassification_Master_CompanyIndustryClassificationItem];
GO
IF OBJECT_ID(N'[dbo].[FK_CompanyRFMAnalysis_AvgOrderedCompanyCurrency]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[CompanyRFMAnalysis] DROP CONSTRAINT [FK_CompanyRFMAnalysis_AvgOrderedCompanyCurrency];
GO
IF OBJECT_ID(N'[dbo].[FK_CompanyRFMAnalysis_AvgOrderedPersonCurrency]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[CompanyRFMAnalysis] DROP CONSTRAINT [FK_CompanyRFMAnalysis_AvgOrderedPersonCurrency];
GO
IF OBJECT_ID(N'[dbo].[FK_CompanyRFMAnalysis_AvgQuotCompanyCurrency]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[CompanyRFMAnalysis] DROP CONSTRAINT [FK_CompanyRFMAnalysis_AvgQuotCompanyCurrency];
GO
IF OBJECT_ID(N'[dbo].[FK_CompanyRFMAnalysis_AvgQuotPersonCurrency]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[CompanyRFMAnalysis] DROP CONSTRAINT [FK_CompanyRFMAnalysis_AvgQuotPersonCurrency];
GO
IF OBJECT_ID(N'[dbo].[FK_CompanyTradingCategory_Master_CompanyTradingCategory]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[CompanyTradingCategory] DROP CONSTRAINT [FK_CompanyTradingCategory_Master_CompanyTradingCategory];
GO
IF OBJECT_ID(N'[dbo].[FK_CompanyTradingCategory_Master_CompanyTradingCategoryItem]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[CompanyTradingCategory] DROP CONSTRAINT [FK_CompanyTradingCategory_Master_CompanyTradingCategoryItem];
GO
IF OBJECT_ID(N'[dbo].[FK_ContactUs_UserInformation]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ContactUs] DROP CONSTRAINT [FK_ContactUs_UserInformation];
GO
IF OBJECT_ID(N'[dbo].[FK_CustomerEvaluation_Web_Company]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[OrderEvaluationByCustomer] DROP CONSTRAINT [FK_CustomerEvaluation_Web_Company];
GO
IF OBJECT_ID(N'[dbo].[FK_CustomerEvaluation_Web_CustomerEvaluation_Web]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[OrderEvaluationByCustomer] DROP CONSTRAINT [FK_CustomerEvaluation_Web_CustomerEvaluation_Web];
GO
IF OBJECT_ID(N'[dbo].[FK_CustomerEvaluation_Web_Staff]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[OrderEvaluationByCustomer] DROP CONSTRAINT [FK_CustomerEvaluation_Web_Staff];
GO
IF OBJECT_ID(N'[dbo].[FK_EmailDeliverySettings_Company]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[EmailDeliverySettings] DROP CONSTRAINT [FK_EmailDeliverySettings_Company];
GO
IF OBJECT_ID(N'[dbo].[FK_EmailDeliverySettings_Staff]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[EmailDeliverySettings] DROP CONSTRAINT [FK_EmailDeliverySettings_Staff];
GO
IF OBJECT_ID(N'[dbo].[FK_Employee_Master_BranchOffice]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Employee] DROP CONSTRAINT [FK_Employee_Master_BranchOffice];
GO
IF OBJECT_ID(N'[dbo].[FK_Employee_Master_BranchOffice1]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Employee] DROP CONSTRAINT [FK_Employee_Master_BranchOffice1];
GO
IF OBJECT_ID(N'[dbo].[FK_Employee_Master_Country]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Employee] DROP CONSTRAINT [FK_Employee_Master_Country];
GO
IF OBJECT_ID(N'[dbo].[FK_Employee_Master_Department]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Employee] DROP CONSTRAINT [FK_Employee_Master_Department];
GO
IF OBJECT_ID(N'[dbo].[FK_ErrorLog_UserInformation]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ErrorLog] DROP CONSTRAINT [FK_ErrorLog_UserInformation];
GO
IF OBJECT_ID(N'[dbo].[FK_Estimation_Approver]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Estimation] DROP CONSTRAINT [FK_Estimation_Approver];
GO
IF OBJECT_ID(N'[dbo].[FK_Estimation_Assistant]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Estimation] DROP CONSTRAINT [FK_Estimation_Assistant];
GO
IF OBJECT_ID(N'[dbo].[FK_Estimation_Company]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Estimation] DROP CONSTRAINT [FK_Estimation_Company];
GO
IF OBJECT_ID(N'[dbo].[FK_Estimation_Coordinator]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Estimation] DROP CONSTRAINT [FK_Estimation_Coordinator];
GO
IF OBJECT_ID(N'[dbo].[FK_Estimation_LargeSales]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Estimation] DROP CONSTRAINT [FK_Estimation_LargeSales];
GO
IF OBJECT_ID(N'[dbo].[FK_Estimation_Master_Currency]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Estimation] DROP CONSTRAINT [FK_Estimation_Master_Currency];
GO
IF OBJECT_ID(N'[dbo].[FK_Estimation_Master_EstimationRoutes]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Estimation] DROP CONSTRAINT [FK_Estimation_Master_EstimationRoutes];
GO
IF OBJECT_ID(N'[dbo].[FK_Estimation_Master_EstimationType]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Estimation] DROP CONSTRAINT [FK_Estimation_Master_EstimationType];
GO
IF OBJECT_ID(N'[dbo].[FK_Estimation_OutwardSales]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Estimation] DROP CONSTRAINT [FK_Estimation_OutwardSales];
GO
IF OBJECT_ID(N'[dbo].[FK_Estimation_SalesPerson]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Estimation] DROP CONSTRAINT [FK_Estimation_SalesPerson];
GO
IF OBJECT_ID(N'[dbo].[FK_EstimationActions_Estimation]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[EstimationActions] DROP CONSTRAINT [FK_EstimationActions_Estimation];
GO
IF OBJECT_ID(N'[dbo].[FK_EstimationApproval_Employee]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[EstimationApproval] DROP CONSTRAINT [FK_EstimationApproval_Employee];
GO
IF OBJECT_ID(N'[dbo].[FK_EstimationApproval_Estimation]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[EstimationApproval] DROP CONSTRAINT [FK_EstimationApproval_Estimation];
GO
IF OBJECT_ID(N'[dbo].[FK_EstimationCompetency_Estimation]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[EstimationCompetency] DROP CONSTRAINT [FK_EstimationCompetency_Estimation];
GO
IF OBJECT_ID(N'[dbo].[FK_EstimationDeliveryFileType_Estimation]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[EstimationDeliveryFileType] DROP CONSTRAINT [FK_EstimationDeliveryFileType_Estimation];
GO
IF OBJECT_ID(N'[dbo].[FK_EstimationDetails_Estimation]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[EstimationDetails] DROP CONSTRAINT [FK_EstimationDetails_Estimation];
GO
IF OBJECT_ID(N'[dbo].[FK_EstimationDetails_SourceLanguage]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[EstimationDetails] DROP CONSTRAINT [FK_EstimationDetails_SourceLanguage];
GO
IF OBJECT_ID(N'[dbo].[FK_EstimationDetails_TargetLanguage]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[EstimationDetails] DROP CONSTRAINT [FK_EstimationDetails_TargetLanguage];
GO
IF OBJECT_ID(N'[dbo].[FK_EstimationFiles_Estimation]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[EstimationFiles] DROP CONSTRAINT [FK_EstimationFiles_Estimation];
GO
IF OBJECT_ID(N'[dbo].[FK_EstimationFiles_EstimationDetails]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[EstimationFiles] DROP CONSTRAINT [FK_EstimationFiles_EstimationDetails];
GO
IF OBJECT_ID(N'[dbo].[FK_EstimationWorkContent_Estimation]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[EstimationWorkContent] DROP CONSTRAINT [FK_EstimationWorkContent_Estimation];
GO
IF OBJECT_ID(N'[dbo].[FK_EstmationNarrationExpense_Estimation]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[EstimationNarrationExpense] DROP CONSTRAINT [FK_EstmationNarrationExpense_Estimation];
GO
IF OBJECT_ID(N'[dbo].[FK_HiworkLanguagePrice_Master_Currency]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[HiworkLanguagePrice] DROP CONSTRAINT [FK_HiworkLanguagePrice_Master_Currency];
GO
IF OBJECT_ID(N'[dbo].[FK_HiworkLanguagePrice_SourceLanguage]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[HiworkLanguagePrice] DROP CONSTRAINT [FK_HiworkLanguagePrice_SourceLanguage];
GO
IF OBJECT_ID(N'[dbo].[FK_HiworkLanguagePrice_TargetLanguage]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[HiworkLanguagePrice] DROP CONSTRAINT [FK_HiworkLanguagePrice_TargetLanguage];
GO
IF OBJECT_ID(N'[dbo].[FK_Master_Address_Master_Country]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Master.Address] DROP CONSTRAINT [FK_Master_Address_Master_Country];
GO
IF OBJECT_ID(N'[dbo].[FK_Master_Bank_Master_Country]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Master.Bank] DROP CONSTRAINT [FK_Master_Bank_Master_Country];
GO
IF OBJECT_ID(N'[dbo].[FK_Master_Bank_Master_Currency]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Master.Bank] DROP CONSTRAINT [FK_Master_Bank_Master_Currency];
GO
IF OBJECT_ID(N'[dbo].[FK_Master_BankAccount_Master_Bank]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Master.BankAccount] DROP CONSTRAINT [FK_Master_BankAccount_Master_Bank];
GO
IF OBJECT_ID(N'[dbo].[FK_Master_BankAccount_Master_BankAccountType]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Master.BankAccount] DROP CONSTRAINT [FK_Master_BankAccount_Master_BankAccountType];
GO
IF OBJECT_ID(N'[dbo].[FK_Master_BankAccount_Master_BankBranch]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Master.BankAccount] DROP CONSTRAINT [FK_Master_BankAccount_Master_BankBranch];
GO
IF OBJECT_ID(N'[dbo].[FK_Master_BankBranch_Master_Bank]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Master.BankBranch] DROP CONSTRAINT [FK_Master_BankBranch_Master_Bank];
GO
IF OBJECT_ID(N'[dbo].[FK_Master_CompanyIndustryClassificationItem_Master_CompanyIndustryClassification]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Master.CompanyIndustryClassificationItem] DROP CONSTRAINT [FK_Master_CompanyIndustryClassificationItem_Master_CompanyIndustryClassification];
GO
IF OBJECT_ID(N'[dbo].[FK_Master_CompanyTradingCategoryItem_Master_CompanyTradingCategory]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Master.CompanyTradingCategoryItem] DROP CONSTRAINT [FK_Master_CompanyTradingCategoryItem_Master_CompanyTradingCategory];
GO
IF OBJECT_ID(N'[dbo].[FK_Master_Country_Master_Currency]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Master.Country] DROP CONSTRAINT [FK_Master_Country_Master_Currency];
GO
IF OBJECT_ID(N'[dbo].[FK_Master_Culture_Master_Country]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Master.Culture] DROP CONSTRAINT [FK_Master_Culture_Master_Country];
GO
IF OBJECT_ID(N'[dbo].[FK_Master_CurrencyRate_Master_Currency]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Master.CurrencyRate] DROP CONSTRAINT [FK_Master_CurrencyRate_Master_Currency];
GO
IF OBJECT_ID(N'[dbo].[FK_Master_Division_Master_Country]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Master.Division] DROP CONSTRAINT [FK_Master_Division_Master_Country];
GO
IF OBJECT_ID(N'[dbo].[FK_Master_EstimationServiceType_Master_EstimationType]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Master.EstimationServiceType] DROP CONSTRAINT [FK_Master_EstimationServiceType_Master_EstimationType];
GO
IF OBJECT_ID(N'[dbo].[FK_Master_EstimationSubSpecializedField_Master_EstimationSpecializedField]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Master.EstimationSubSpecializedField] DROP CONSTRAINT [FK_Master_EstimationSubSpecializedField_Master_EstimationSpecializedField];
GO
IF OBJECT_ID(N'[dbo].[FK_Master_Penalty_Application]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Master.Penalty] DROP CONSTRAINT [FK_Master_Penalty_Application];
GO
IF OBJECT_ID(N'[dbo].[FK_Master_StaffBusinessCategoryDetails_Master_StaffBusinessCategory]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Master.StaffBusinessCategoryDetails] DROP CONSTRAINT [FK_Master_StaffBusinessCategoryDetails_Master_StaffBusinessCategory];
GO
IF OBJECT_ID(N'[dbo].[FK_Master_StaffDevelopmentSkillItem_Master_StaffDevelopmentSkill]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Master.StaffDevelopmentSkillItem] DROP CONSTRAINT [FK_Master_StaffDevelopmentSkillItem_Master_StaffDevelopmentSkill];
GO
IF OBJECT_ID(N'[dbo].[FK_Master_StaffKnowledgeFieldItem_Master_StaffKnowledgeField]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Master.StaffKnowledgeFieldItem] DROP CONSTRAINT [FK_Master_StaffKnowledgeFieldItem_Master_StaffKnowledgeField];
GO
IF OBJECT_ID(N'[dbo].[FK_Master_StaffMajorSubjectDetails_Master_StaffMajorSubject]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Master.StaffMajorSubjectDetails] DROP CONSTRAINT [FK_Master_StaffMajorSubjectDetails_Master_StaffMajorSubject];
GO
IF OBJECT_ID(N'[dbo].[FK_Master_UnitPrice_Master_Currency]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Master.UnitPriceSetting] DROP CONSTRAINT [FK_Master_UnitPrice_Master_Currency];
GO
IF OBJECT_ID(N'[dbo].[FK_Master_UnitPrice_Master_Unit]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Master.UnitPriceSetting] DROP CONSTRAINT [FK_Master_UnitPrice_Master_Unit];
GO
IF OBJECT_ID(N'[dbo].[FK_Master_UnitPrice_SourceLanguage]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Master.UnitPriceSetting] DROP CONSTRAINT [FK_Master_UnitPrice_SourceLanguage];
GO
IF OBJECT_ID(N'[dbo].[FK_Master_UnitPrice_TargetLanguage]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Master.UnitPriceSetting] DROP CONSTRAINT [FK_Master_UnitPrice_TargetLanguage];
GO
IF OBJECT_ID(N'[dbo].[FK_Master_UnitPriceSetting_Master_UnitPriceSetting]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Master.UnitPriceSetting] DROP CONSTRAINT [FK_Master_UnitPriceSetting_Master_UnitPriceSetting];
GO
IF OBJECT_ID(N'[dbo].[FK_Menu_Menu]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Menu] DROP CONSTRAINT [FK_Menu_Menu];
GO
IF OBJECT_ID(N'[dbo].[FK_Menu_Screen]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Menu] DROP CONSTRAINT [FK_Menu_Screen];
GO
IF OBJECT_ID(N'[dbo].[FK_Order_DeliveryDocuments_Order_DeliveryDocuments]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Order.DeliveryDocuments] DROP CONSTRAINT [FK_Order_DeliveryDocuments_Order_DeliveryDocuments];
GO
IF OBJECT_ID(N'[dbo].[FK_Order_StaffAllowance_Order]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Order.StaffAllowance] DROP CONSTRAINT [FK_Order_StaffAllowance_Order];
GO
IF OBJECT_ID(N'[dbo].[FK_Order_Web_Company]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Order.Web] DROP CONSTRAINT [FK_Order_Web_Company];
GO
IF OBJECT_ID(N'[dbo].[FK_Order_Web_Master_Currency]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Order.Web] DROP CONSTRAINT [FK_Order_Web_Master_Currency];
GO
IF OBJECT_ID(N'[dbo].[FK_Order_Web_Master_EstimationSpecializedField]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Order.Web] DROP CONSTRAINT [FK_Order_Web_Master_EstimationSpecializedField];
GO
IF OBJECT_ID(N'[dbo].[FK_Order_Web_Master_Language]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Order.Web] DROP CONSTRAINT [FK_Order_Web_Master_Language];
GO
IF OBJECT_ID(N'[dbo].[FK_Order_Web_Staff]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Order.Web] DROP CONSTRAINT [FK_Order_Web_Staff];
GO
IF OBJECT_ID(N'[dbo].[FK_Order_Web_TargetLanguage]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Order.Web] DROP CONSTRAINT [FK_Order_Web_TargetLanguage];
GO
IF OBJECT_ID(N'[dbo].[FK_Order_Company]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Order] DROP CONSTRAINT [FK_Order_Company];
GO
IF OBJECT_ID(N'[dbo].[FK_Order_Estimation]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Order] DROP CONSTRAINT [FK_Order_Estimation];
GO
IF OBJECT_ID(N'[dbo].[FK_OrderAppointed_Web_Company]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[OrderAppointedToStaff.Web] DROP CONSTRAINT [FK_OrderAppointed_Web_Company];
GO
IF OBJECT_ID(N'[dbo].[FK_OrderAppointed_Web_Order_Web]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[OrderAppointedToStaff.Web] DROP CONSTRAINT [FK_OrderAppointed_Web_Order_Web];
GO
IF OBJECT_ID(N'[dbo].[FK_OrderAppointed_Web_Staff]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[OrderAppointedToStaff.Web] DROP CONSTRAINT [FK_OrderAppointed_Web_Staff];
GO
IF OBJECT_ID(N'[dbo].[FK_OrderDetails_EstimationDetails]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[OrderDetails] DROP CONSTRAINT [FK_OrderDetails_EstimationDetails];
GO
IF OBJECT_ID(N'[dbo].[FK_OrderDetails_Order]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[OrderDetails] DROP CONSTRAINT [FK_OrderDetails_Order];
GO
IF OBJECT_ID(N'[dbo].[FK_OrderDetails_Staff]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[OrderDetails] DROP CONSTRAINT [FK_OrderDetails_Staff];
GO
IF OBJECT_ID(N'[dbo].[FK_OrderRequestedToStaff_Web_Company]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[OrderRequestedToStaff.Web] DROP CONSTRAINT [FK_OrderRequestedToStaff_Web_Company];
GO
IF OBJECT_ID(N'[dbo].[FK_OrderRequestedToStaff_Web_Order_Web]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[OrderRequestedToStaff.Web] DROP CONSTRAINT [FK_OrderRequestedToStaff_Web_Order_Web];
GO
IF OBJECT_ID(N'[dbo].[FK_OrderRequestedToStaff_Web_Staff]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[OrderRequestedToStaff.Web] DROP CONSTRAINT [FK_OrderRequestedToStaff_Web_Staff];
GO
IF OBJECT_ID(N'[dbo].[FK_Role_UserInformation]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Role] DROP CONSTRAINT [FK_Role_UserInformation];
GO
IF OBJECT_ID(N'[dbo].[FK_RoleWiseOperationPermissions_Roles]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[RoleWiseOperationPermission] DROP CONSTRAINT [FK_RoleWiseOperationPermissions_Roles];
GO
IF OBJECT_ID(N'[dbo].[FK_RoleWiseOperationPermissions_ScreenOperations]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[RoleWiseOperationPermission] DROP CONSTRAINT [FK_RoleWiseOperationPermissions_ScreenOperations];
GO
IF OBJECT_ID(N'[dbo].[FK_RoleWiseScreenPermission_Screen]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[RoleWiseScreenPermission] DROP CONSTRAINT [FK_RoleWiseScreenPermission_Screen];
GO
IF OBJECT_ID(N'[dbo].[FK_RoleWiseScreenPermissions_Roles]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[RoleWiseScreenPermission] DROP CONSTRAINT [FK_RoleWiseScreenPermissions_Roles];
GO
IF OBJECT_ID(N'[dbo].[FK_ScreenOperation_Screen]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ScreenOperation] DROP CONSTRAINT [FK_ScreenOperation_Screen];
GO
IF OBJECT_ID(N'[dbo].[FK_Screens_Modules]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Screen] DROP CONSTRAINT [FK_Screens_Modules];
GO
IF OBJECT_ID(N'[dbo].[FK_Staff_BankAccountInfo_Master_Bank]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Staff.BankAccountInfo] DROP CONSTRAINT [FK_Staff_BankAccountInfo_Master_Bank];
GO
IF OBJECT_ID(N'[dbo].[FK_Staff_BankAccountInfo_Master_BankAccountType]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Staff.BankAccountInfo] DROP CONSTRAINT [FK_Staff_BankAccountInfo_Master_BankAccountType];
GO
IF OBJECT_ID(N'[dbo].[FK_Staff_BankAccountInfo_Master_BankBranch]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Staff.BankAccountInfo] DROP CONSTRAINT [FK_Staff_BankAccountInfo_Master_BankBranch];
GO
IF OBJECT_ID(N'[dbo].[FK_Staff_BankAccountInfo_Staff]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Staff.BankAccountInfo] DROP CONSTRAINT [FK_Staff_BankAccountInfo_Staff];
GO
IF OBJECT_ID(N'[dbo].[FK_Staff_CurrentStates_Staff]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Staff.CurrentStates] DROP CONSTRAINT [FK_Staff_CurrentStates_Staff];
GO
IF OBJECT_ID(N'[dbo].[FK_Staff_CurrentStates_Staff_CurrentStates]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Staff.CurrentStates] DROP CONSTRAINT [FK_Staff_CurrentStates_Staff_CurrentStates];
GO
IF OBJECT_ID(N'[dbo].[FK_Staff_DevelopmentSkill_Master_StaffDevelopmentSkill]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Staff.DevelopmentSkill] DROP CONSTRAINT [FK_Staff_DevelopmentSkill_Master_StaffDevelopmentSkill];
GO
IF OBJECT_ID(N'[dbo].[FK_Staff_DevelopmentSkill_Master_StaffDevelopmentSkillItem]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Staff.DevelopmentSkill] DROP CONSTRAINT [FK_Staff_DevelopmentSkill_Master_StaffDevelopmentSkillItem];
GO
IF OBJECT_ID(N'[dbo].[FK_Staff_DevelopmentSkill_Staff]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Staff.DevelopmentSkill] DROP CONSTRAINT [FK_Staff_DevelopmentSkill_Staff];
GO
IF OBJECT_ID(N'[dbo].[FK_Staff_EditingproInformation_Staff]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Staff.EditingproInformation] DROP CONSTRAINT [FK_Staff_EditingproInformation_Staff];
GO
IF OBJECT_ID(N'[dbo].[FK_Staff_EducationalHistory_Master_Country]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Staff.EducationalHistory] DROP CONSTRAINT [FK_Staff_EducationalHistory_Master_Country];
GO
IF OBJECT_ID(N'[dbo].[FK_Staff_EducationalHistory_Master_StaffMajorSubject]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Staff.EducationalHistory] DROP CONSTRAINT [FK_Staff_EducationalHistory_Master_StaffMajorSubject];
GO
IF OBJECT_ID(N'[dbo].[FK_Staff_EducationalHistory_Staff]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Staff.EducationalHistory] DROP CONSTRAINT [FK_Staff_EducationalHistory_Staff];
GO
IF OBJECT_ID(N'[dbo].[FK_Staff_EducationalHistory_staffeducationalDegree]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Staff.EducationalHistory] DROP CONSTRAINT [FK_Staff_EducationalHistory_staffeducationalDegree];
GO
IF OBJECT_ID(N'[dbo].[FK_Staff_InterpretationSpecialFields_Master_StaffInterpretationFields]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Staff.InterpretationSpecialFields] DROP CONSTRAINT [FK_Staff_InterpretationSpecialFields_Master_StaffInterpretationFields];
GO
IF OBJECT_ID(N'[dbo].[FK_Staff_InterpretationSpecialFields_Staff]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Staff.InterpretationSpecialFields] DROP CONSTRAINT [FK_Staff_InterpretationSpecialFields_Staff];
GO
IF OBJECT_ID(N'[dbo].[FK_Staff_JobCategories_Master_StaffJobCategory]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Staff.JobCategories] DROP CONSTRAINT [FK_Staff_JobCategories_Master_StaffJobCategory];
GO
IF OBJECT_ID(N'[dbo].[FK_Staff_JobCategories_Staff]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Staff.JobCategories] DROP CONSTRAINT [FK_Staff_JobCategories_Staff];
GO
IF OBJECT_ID(N'[dbo].[FK_Staff_JobCategoryDetails_Staff_JobCategory]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Master.StaffJobCategoryDetails] DROP CONSTRAINT [FK_Staff_JobCategoryDetails_Staff_JobCategory];
GO
IF OBJECT_ID(N'[dbo].[FK_Staff_JobHistory_Master_StaffBusinessCategory]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Staff.JobHistory] DROP CONSTRAINT [FK_Staff_JobHistory_Master_StaffBusinessCategory];
GO
IF OBJECT_ID(N'[dbo].[FK_Staff_JobHistory_Master_StaffBusinessCategoryDetails]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Staff.JobHistory] DROP CONSTRAINT [FK_Staff_JobHistory_Master_StaffBusinessCategoryDetails];
GO
IF OBJECT_ID(N'[dbo].[FK_Staff_JobHistory_Master_StaffJobCategory]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Staff.JobHistory] DROP CONSTRAINT [FK_Staff_JobHistory_Master_StaffJobCategory];
GO
IF OBJECT_ID(N'[dbo].[FK_Staff_JobHistory_Master_StaffJobCategory1]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Staff.JobHistory] DROP CONSTRAINT [FK_Staff_JobHistory_Master_StaffJobCategory1];
GO
IF OBJECT_ID(N'[dbo].[FK_Staff_JobHistory_Master_StaffJobCategoryDetails]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Staff.JobHistory] DROP CONSTRAINT [FK_Staff_JobHistory_Master_StaffJobCategoryDetails];
GO
IF OBJECT_ID(N'[dbo].[FK_Staff_JobHistory_Master_StaffJobCategoryDetails1]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Staff.JobHistory] DROP CONSTRAINT [FK_Staff_JobHistory_Master_StaffJobCategoryDetails1];
GO
IF OBJECT_ID(N'[dbo].[FK_Staff_JobHistory_Staff]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Staff.JobHistory] DROP CONSTRAINT [FK_Staff_JobHistory_Staff];
GO
IF OBJECT_ID(N'[dbo].[FK_Staff_JobHistory_Staff_Master_StaffEmplymentType]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Staff.JobHistory] DROP CONSTRAINT [FK_Staff_JobHistory_Staff_Master_StaffEmplymentType];
GO
IF OBJECT_ID(N'[dbo].[FK_Staff_KnowledgeFields_Master_StaffKnowledgeField]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Staff.KnowledgeFields] DROP CONSTRAINT [FK_Staff_KnowledgeFields_Master_StaffKnowledgeField];
GO
IF OBJECT_ID(N'[dbo].[FK_Staff_KnowledgeFields_Master_StaffKnowledgeFieldItem]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Staff.KnowledgeFields] DROP CONSTRAINT [FK_Staff_KnowledgeFields_Master_StaffKnowledgeFieldItem];
GO
IF OBJECT_ID(N'[dbo].[FK_Staff_KnowledgeFields_Staff_KnowledgeFields]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Staff.KnowledgeFields] DROP CONSTRAINT [FK_Staff_KnowledgeFields_Staff_KnowledgeFields];
GO
IF OBJECT_ID(N'[dbo].[FK_Staff_ManagementExperience_Staff]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Staff.ManagementExperience] DROP CONSTRAINT [FK_Staff_ManagementExperience_Staff];
GO
IF OBJECT_ID(N'[dbo].[FK_Staff_NarrationInformation_Staff]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Staff.NarrationInformation] DROP CONSTRAINT [FK_Staff_NarrationInformation_Staff];
GO
IF OBJECT_ID(N'[dbo].[FK_Staff_NarrationVoiceFiles_Staff]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Staff.NarrationVoiceFiles] DROP CONSTRAINT [FK_Staff_NarrationVoiceFiles_Staff];
GO
IF OBJECT_ID(N'[dbo].[FK_Staff_ProfessionalSpeciality_Master_StaffProfession]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Staff.ProfessionalSpeciality] DROP CONSTRAINT [FK_Staff_ProfessionalSpeciality_Master_StaffProfession];
GO
IF OBJECT_ID(N'[dbo].[FK_Staff_ProfessionalSpeciality_Staff]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Staff.ProfessionalSpeciality] DROP CONSTRAINT [FK_Staff_ProfessionalSpeciality_Staff];
GO
IF OBJECT_ID(N'[dbo].[FK_Staff_ServiceTypes_Staff]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Staff.ServiceTypes] DROP CONSTRAINT [FK_Staff_ServiceTypes_Staff];
GO
IF OBJECT_ID(N'[dbo].[FK_Staff_ServiceTypes_Staff_ServiceTypes]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Staff.ServiceTypes] DROP CONSTRAINT [FK_Staff_ServiceTypes_Staff_ServiceTypes];
GO
IF OBJECT_ID(N'[dbo].[FK_Staff_SkillCertificate_ForeignLanguage1]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Staff.SkillCertificate] DROP CONSTRAINT [FK_Staff_SkillCertificate_ForeignLanguage1];
GO
IF OBJECT_ID(N'[dbo].[FK_Staff_SkillCertificate_ForeignLanguage2]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Staff.SkillCertificate] DROP CONSTRAINT [FK_Staff_SkillCertificate_ForeignLanguage2];
GO
IF OBJECT_ID(N'[dbo].[FK_Staff_SkillCertificate_ForeignLanguage3]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Staff.SkillCertificate] DROP CONSTRAINT [FK_Staff_SkillCertificate_ForeignLanguage3];
GO
IF OBJECT_ID(N'[dbo].[FK_Staff_SkillCertificate_Master_Language]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Staff.SkillCertificate] DROP CONSTRAINT [FK_Staff_SkillCertificate_Master_Language];
GO
IF OBJECT_ID(N'[dbo].[FK_Staff_SkillCertificate_Staff]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Staff.SkillCertificate] DROP CONSTRAINT [FK_Staff_SkillCertificate_Staff];
GO
IF OBJECT_ID(N'[dbo].[FK_Staff_TechnicalCertificate_Staff]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Staff.TechnicalCertificate] DROP CONSTRAINT [FK_Staff_TechnicalCertificate_Staff];
GO
IF OBJECT_ID(N'[dbo].[FK_Staff_TechnicalSkillItems_Staff_TechnicalSkillCategory]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Master.StaffTechnicalSkillItems] DROP CONSTRAINT [FK_Staff_TechnicalSkillItems_Staff_TechnicalSkillCategory];
GO
IF OBJECT_ID(N'[dbo].[FK_Staff_TranslateInterpretExpertises_Staff]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Staff.TranslateInterpretExperience] DROP CONSTRAINT [FK_Staff_TranslateInterpretExpertises_Staff];
GO
IF OBJECT_ID(N'[dbo].[FK_Staff_TranslationSpecialFields_Master_StaffTranslationFields]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Staff.TranslationSpecialFields] DROP CONSTRAINT [FK_Staff_TranslationSpecialFields_Master_StaffTranslationFields];
GO
IF OBJECT_ID(N'[dbo].[FK_Staff_TranslationSpecialFields_Staff]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Staff.TranslationSpecialFields] DROP CONSTRAINT [FK_Staff_TranslationSpecialFields_Staff];
GO
IF OBJECT_ID(N'[dbo].[FK_Staff_TransproInformation_Staff]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Staff.TransproInformation] DROP CONSTRAINT [FK_Staff_TransproInformation_Staff];
GO
IF OBJECT_ID(N'[dbo].[FK_Staff_Master_Country]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Staff] DROP CONSTRAINT [FK_Staff_Master_Country];
GO
IF OBJECT_ID(N'[dbo].[FK_Staff_Master_Language]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Staff] DROP CONSTRAINT [FK_Staff_Master_Language];
GO
IF OBJECT_ID(N'[dbo].[FK_Staff_Master_Language1]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Staff] DROP CONSTRAINT [FK_Staff_Master_Language1];
GO
IF OBJECT_ID(N'[dbo].[FK_Staff_Master_Language2]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Staff] DROP CONSTRAINT [FK_Staff_Master_Language2];
GO
IF OBJECT_ID(N'[dbo].[FK_Staff_Master_Language3]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Staff] DROP CONSTRAINT [FK_Staff_Master_Language3];
GO
IF OBJECT_ID(N'[dbo].[FK_Staff_Master_Language4]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Staff] DROP CONSTRAINT [FK_Staff_Master_Language4];
GO
IF OBJECT_ID(N'[dbo].[FK_StaffSoftwareSkill_Master_StaffSoftwareSkill]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Staff.SoftwareSkill] DROP CONSTRAINT [FK_StaffSoftwareSkill_Master_StaffSoftwareSkill];
GO
IF OBJECT_ID(N'[dbo].[FK_StaffSoftwareSkill_Staff]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Staff.SoftwareSkill] DROP CONSTRAINT [FK_StaffSoftwareSkill_Staff];
GO
IF OBJECT_ID(N'[dbo].[FK_TranslationLevel_Master_Currency]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[TranslationLevel] DROP CONSTRAINT [FK_TranslationLevel_Master_Currency];
GO
IF OBJECT_ID(N'[dbo].[FK_TransproLanguagePriceCategory_Master_Currency]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[TransproLanguagePriceCategory] DROP CONSTRAINT [FK_TransproLanguagePriceCategory_Master_Currency];
GO
IF OBJECT_ID(N'[dbo].[FK_TransproLanguagePriceCategory_Master_EstimationSpecializedField]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[TransproLanguagePriceCategory] DROP CONSTRAINT [FK_TransproLanguagePriceCategory_Master_EstimationSpecializedField];
GO
IF OBJECT_ID(N'[dbo].[FK_TransproLanguagePriceCategory_Master_EstimationSubSpecializedField]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[TransproLanguagePriceCategory] DROP CONSTRAINT [FK_TransproLanguagePriceCategory_Master_EstimationSubSpecializedField];
GO
IF OBJECT_ID(N'[dbo].[FK_TransproLanguagePriceCategory_SourceLanguage]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[TransproLanguagePriceCategory] DROP CONSTRAINT [FK_TransproLanguagePriceCategory_SourceLanguage];
GO
IF OBJECT_ID(N'[dbo].[FK_TransproLanguagePriceCategory_TargetLanguage]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[TransproLanguagePriceCategory] DROP CONSTRAINT [FK_TransproLanguagePriceCategory_TargetLanguage];
GO
IF OBJECT_ID(N'[CentralDBModelStoreContainer].[FK_TransproLanguagePriceDetails_TransproDeliveryPlanSetting]', 'F') IS NOT NULL
    ALTER TABLE [CentralDBModelStoreContainer].[TransproLanguagePriceDetails] DROP CONSTRAINT [FK_TransproLanguagePriceDetails_TransproDeliveryPlanSetting];
GO
IF OBJECT_ID(N'[CentralDBModelStoreContainer].[FK_TransproLanguagePriceDetails_TransproLanguagePriceCategory]', 'F') IS NOT NULL
    ALTER TABLE [CentralDBModelStoreContainer].[TransproLanguagePriceDetails] DROP CONSTRAINT [FK_TransproLanguagePriceDetails_TransproLanguagePriceCategory];
GO
IF OBJECT_ID(N'[dbo].[FK_UserInformation_Roles]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[UserInformation] DROP CONSTRAINT [FK_UserInformation_Roles];
GO
IF OBJECT_ID(N'[dbo].[FK_UserInformation_UserType]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[UserInformation] DROP CONSTRAINT [FK_UserInformation_UserType];
GO
IF OBJECT_ID(N'[dbo].[FK_UserInRole_Role]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[UserInRole] DROP CONSTRAINT [FK_UserInRole_Role];
GO
IF OBJECT_ID(N'[dbo].[FK_UserInRole_UserInformation]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[UserInRole] DROP CONSTRAINT [FK_UserInRole_UserInformation];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[AccessLog]', 'U') IS NOT NULL
    DROP TABLE [dbo].[AccessLog];
GO
IF OBJECT_ID(N'[dbo].[AdditionalOperationPermission]', 'U') IS NOT NULL
    DROP TABLE [dbo].[AdditionalOperationPermission];
GO
IF OBJECT_ID(N'[dbo].[AdditionalScreenPermission]', 'U') IS NOT NULL
    DROP TABLE [dbo].[AdditionalScreenPermission];
GO
IF OBJECT_ID(N'[dbo].[AdvertizementSettings]', 'U') IS NOT NULL
    DROP TABLE [dbo].[AdvertizementSettings];
GO
IF OBJECT_ID(N'[dbo].[Application]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Application];
GO
IF OBJECT_ID(N'[dbo].[Company]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Company];
GO
IF OBJECT_ID(N'[dbo].[Company.AgencyPrice]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Company.AgencyPrice];
GO
IF OBJECT_ID(N'[dbo].[Company.Department]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Company.Department];
GO
IF OBJECT_ID(N'[dbo].[Company.TransproPartner]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Company.TransproPartner];
GO
IF OBJECT_ID(N'[dbo].[CompanyAgentBusiness]', 'U') IS NOT NULL
    DROP TABLE [dbo].[CompanyAgentBusiness];
GO
IF OBJECT_ID(N'[dbo].[CompanyAgentCharacterstics]', 'U') IS NOT NULL
    DROP TABLE [dbo].[CompanyAgentCharacterstics];
GO
IF OBJECT_ID(N'[dbo].[CompanyAgentDesignation]', 'U') IS NOT NULL
    DROP TABLE [dbo].[CompanyAgentDesignation];
GO
IF OBJECT_ID(N'[dbo].[CompanyBusinessHistory]', 'U') IS NOT NULL
    DROP TABLE [dbo].[CompanyBusinessHistory];
GO
IF OBJECT_ID(N'[dbo].[CompanyBusinessInformation]', 'U') IS NOT NULL
    DROP TABLE [dbo].[CompanyBusinessInformation];
GO
IF OBJECT_ID(N'[dbo].[CompanyCooperativeInfo]', 'U') IS NOT NULL
    DROP TABLE [dbo].[CompanyCooperativeInfo];
GO
IF OBJECT_ID(N'[dbo].[CompanyIndustryClassification]', 'U') IS NOT NULL
    DROP TABLE [dbo].[CompanyIndustryClassification];
GO
IF OBJECT_ID(N'[dbo].[CompanyRFMAnalysis]', 'U') IS NOT NULL
    DROP TABLE [dbo].[CompanyRFMAnalysis];
GO
IF OBJECT_ID(N'[dbo].[CompanyShare]', 'U') IS NOT NULL
    DROP TABLE [dbo].[CompanyShare];
GO
IF OBJECT_ID(N'[dbo].[CompanyTradingCategory]', 'U') IS NOT NULL
    DROP TABLE [dbo].[CompanyTradingCategory];
GO
IF OBJECT_ID(N'[dbo].[ContactUs]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ContactUs];
GO
IF OBJECT_ID(N'[dbo].[EmailDeliverySettings]', 'U') IS NOT NULL
    DROP TABLE [dbo].[EmailDeliverySettings];
GO
IF OBJECT_ID(N'[dbo].[EmailHistory]', 'U') IS NOT NULL
    DROP TABLE [dbo].[EmailHistory];
GO
IF OBJECT_ID(N'[dbo].[EmailTemplate]', 'U') IS NOT NULL
    DROP TABLE [dbo].[EmailTemplate];
GO
IF OBJECT_ID(N'[dbo].[Employee]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Employee];
GO
IF OBJECT_ID(N'[dbo].[ErrorLog]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ErrorLog];
GO
IF OBJECT_ID(N'[dbo].[ErrorReportWeb]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ErrorReportWeb];
GO
IF OBJECT_ID(N'[dbo].[Estimation]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Estimation];
GO
IF OBJECT_ID(N'[dbo].[EstimationActions]', 'U') IS NOT NULL
    DROP TABLE [dbo].[EstimationActions];
GO
IF OBJECT_ID(N'[dbo].[EstimationActionType]', 'U') IS NOT NULL
    DROP TABLE [dbo].[EstimationActionType];
GO
IF OBJECT_ID(N'[dbo].[EstimationApproval]', 'U') IS NOT NULL
    DROP TABLE [dbo].[EstimationApproval];
GO
IF OBJECT_ID(N'[dbo].[EstimationCompetency]', 'U') IS NOT NULL
    DROP TABLE [dbo].[EstimationCompetency];
GO
IF OBJECT_ID(N'[dbo].[EstimationDeliveryFileType]', 'U') IS NOT NULL
    DROP TABLE [dbo].[EstimationDeliveryFileType];
GO
IF OBJECT_ID(N'[dbo].[EstimationDetails]', 'U') IS NOT NULL
    DROP TABLE [dbo].[EstimationDetails];
GO
IF OBJECT_ID(N'[dbo].[EstimationFiles]', 'U') IS NOT NULL
    DROP TABLE [dbo].[EstimationFiles];
GO
IF OBJECT_ID(N'[dbo].[EstimationNarrationExpense]', 'U') IS NOT NULL
    DROP TABLE [dbo].[EstimationNarrationExpense];
GO
IF OBJECT_ID(N'[dbo].[EstimationProject]', 'U') IS NOT NULL
    DROP TABLE [dbo].[EstimationProject];
GO
IF OBJECT_ID(N'[dbo].[EstimationRequestHistory]', 'U') IS NOT NULL
    DROP TABLE [dbo].[EstimationRequestHistory];
GO
IF OBJECT_ID(N'[dbo].[EstimationUserAccess]', 'U') IS NOT NULL
    DROP TABLE [dbo].[EstimationUserAccess];
GO
IF OBJECT_ID(N'[dbo].[EstimationWorkContent]', 'U') IS NOT NULL
    DROP TABLE [dbo].[EstimationWorkContent];
GO
IF OBJECT_ID(N'[dbo].[HiworkLanguagePrice]', 'U') IS NOT NULL
    DROP TABLE [dbo].[HiworkLanguagePrice];
GO
IF OBJECT_ID(N'[dbo].[Master.Address]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Master.Address];
GO
IF OBJECT_ID(N'[dbo].[Master.AgentBusiness]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Master.AgentBusiness];
GO
IF OBJECT_ID(N'[dbo].[Master.AgentCharacterstics]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Master.AgentCharacterstics];
GO
IF OBJECT_ID(N'[dbo].[Master.AgentFreeDesignation]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Master.AgentFreeDesignation];
GO
IF OBJECT_ID(N'[dbo].[Master.Bank]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Master.Bank];
GO
IF OBJECT_ID(N'[dbo].[Master.BankAccount]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Master.BankAccount];
GO
IF OBJECT_ID(N'[dbo].[Master.BankAccountType]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Master.BankAccountType];
GO
IF OBJECT_ID(N'[dbo].[Master.BankBranch]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Master.BankBranch];
GO
IF OBJECT_ID(N'[dbo].[Master.BranchOffice]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Master.BranchOffice];
GO
IF OBJECT_ID(N'[dbo].[Master.CompanyBusinessService]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Master.CompanyBusinessService];
GO
IF OBJECT_ID(N'[dbo].[Master.CompanyBusinessSpeciality]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Master.CompanyBusinessSpeciality];
GO
IF OBJECT_ID(N'[dbo].[Master.CompanyIndustryClassification]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Master.CompanyIndustryClassification];
GO
IF OBJECT_ID(N'[dbo].[Master.CompanyIndustryClassificationItem]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Master.CompanyIndustryClassificationItem];
GO
IF OBJECT_ID(N'[dbo].[Master.CompanyTradingCategory]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Master.CompanyTradingCategory];
GO
IF OBJECT_ID(N'[dbo].[Master.CompanyTradingCategoryItem]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Master.CompanyTradingCategoryItem];
GO
IF OBJECT_ID(N'[dbo].[Master.CompanyTradingDivision]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Master.CompanyTradingDivision];
GO
IF OBJECT_ID(N'[dbo].[Master.Country]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Master.Country];
GO
IF OBJECT_ID(N'[dbo].[Master.Culture]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Master.Culture];
GO
IF OBJECT_ID(N'[dbo].[Master.Currency]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Master.Currency];
GO
IF OBJECT_ID(N'[dbo].[Master.CurrencyRate]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Master.CurrencyRate];
GO
IF OBJECT_ID(N'[dbo].[Master.DeliveryMethod]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Master.DeliveryMethod];
GO
IF OBJECT_ID(N'[dbo].[Master.Department]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Master.Department];
GO
IF OBJECT_ID(N'[dbo].[Master.Designation]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Master.Designation];
GO
IF OBJECT_ID(N'[dbo].[Master.Division]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Master.Division];
GO
IF OBJECT_ID(N'[dbo].[Master.EmailCategorySettings]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Master.EmailCategorySettings];
GO
IF OBJECT_ID(N'[dbo].[Master.EmailGroupSettings]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Master.EmailGroupSettings];
GO
IF OBJECT_ID(N'[dbo].[Master.EstimationRoutes]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Master.EstimationRoutes];
GO
IF OBJECT_ID(N'[dbo].[Master.EstimationServiceType]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Master.EstimationServiceType];
GO
IF OBJECT_ID(N'[dbo].[Master.EstimationSpecializedField]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Master.EstimationSpecializedField];
GO
IF OBJECT_ID(N'[dbo].[Master.EstimationStatus]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Master.EstimationStatus];
GO
IF OBJECT_ID(N'[dbo].[Master.EstimationSubSpecializedField]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Master.EstimationSubSpecializedField];
GO
IF OBJECT_ID(N'[dbo].[Master.EstimationType]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Master.EstimationType];
GO
IF OBJECT_ID(N'[dbo].[Master.Language]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Master.Language];
GO
IF OBJECT_ID(N'[dbo].[Master.Market]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Master.Market];
GO
IF OBJECT_ID(N'[dbo].[Master.PartnerServiceType]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Master.PartnerServiceType];
GO
IF OBJECT_ID(N'[dbo].[Master.PaymentType]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Master.PaymentType];
GO
IF OBJECT_ID(N'[dbo].[Master.Penalty]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Master.Penalty];
GO
IF OBJECT_ID(N'[dbo].[Master.StaffBusinessCategory]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Master.StaffBusinessCategory];
GO
IF OBJECT_ID(N'[dbo].[Master.StaffBusinessCategoryDetails]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Master.StaffBusinessCategoryDetails];
GO
IF OBJECT_ID(N'[dbo].[Master.StaffCategory]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Master.StaffCategory];
GO
IF OBJECT_ID(N'[dbo].[Master.StaffCurrentState]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Master.StaffCurrentState];
GO
IF OBJECT_ID(N'[dbo].[Master.StaffDevelopmentSkill]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Master.StaffDevelopmentSkill];
GO
IF OBJECT_ID(N'[dbo].[Master.StaffDevelopmentSkillItem]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Master.StaffDevelopmentSkillItem];
GO
IF OBJECT_ID(N'[dbo].[Master.StaffEducationalDegree]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Master.StaffEducationalDegree];
GO
IF OBJECT_ID(N'[dbo].[Master.StaffEmploymentType]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Master.StaffEmploymentType];
GO
IF OBJECT_ID(N'[dbo].[Master.StaffInterpretationFields]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Master.StaffInterpretationFields];
GO
IF OBJECT_ID(N'[dbo].[Master.StaffJobCategory]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Master.StaffJobCategory];
GO
IF OBJECT_ID(N'[dbo].[Master.StaffJobCategoryDetails]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Master.StaffJobCategoryDetails];
GO
IF OBJECT_ID(N'[dbo].[Master.StaffKnowledgeField]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Master.StaffKnowledgeField];
GO
IF OBJECT_ID(N'[dbo].[Master.StaffKnowledgeFieldItem]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Master.StaffKnowledgeFieldItem];
GO
IF OBJECT_ID(N'[dbo].[Master.StaffLanguageQualifications]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Master.StaffLanguageQualifications];
GO
IF OBJECT_ID(N'[dbo].[Master.StaffMajorSubject]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Master.StaffMajorSubject];
GO
IF OBJECT_ID(N'[dbo].[Master.StaffMajorSubjectDetails]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Master.StaffMajorSubjectDetails];
GO
IF OBJECT_ID(N'[dbo].[Master.StaffMedicalField]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Master.StaffMedicalField];
GO
IF OBJECT_ID(N'[dbo].[Master.StaffNarrationType]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Master.StaffNarrationType];
GO
IF OBJECT_ID(N'[dbo].[Master.StaffPatentField]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Master.StaffPatentField];
GO
IF OBJECT_ID(N'[dbo].[Master.StaffProfession]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Master.StaffProfession];
GO
IF OBJECT_ID(N'[dbo].[Master.StaffResearchField]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Master.StaffResearchField];
GO
IF OBJECT_ID(N'[dbo].[Master.StaffSoftwareSkill]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Master.StaffSoftwareSkill];
GO
IF OBJECT_ID(N'[dbo].[Master.StaffSpecialField]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Master.StaffSpecialField];
GO
IF OBJECT_ID(N'[dbo].[Master.StaffTechnicalSkillCategory]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Master.StaffTechnicalSkillCategory];
GO
IF OBJECT_ID(N'[dbo].[Master.StaffTechnicalSkillItems]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Master.StaffTechnicalSkillItems];
GO
IF OBJECT_ID(N'[dbo].[Master.StaffTranslationFields]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Master.StaffTranslationFields];
GO
IF OBJECT_ID(N'[dbo].[Master.StaffType]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Master.StaffType];
GO
IF OBJECT_ID(N'[dbo].[Master.StaffVisaType]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Master.StaffVisaType];
GO
IF OBJECT_ID(N'[dbo].[Master.Team]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Master.Team];
GO
IF OBJECT_ID(N'[dbo].[Master.TeamToMarket]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Master.TeamToMarket];
GO
IF OBJECT_ID(N'[dbo].[Master.Unit]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Master.Unit];
GO
IF OBJECT_ID(N'[dbo].[Master.UnitPriceSetting]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Master.UnitPriceSetting];
GO
IF OBJECT_ID(N'[dbo].[Master.WebOrderStatus]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Master.WebOrderStatus];
GO
IF OBJECT_ID(N'[dbo].[Master.WorkingStatus]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Master.WorkingStatus];
GO
IF OBJECT_ID(N'[dbo].[Menu]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Menu];
GO
IF OBJECT_ID(N'[dbo].[Message]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Message];
GO
IF OBJECT_ID(N'[dbo].[Module]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Module];
GO
IF OBJECT_ID(N'[dbo].[Notice]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Notice];
GO
IF OBJECT_ID(N'[dbo].[Order]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Order];
GO
IF OBJECT_ID(N'[dbo].[Order.DeliveryDocuments]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Order.DeliveryDocuments];
GO
IF OBJECT_ID(N'[dbo].[Order.StaffAllowance]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Order.StaffAllowance];
GO
IF OBJECT_ID(N'[dbo].[Order.Web]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Order.Web];
GO
IF OBJECT_ID(N'[dbo].[Order.WebDocuments]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Order.WebDocuments];
GO
IF OBJECT_ID(N'[dbo].[OrderAppointedToStaff.Web]', 'U') IS NOT NULL
    DROP TABLE [dbo].[OrderAppointedToStaff.Web];
GO
IF OBJECT_ID(N'[dbo].[OrderDetails]', 'U') IS NOT NULL
    DROP TABLE [dbo].[OrderDetails];
GO
IF OBJECT_ID(N'[dbo].[OrderEvaluationByCustomer]', 'U') IS NOT NULL
    DROP TABLE [dbo].[OrderEvaluationByCustomer];
GO
IF OBJECT_ID(N'[dbo].[OrderRequestedToStaff.Web]', 'U') IS NOT NULL
    DROP TABLE [dbo].[OrderRequestedToStaff.Web];
GO
IF OBJECT_ID(N'[dbo].[ProfitShareSettings]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ProfitShareSettings];
GO
IF OBJECT_ID(N'[dbo].[Role]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Role];
GO
IF OBJECT_ID(N'[dbo].[RoleAudit]', 'U') IS NOT NULL
    DROP TABLE [dbo].[RoleAudit];
GO
IF OBJECT_ID(N'[dbo].[RoleWiseOperationPermission]', 'U') IS NOT NULL
    DROP TABLE [dbo].[RoleWiseOperationPermission];
GO
IF OBJECT_ID(N'[dbo].[RoleWiseScreenPermission]', 'U') IS NOT NULL
    DROP TABLE [dbo].[RoleWiseScreenPermission];
GO
IF OBJECT_ID(N'[dbo].[Screen]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Screen];
GO
IF OBJECT_ID(N'[dbo].[ScreenOperation]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ScreenOperation];
GO
IF OBJECT_ID(N'[dbo].[Staff]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Staff];
GO
IF OBJECT_ID(N'[dbo].[Staff.BankAccountInfo]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Staff.BankAccountInfo];
GO
IF OBJECT_ID(N'[dbo].[Staff.CurrentStates]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Staff.CurrentStates];
GO
IF OBJECT_ID(N'[dbo].[Staff.DevelopmentSkill]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Staff.DevelopmentSkill];
GO
IF OBJECT_ID(N'[dbo].[Staff.EditingproInformation]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Staff.EditingproInformation];
GO
IF OBJECT_ID(N'[dbo].[Staff.EducationalHistory]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Staff.EducationalHistory];
GO
IF OBJECT_ID(N'[dbo].[Staff.InterpretationSpecialFields]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Staff.InterpretationSpecialFields];
GO
IF OBJECT_ID(N'[dbo].[Staff.JobCategories]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Staff.JobCategories];
GO
IF OBJECT_ID(N'[dbo].[Staff.JobHistory]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Staff.JobHistory];
GO
IF OBJECT_ID(N'[dbo].[Staff.KnowledgeFields]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Staff.KnowledgeFields];
GO
IF OBJECT_ID(N'[dbo].[Staff.ManagementExperience]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Staff.ManagementExperience];
GO
IF OBJECT_ID(N'[dbo].[Staff.NarrationInformation]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Staff.NarrationInformation];
GO
IF OBJECT_ID(N'[dbo].[Staff.NarrationVoiceFiles]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Staff.NarrationVoiceFiles];
GO
IF OBJECT_ID(N'[dbo].[Staff.ProfessionalSpeciality]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Staff.ProfessionalSpeciality];
GO
IF OBJECT_ID(N'[dbo].[Staff.ServiceTypes]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Staff.ServiceTypes];
GO
IF OBJECT_ID(N'[dbo].[Staff.SkillCertificate]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Staff.SkillCertificate];
GO
IF OBJECT_ID(N'[dbo].[Staff.SoftwareSkill]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Staff.SoftwareSkill];
GO
IF OBJECT_ID(N'[dbo].[Staff.TechnicalCertificate]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Staff.TechnicalCertificate];
GO
IF OBJECT_ID(N'[dbo].[Staff.TranslateInterpretExperience]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Staff.TranslateInterpretExperience];
GO
IF OBJECT_ID(N'[dbo].[Staff.TranslationSpecialFields]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Staff.TranslationSpecialFields];
GO
IF OBJECT_ID(N'[dbo].[Staff.TransproInformation]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Staff.TransproInformation];
GO
IF OBJECT_ID(N'[dbo].[sysdiagrams]', 'U') IS NOT NULL
    DROP TABLE [dbo].[sysdiagrams];
GO
IF OBJECT_ID(N'[dbo].[TranslationCertificateSettings]', 'U') IS NOT NULL
    DROP TABLE [dbo].[TranslationCertificateSettings];
GO
IF OBJECT_ID(N'[dbo].[TranslationLevel]', 'U') IS NOT NULL
    DROP TABLE [dbo].[TranslationLevel];
GO
IF OBJECT_ID(N'[dbo].[TranslatorBlackList]', 'U') IS NOT NULL
    DROP TABLE [dbo].[TranslatorBlackList];
GO
IF OBJECT_ID(N'[dbo].[TranslatorFavouriteList]', 'U') IS NOT NULL
    DROP TABLE [dbo].[TranslatorFavouriteList];
GO
IF OBJECT_ID(N'[dbo].[TransproDeliveryPlanSetting]', 'U') IS NOT NULL
    DROP TABLE [dbo].[TransproDeliveryPlanSetting];
GO
IF OBJECT_ID(N'[dbo].[TransproLanguagePriceCategory]', 'U') IS NOT NULL
    DROP TABLE [dbo].[TransproLanguagePriceCategory];
GO
IF OBJECT_ID(N'[dbo].[UserInformation]', 'U') IS NOT NULL
    DROP TABLE [dbo].[UserInformation];
GO
IF OBJECT_ID(N'[dbo].[UserInRole]', 'U') IS NOT NULL
    DROP TABLE [dbo].[UserInRole];
GO
IF OBJECT_ID(N'[dbo].[UserType]', 'U') IS NOT NULL
    DROP TABLE [dbo].[UserType];
GO
IF OBJECT_ID(N'[CentralDBModelStoreContainer].[IdentityInformation]', 'U') IS NOT NULL
    DROP TABLE [CentralDBModelStoreContainer].[IdentityInformation];
GO
IF OBJECT_ID(N'[CentralDBModelStoreContainer].[PayPalTransaction]', 'U') IS NOT NULL
    DROP TABLE [CentralDBModelStoreContainer].[PayPalTransaction];
GO
IF OBJECT_ID(N'[CentralDBModelStoreContainer].[TransproLanguagePriceDetails]', 'U') IS NOT NULL
    DROP TABLE [CentralDBModelStoreContainer].[TransproLanguagePriceDetails];
GO
IF OBJECT_ID(N'[CentralDBModelStoreContainer].[RoleManagement]', 'U') IS NOT NULL
    DROP TABLE [CentralDBModelStoreContainer].[RoleManagement];
GO
IF OBJECT_ID(N'[CentralDBModelStoreContainer].[staff_tbd]', 'U') IS NOT NULL
    DROP TABLE [CentralDBModelStoreContainer].[staff_tbd];
GO
IF OBJECT_ID(N'[CentralDBModelStoreContainer].[VW_GetAdvancedSearch]', 'U') IS NOT NULL
    DROP TABLE [CentralDBModelStoreContainer].[VW_GetAdvancedSearch];
GO
IF OBJECT_ID(N'[CentralDBModelStoreContainer].[VW_GetAdvancedSearch_OLD]', 'U') IS NOT NULL
    DROP TABLE [CentralDBModelStoreContainer].[VW_GetAdvancedSearch_OLD];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'AccessLogs'
CREATE TABLE [dbo].[AccessLogs] (
    [Id] bigint IDENTITY(1,1) NOT NULL,
    [Username] nvarchar(50)  NOT NULL,
    [PersonId] char(10)  NOT NULL,
    [LoginDeviceName] varchar(15)  NULL,
    [LoginIP] varchar(20)  NULL,
    [LoginTime] datetime  NOT NULL,
    [LogoutTime] datetime  NULL,
    [PasswordAttemptCount] tinyint  NULL
);
GO

-- Creating table 'AdditionalOperationPermissions'
CREATE TABLE [dbo].[AdditionalOperationPermissions] (
    [Id] bigint IDENTITY(1,1) NOT NULL,
    [UserId] bigint  NOT NULL,
    [ScreenOperationId] bigint  NOT NULL,
    [StartDate] datetime  NOT NULL,
    [EndDate] datetime  NOT NULL,
    [IsActive] bit  NOT NULL,
    [IsDeleted] bit  NOT NULL,
    [SetOn] datetime  NOT NULL,
    [SetBy] bigint  NOT NULL,
    [Note] varchar(max)  NULL
);
GO

-- Creating table 'AdditionalScreenPermissions'
CREATE TABLE [dbo].[AdditionalScreenPermissions] (
    [Id] bigint IDENTITY(1,1) NOT NULL,
    [UserId] bigint  NOT NULL,
    [ScreenId] char(5)  NOT NULL,
    [AccessRight] char(4)  NOT NULL,
    [StartDate] datetime  NOT NULL,
    [EndDate] datetime  NOT NULL,
    [IsActive] bit  NOT NULL,
    [IsDeleted] bit  NOT NULL,
    [SetOn] datetime  NOT NULL,
    [SetBy] bigint  NOT NULL,
    [Note] varchar(max)  NULL
);
GO

-- Creating table 'AdvertizementSettings'
CREATE TABLE [dbo].[AdvertizementSettings] (
    [ID] uniqueidentifier  NOT NULL,
    [Title_en] nvarchar(250)  NULL,
    [Title_jp] nvarchar(250)  NULL,
    [Title_kr] nvarchar(250)  NULL,
    [Title_fr] nvarchar(250)  NULL,
    [Title_cn] nvarchar(250)  NULL,
    [Title_tl] nvarchar(250)  NULL,
    [Description_en] nvarchar(max)  NULL,
    [Description_jp] nvarchar(max)  NULL,
    [Description_kr] nvarchar(max)  NULL,
    [Description_fr] nvarchar(max)  NULL,
    [Description_cn] nvarchar(max)  NULL,
    [Description_tl] nvarchar(max)  NULL,
    [ValidDateTime] datetime  NULL,
    [BackgroundImage] varbinary(max)  NULL,
    [BackgroundColor] nvarchar(50)  NULL,
    [ApplicationID] bigint  NULL,
    [CreatedBy] bigint  NULL,
    [CreatedDate] datetime  NULL,
    [UpdatedDate] datetime  NULL,
    [UpdatedBy] bigint  NULL,
    [BackgroundImageFile] nvarchar(500)  NULL,
    [IsDeleted] bit  NULL,
    [IsActive] bit  NULL
);
GO

-- Creating table 'Applications'
CREATE TABLE [dbo].[Applications] (
    [Id] bigint IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(250)  NOT NULL,
    [Code] nvarchar(5)  NULL,
    [Description] nvarchar(500)  NULL,
    [Logo] nvarchar(max)  NULL,
    [WebsiteURL] nvarchar(50)  NULL,
    [IsActive] bit  NOT NULL,
    [IsDeleted] bit  NULL,
    [CreatedDate] datetime  NULL,
    [CreatedBy] bigint  NULL,
    [UpdatedDate] datetime  NULL,
    [UpdatedBy] bigint  NULL
);
GO

-- Creating table 'Companies'
CREATE TABLE [dbo].[Companies] (
    [ID] uniqueidentifier  NOT NULL,
    [RegistrationID] bigint IDENTITY(1,1) NOT NULL,
    [CompanyTypeID] int  NULL,
    [RegistrationType] int  NULL,
    [CompanyLocationID] bigint  NULL,
    [CompanyRegPurposeID] int  NULL,
    [CompanyTradingOfficeID] uniqueidentifier  NULL,
    [RegistrationNo] nvarchar(150)  NULL,
    [ClientID] nvarchar(50)  NULL,
    [IsPartner] bit  NOT NULL,
    [PartnerServiceTypeID] bigint  NULL,
    [IsSubcontactual] bit  NOT NULL,
    [Name_Local] nvarchar(250)  NULL,
    [Name_Global] nvarchar(250)  NULL,
    [WebSiteURL] nvarchar(50)  NULL,
    [RepresentativeDirector_en] nvarchar(100)  NULL,
    [RepresentativeDirector_jp] nvarchar(100)  NULL,
    [RepresentativeDirector_kr] nvarchar(100)  NULL,
    [RepresentativeDirector_cn] nvarchar(100)  NULL,
    [RepresentativeDirector_fr] nvarchar(100)  NULL,
    [RepresentativeDirector_tl] nvarchar(100)  NULL,
    [Capital] bigint  NULL,
    [EstablishedDate] datetime  NULL,
    [BusinesClassification] nvarchar(max)  NULL,
    [TransactionCategory] nvarchar(max)  NULL,
    [TransactionNotes] nvarchar(max)  NULL,
    [TransactionRecords] nvarchar(max)  NULL,
    [FilesWithInvoice] nvarchar(250)  NULL,
    [IntroducedBy] nvarchar(50)  NULL,
    [IsStopTrading] bit  NULL,
    [IsSharedRecord] bit  NULL,
    [BusinessSummary] nvarchar(max)  NULL,
    [CompanyIntroduction] nvarchar(max)  NULL,
    [CompanyImpression] nvarchar(max)  NULL,
    [SalesRecordRegDate] datetime  NULL,
    [ActivityTypeID] int  NULL,
    [ActivityResultID] int  NULL,
    [StartTime] datetime  NULL,
    [EndTime] datetime  NULL,
    [ClientMemberName] nvarchar(50)  NULL,
    [EmployeeMemberID] uniqueidentifier  NULL,
    [Comment_en] nvarchar(max)  NULL,
    [Comment_jp] nvarchar(max)  NULL,
    [Comment_kr] nvarchar(max)  NULL,
    [Comment_fr] nvarchar(max)  NULL,
    [Comment_tl] nvarchar(max)  NULL,
    [Comment_cn] nvarchar(max)  NULL,
    [PaymentWayID] int  NULL,
    [BankTradingOfficeID] bigint  NULL,
    [BillingPostCode] nvarchar(10)  NULL,
    [BillingAddress] nvarchar(250)  NULL,
    [BilligPersonDesignation] nvarchar(50)  NULL,
    [BillingPersonName] nvarchar(50)  NULL,
    [IsAllowPaymentAfterDelivery] bit  NULL,
    [AffiliateCode] nvarchar(20)  NULL,
    [AffiliateTypeID] int  NULL,
    [AffiliateCompanyName] nvarchar(50)  NULL,
    [AffiliateUpdateDate] datetime  NULL,
    [Note_en] nvarchar(max)  NULL,
    [Note_jp] nvarchar(max)  NULL,
    [Note_kr] nvarchar(max)  NULL,
    [Note_fr] nvarchar(max)  NULL,
    [Note_tl] nvarchar(max)  NULL,
    [Note_cn] nvarchar(max)  NULL,
    [IsCampaignEmail] bit  NULL,
    [IsOrderShowEnable] bit  NULL,
    [DivisionID] uniqueidentifier  NULL,
    [CorporateDivisionID] uniqueidentifier  NULL,
    [OriginCountryID] bigint  NULL,
    [IsCompanyAgent] bit  NOT NULL,
    [CorporateNo] nvarchar(100)  NULL,
    [businessClassificationID] uniqueidentifier  NULL,
    [DateOfPayment] datetime  NULL,
    [IsBillingMonthly] bit  NULL,
    [MainPhoto] nvarchar(max)  NULL,
    [Logo] nvarchar(max)  NULL,
    [EmployeeName_en] nvarchar(250)  NULL,
    [EmployeeName_jp] nvarchar(250)  NULL,
    [EmployeeName_kr] nvarchar(250)  NULL,
    [EmployeeName_cn] nvarchar(250)  NULL,
    [EmployeeName_fr] nvarchar(250)  NULL,
    [EmployeeName_tl] nvarchar(250)  NULL,
    [BranchName_en] nvarchar(250)  NULL,
    [BranchName_jp] nvarchar(250)  NULL,
    [BranchName_kr] nvarchar(250)  NULL,
    [BranchName_cn] nvarchar(250)  NULL,
    [BranchName_fr] nvarchar(250)  NULL,
    [BranchName_tl] nvarchar(250)  NULL,
    [TradingNote] nvarchar(max)  NULL,
    [TradingRecord] nvarchar(max)  NULL,
    [BankID] uniqueidentifier  NOT NULL,
    [BankBranchID] uniqueidentifier  NOT NULL,
    [BankAccountTypeID] bigint  NOT NULL,
    [PrivateCompanyName] nvarchar(250)  NULL,
    [Email] nvarchar(50)  NULL,
    [Password] nvarchar(50)  NULL,
    [Name_en] nvarchar(25)  NULL,
    [Name_jp] nvarchar(25)  NULL,
    [Name_kr] nvarchar(25)  NULL,
    [Name_cn] nvarchar(25)  NULL,
    [Name_fr] nvarchar(25)  NULL,
    [Name_tl] nvarchar(25)  NULL,
    [TelephoneNo] nvarchar(20)  NULL,
    [MobileNo] nvarchar(20)  NULL,
    [Fax] nvarchar(25)  NULL,
    [PostalCode] varchar(10)  NULL,
    [Address1_en] nvarchar(500)  NULL,
    [Address1_jp] nvarchar(500)  NULL,
    [Address1_kr] nvarchar(500)  NULL,
    [Address1_cn] nvarchar(500)  NULL,
    [Address1_fr] nvarchar(500)  NULL,
    [Address1_tl] nvarchar(500)  NULL,
    [Address2_en] nvarchar(500)  NULL,
    [Address2_jp] nvarchar(500)  NULL,
    [Address2_kr] nvarchar(500)  NULL,
    [Address2_cn] nvarchar(500)  NULL,
    [Address2_fr] nvarchar(500)  NULL,
    [Address2_tl] nvarchar(50)  NULL,
    [IsRecieveEmail] bit  NULL,
    [IsPostTransactionAllowed] bit  NULL,
    [NoteDeliveryTypeID] int  NULL,
    [InvoiceDeliveryTypeID] int  NULL,
    [RecieptDeliveryTypeID] int  NULL,
    [IsNoteByEmail] bit  NOT NULL,
    [IsInvoiceByEmail] bit  NOT NULL,
    [IsRecieptByEmail] bit  NOT NULL,
    [IsNoteOuputPaper] bit  NOT NULL,
    [IsInvoiceOutputPaper] bit  NOT NULL,
    [IsRecieptOutputPaper] bit  NOT NULL,
    [ApplicationId] bigint  NULL,
    [IsActive] bit  NOT NULL,
    [CreatedBy] bigint  NULL,
    [CreatedDate] datetime  NULL,
    [UpdatedDate] datetime  NULL,
    [UpdatedBy] bigint  NULL
);
GO

-- Creating table 'Company_AgencyPrice'
CREATE TABLE [dbo].[Company_AgencyPrice] (
    [ID] uniqueidentifier  NOT NULL,
    [CompanyID] uniqueidentifier  NULL,
    [EstimationTypeID] int  NULL,
    [SourceLanguageID] uniqueidentifier  NULL,
    [DestinationLanguageID] uniqueidentifier  NULL,
    [SpecializedFieldID] uniqueidentifier  NULL,
    [Unit] bigint  NULL,
    [PriceCalculationOnID] int  NULL,
    [UnitPrice] decimal(18,6)  NULL,
    [IsDelete] bit  NOT NULL
);
GO

-- Creating table 'Company_Department'
CREATE TABLE [dbo].[Company_Department] (
    [ID] uniqueidentifier  NOT NULL,
    [CompanyID] uniqueidentifier  NULL,
    [DepartmentID] uniqueidentifier  NULL,
    [LocationID] bigint  NULL,
    [TradingOfficeID] int  NULL,
    [Name_Local] nvarchar(250)  NULL,
    [Name_Global] nvarchar(250)  NULL,
    [PhoneNo] nvarchar(20)  NULL,
    [Fax] nvarchar(50)  NULL,
    [PostalCode] varchar(10)  NULL,
    [Address_en] nvarchar(max)  NULL,
    [Address_jp] nvarchar(max)  NULL,
    [Address_kr] nvarchar(max)  NULL,
    [Address_cn] nvarchar(max)  NULL,
    [Address_fr] nvarchar(max)  NULL,
    [Address_tl] nvarchar(max)  NULL,
    [BillingClientName_en] nvarchar(250)  NULL,
    [BillingClientName_jp] nvarchar(250)  NULL,
    [BillingClientName_kr] nvarchar(250)  NULL,
    [BillingClientName_cn] nvarchar(250)  NULL,
    [BillingClientName_fr] nvarchar(250)  NULL,
    [BillingClientName_tl] nvarchar(250)  NULL,
    [BillingTo] nvarchar(50)  NULL,
    [BillingEmail] nvarchar(250)  NULL,
    [BillingAddress_en] nvarchar(250)  NULL,
    [BillingAddress_jp] nvarchar(250)  NULL,
    [BillingAddress_kr] nvarchar(250)  NULL,
    [BillingAddress_cn] nvarchar(250)  NULL,
    [BillingAddress_fr] nvarchar(250)  NULL,
    [BillingAddress_tl] nvarchar(250)  NULL,
    [BillingContactNo] nvarchar(250)  NULL,
    [BillingFax] nvarchar(250)  NULL,
    [BillingPaymentTerms] nvarchar(250)  NULL,
    [InchargeClientTypeID] int  NULL,
    [InchargeTradingOfficeID] bigint  NULL,
    [InchargeName_Local] nvarchar(250)  NULL,
    [InchargeName_pronounciation] nvarchar(250)  NULL,
    [InchargeName_Global] nvarchar(250)  NULL,
    [InchargePhoneNo] nvarchar(250)  NULL,
    [InchargeCellPhoneNo] nvarchar(250)  NULL,
    [InchargeEmail] nvarchar(250)  NULL,
    [InchargePromotionEmail] nvarchar(250)  NULL,
    [InchargeEmail_CC] nvarchar(250)  NULL,
    [InchargePassword] nvarchar(250)  NULL,
    [InchargeSalesPlanDate] datetime  NULL,
    [InchargeInternalName] nvarchar(250)  NULL,
    [CreatedBy] bigint  NULL,
    [CreatedDate] datetime  NULL,
    [UpdatedBy] bigint  NULL,
    [UpdatedDate] datetime  NULL,
    [ApplicationId] bigint  NULL
);
GO

-- Creating table 'Company_TransproPartner'
CREATE TABLE [dbo].[Company_TransproPartner] (
    [ID] uniqueidentifier  NOT NULL,
    [CompanyID] uniqueidentifier  NOT NULL,
    [AffiliateCode] bigint  NULL,
    [AffiliateCodeUpperID] nvarchar(50)  NULL,
    [PartnerTypeID] bigint  NULL,
    [Name_en] nvarchar(50)  NULL,
    [Name_jp] nvarchar(50)  NULL,
    [Name_kr] nvarchar(50)  NULL,
    [Name_cn] nvarchar(50)  NULL,
    [Name_fr] nvarchar(50)  NULL,
    [Name_tl] nvarchar(50)  NULL,
    [CompanyNumber] nvarchar(50)  NULL,
    [TransPro_URL] nvarchar(200)  NULL,
    [EstimationSending_URL] nvarchar(200)  NULL,
    [MaintenanceFee] decimal(18,6)  NULL,
    [MagnificationPrice] int  NULL,
    [TranslatorPrice] int  NULL,
    [PartnerCompanyPrice] int  NULL,
    [AgentPrice] int  NULL,
    [BcausePrice] int  NULL,
    [CompanyName_en] nvarchar(200)  NULL,
    [CompanyName_jp] nvarchar(200)  NULL,
    [CompanyName_kr] nvarchar(200)  NULL,
    [CompanyName_cn] nvarchar(200)  NULL,
    [CompanyName_fr] nvarchar(200)  NULL,
    [CompanyName_tl] nvarchar(200)  NULL,
    [PostCode] nvarchar(50)  NULL,
    [Address_en] nvarchar(max)  NULL,
    [Address_jp] nvarchar(max)  NULL,
    [Address_kr] nvarchar(max)  NULL,
    [Address_cn] nvarchar(max)  NULL,
    [Address_fr] nvarchar(max)  NULL,
    [Address_tl] nvarchar(max)  NULL,
    [Email] nvarchar(50)  NULL,
    [ContactNumber] nvarchar(50)  NULL,
    [CEOName_en] nvarchar(50)  NULL,
    [CEOName_jp] nvarchar(50)  NULL,
    [CEOName_kr] nvarchar(50)  NULL,
    [CEOName_cn] nvarchar(50)  NULL,
    [CEOName_fr] nvarchar(50)  NULL,
    [CEOName_tl] nvarchar(50)  NULL,
    [URL] nvarchar(200)  NULL,
    [Logo] nvarchar(max)  NULL,
    [Image] nvarchar(max)  NULL,
    [BackgroundImage] nvarchar(max)  NULL,
    [ButtonImage] nvarchar(max)  NULL,
    [InqueryImageFile] nvarchar(max)  NULL,
    [Inquery_URL] nvarchar(200)  NULL,
    [BannarImage1] nvarchar(max)  NULL,
    [BannarImage1_URL] nvarchar(max)  NULL,
    [BannarImage2] nvarchar(max)  NULL,
    [BannarImage2_URL] nvarchar(max)  NULL,
    [FacebookID] nvarchar(200)  NULL,
    [Title_en] nvarchar(50)  NULL,
    [Title_jp] nvarchar(50)  NULL,
    [Title_kr] nvarchar(50)  NULL,
    [Title_cn] nvarchar(50)  NULL,
    [Title_fr] nvarchar(50)  NULL,
    [Title_tl] nvarchar(50)  NULL,
    [Description_en] nvarchar(max)  NULL,
    [Description_jp] nvarchar(max)  NULL,
    [Description_kr] nvarchar(max)  NULL,
    [Description_cn] nvarchar(max)  NULL,
    [Description_fr] nvarchar(max)  NULL,
    [Description_tl] nvarchar(max)  NULL,
    [ServiceName_en] nvarchar(50)  NULL,
    [ServiceName_jp] nvarchar(50)  NULL,
    [ServiceName_kr] nvarchar(50)  NULL,
    [ServiceName_cn] nvarchar(50)  NULL,
    [ServiceName_fr] nvarchar(50)  NULL,
    [ServiceName_tl] nvarchar(50)  NULL,
    [IsInvoicePartner] bit  NOT NULL,
    [IsEmailTemplatepartner] bit  NOT NULL,
    [IsAllowInqueryEmail] bit  NOT NULL,
    [BankID] uniqueidentifier  NULL,
    [BankBranchID] uniqueidentifier  NULL,
    [BankAccountTypeID] bigint  NULL,
    [AccountNumber] nvarchar(50)  NULL,
    [AccountHolder] nvarchar(50)  NULL,
    [InvoiceCompanyName_en] nvarchar(50)  NULL,
    [InvoiceCompanyName_jp] nvarchar(50)  NULL,
    [InvoiceCompanyName_kr] nvarchar(50)  NULL,
    [InvoiceCompanyName_cn] nvarchar(50)  NULL,
    [InvoiceCompanyName_fr] nvarchar(50)  NULL,
    [InvoiceCompanyName_tl] nvarchar(50)  NULL,
    [InvoicePostCode] nvarchar(50)  NULL,
    [InvoiceAddress1_en] nvarchar(max)  NULL,
    [InvoiceAddress1_jp] nvarchar(max)  NULL,
    [InvoiceAddress1_kr] nvarchar(max)  NULL,
    [InvoiceAddress1_cn] nvarchar(max)  NULL,
    [InvoiceAddress1_fr] nvarchar(max)  NULL,
    [InvoiceAddress1_tl] nvarchar(max)  NULL,
    [InvoiceAddress2_en] nvarchar(max)  NULL,
    [InvoiceAddress2_jp] nvarchar(max)  NULL,
    [InvoiceAddress2_kr] nvarchar(max)  NULL,
    [InvoiceAddress2_cn] nvarchar(max)  NULL,
    [InvoiceAddress2_fr] nvarchar(max)  NULL,
    [InvoiceAddress2_tl] nvarchar(max)  NULL,
    [InvoiveEmail] nvarchar(50)  NULL,
    [InvoiceContactNumber] nvarchar(50)  NULL,
    [InchagreName_en] nvarchar(50)  NULL,
    [InchagreName_jp] nvarchar(50)  NULL,
    [InchagreName_kr] nvarchar(50)  NULL,
    [InchagreName_cn] nvarchar(50)  NULL,
    [InchagreName_fr] nvarchar(50)  NULL,
    [InchagreName_tl] nvarchar(50)  NULL,
    [InchargeDesignationID] uniqueidentifier  NULL,
    [ComapanySealImage] nvarchar(max)  NULL,
    [AddressedPersonName_en] nvarchar(50)  NULL,
    [AddressedPersonName_jp] nvarchar(50)  NULL,
    [AddressedPersonName_kr] nvarchar(50)  NULL,
    [AddressedPersonName_cn] nvarchar(50)  NULL,
    [AddressedPersonName_fr] nvarchar(50)  NULL,
    [AddressedPersonName_tl] nvarchar(50)  NULL
);
GO

-- Creating table 'CompanyAgentBusinesses'
CREATE TABLE [dbo].[CompanyAgentBusinesses] (
    [ID] uniqueidentifier  NOT NULL,
    [CompanyID] uniqueidentifier  NOT NULL,
    [AgentBusinessID] uniqueidentifier  NULL,
    [IsSelected] bit  NULL
);
GO

-- Creating table 'CompanyAgentCharacterstics'
CREATE TABLE [dbo].[CompanyAgentCharacterstics] (
    [ID] uniqueidentifier  NOT NULL,
    [CompanyID] uniqueidentifier  NOT NULL,
    [AgentCharactersticID] uniqueidentifier  NULL,
    [IsSelected] bit  NULL
);
GO

-- Creating table 'CompanyAgentDesignations'
CREATE TABLE [dbo].[CompanyAgentDesignations] (
    [ID] uniqueidentifier  NOT NULL,
    [CompanyID] uniqueidentifier  NOT NULL,
    [AgentDesignationID] uniqueidentifier  NULL,
    [IsSelected] bit  NULL
);
GO

-- Creating table 'CompanyBusinessHistories'
CREATE TABLE [dbo].[CompanyBusinessHistories] (
    [ID] uniqueidentifier  NOT NULL,
    [CompanyID] uniqueidentifier  NOT NULL,
    [AppointmentDate] datetime  NULL,
    [AppointmentType] int  NULL,
    [AppointmentResultID] int  NULL,
    [Comment_en] nvarchar(max)  NULL,
    [Comment_jp] nvarchar(max)  NULL,
    [Comment_kr] nvarchar(max)  NULL,
    [Comment_cn] nvarchar(max)  NULL,
    [Comment_fr] nvarchar(max)  NULL,
    [Comment_tl] nvarchar(max)  NULL,
    [OrderSystem_en] nvarchar(500)  NULL,
    [OrderSystem_jp] nvarchar(500)  NULL,
    [OrderSystem_kr] nvarchar(500)  NULL,
    [OrderSystem_cn] nvarchar(500)  NULL,
    [OrderSystem_fr] nvarchar(500)  NULL,
    [OrderSystem_tl] nvarchar(500)  NULL,
    [BusinessType_en] nvarchar(max)  NULL,
    [BusinessType_jp] nvarchar(max)  NULL,
    [BusinessType_kr] nvarchar(max)  NULL,
    [BusinessType_cn] nvarchar(max)  NULL,
    [BusinessType_fr] nvarchar(max)  NULL,
    [BusinessType_tl] nvarchar(max)  NULL,
    [ClosingDate] datetime  NULL,
    [PaymentDate] datetime  NULL,
    [CapitalStock] bigint  NULL,
    [SalesScale] bigint  NULL,
    [CEO] nvarchar(100)  NULL,
    [BranchInfo_en] nvarchar(250)  NULL,
    [BranchInfo_jp] nvarchar(250)  NULL,
    [BranchInfo_kr] nvarchar(250)  NULL,
    [BranchInfo_cn] nvarchar(250)  NULL,
    [BranchInfo_fr] nvarchar(250)  NULL,
    [BranchInfo_tl] nvarchar(250)  NULL,
    [ImpressionOfCompany_en] nvarchar(max)  NULL,
    [ImpressionOfCompany_jp] nvarchar(max)  NULL,
    [ImpressionOfCompany_kr] nvarchar(max)  NULL,
    [ImpressionOfCompany_cn] nvarchar(max)  NULL,
    [ImpressionOfCompany_fr] nvarchar(max)  NULL,
    [ImpressionOfCompany_tl] nvarchar(max)  NULL
);
GO

-- Creating table 'CompanyBusinessInformations'
CREATE TABLE [dbo].[CompanyBusinessInformations] (
    [ID] uniqueidentifier  NOT NULL,
    [CompanyID] uniqueidentifier  NOT NULL,
    [BusinessInfo_en] nvarchar(max)  NULL,
    [BusinessInfo_jp] nvarchar(max)  NULL,
    [BusinessInfo_kr] nvarchar(max)  NULL,
    [BusinessInfo_cn] nvarchar(max)  NULL,
    [BusinessInfo_fr] nvarchar(max)  NULL,
    [BusinessInfo_tl] nvarchar(max)  NULL,
    [CompanyInfo_en] nvarchar(max)  NULL,
    [CompanyInfo_jp] nvarchar(max)  NULL,
    [CompanyInfo_kr] nvarchar(max)  NULL,
    [CompanyInfo_cn] nvarchar(max)  NULL,
    [CompanyInfo_fr] nvarchar(max)  NULL,
    [CompanyInfo_tl] nvarchar(max)  NULL,
    [Impression_en] nvarchar(max)  NULL,
    [Impression_jp] nvarchar(max)  NULL,
    [Impression_kr] nvarchar(max)  NULL,
    [Impression_cn] nvarchar(max)  NULL,
    [Impression_fr] nvarchar(max)  NULL,
    [Impression_tl] nvarchar(max)  NULL,
    [SiteFindIDs] nvarchar(50)  NULL,
    [SpecialtiyName] nvarchar(250)  NULL,
    [ServiceID] uniqueidentifier  NULL,
    [SpecialityID] uniqueidentifier  NULL,
    [Language1ID] uniqueidentifier  NULL,
    [Language2ID] uniqueidentifier  NULL,
    [Unit] int  NULL,
    [Price] bigint  NULL,
    [IsDelete] bit  NOT NULL
);
GO

-- Creating table 'CompanyCooperativeInfoes'
CREATE TABLE [dbo].[CompanyCooperativeInfoes] (
    [ID] uniqueidentifier  NOT NULL,
    [CompanyID] uniqueidentifier  NOT NULL,
    [IsTranslationCompany] bit  NULL,
    [ChargingRate] bigint  NULL,
    [PriceGroup1] bigint  NULL,
    [PriceGroup2] bigint  NULL,
    [PriceGroup3] bigint  NULL,
    [PriceGroup4] bigint  NULL
);
GO

-- Creating table 'CompanyIndustryClassifications'
CREATE TABLE [dbo].[CompanyIndustryClassifications] (
    [ID] uniqueidentifier  NOT NULL,
    [CompanyID] uniqueidentifier  NOT NULL,
    [IndustryClassificationID] uniqueidentifier  NULL,
    [IndustryClassificationItemID] uniqueidentifier  NULL,
    [IsSelected] bit  NULL,
    [CreatedBy] bigint  NULL,
    [CreatedDate] datetime  NULL,
    [UpdatedBy] bigint  NULL,
    [UpdatedDate] datetime  NULL
);
GO

-- Creating table 'CompanyRFMAnalysis'
CREATE TABLE [dbo].[CompanyRFMAnalysis] (
    [ID] uniqueidentifier  NOT NULL,
    [CompanyID] uniqueidentifier  NOT NULL,
    [NoOfDaysLastQuotAsPerson] bigint  NULL,
    [TotalQuotAsPerson] bigint  NULL,
    [RatioOfOrderAsPerson] bigint  NULL,
    [AvgQuotPriceAsPerson] bigint  NULL,
    [AvgQuotAsPersonCurrencyID] bigint  NULL,
    [AvgOrderedPriceAsPerson] bigint  NULL,
    [AvgOrderedAsPersonCurrencyID] bigint  NULL,
    [NoOfDaysLastQuotAsCompany] bigint  NULL,
    [TotalQuotACompany] bigint  NULL,
    [RatioOfOrderAsCompany] bigint  NULL,
    [AvgQuotPriceAsCompany] bigint  NULL,
    [AvgQuotAsCompanyCurrencyID] bigint  NULL,
    [AvgOrderedPriceAsCompany] bigint  NULL,
    [AvgOrderedAsCompanyCurrencyID] bigint  NULL
);
GO

-- Creating table 'CompanyShares'
CREATE TABLE [dbo].[CompanyShares] (
    [ID] bigint IDENTITY(1,1) NOT NULL,
    [ShareType] int  NOT NULL,
    [ShareName] nvarchar(100)  NOT NULL,
    [ShareNicName] nvarchar(100)  NULL,
    [ShareRate] decimal(18,2)  NULL
);
GO

-- Creating table 'CompanyTradingCategories'
CREATE TABLE [dbo].[CompanyTradingCategories] (
    [ID] uniqueidentifier  NOT NULL,
    [CompanyID] uniqueidentifier  NOT NULL,
    [TradingCategoryID] uniqueidentifier  NULL,
    [TradingCategoryItemID] uniqueidentifier  NULL,
    [IsSelected] bit  NULL
);
GO

-- Creating table 'ContactUs'
CREATE TABLE [dbo].[ContactUs] (
    [ID] uniqueidentifier  NOT NULL,
    [RegistrationID] bigint IDENTITY(1,1) NOT NULL,
    [Name_en] nvarchar(50)  NOT NULL,
    [Name_jp] nvarchar(50)  NULL,
    [Name_fr] nvarchar(50)  NULL,
    [Name_kr] nvarchar(50)  NULL,
    [Name_cn] nvarchar(50)  NULL,
    [Name_tl] nvarchar(50)  NULL,
    [DivisionName] nvarchar(100)  NOT NULL,
    [TelNumber] nvarchar(50)  NULL,
    [Fax] nvarchar(50)  NULL,
    [Email] nvarchar(50)  NOT NULL,
    [Comment_en] nvarchar(max)  NOT NULL,
    [Comment_jp] nvarchar(max)  NULL,
    [Comment_fr] nvarchar(max)  NULL,
    [Comment_kr] nvarchar(max)  NULL,
    [Comment_cn] nvarchar(max)  NULL,
    [Comment_tl] nvarchar(max)  NULL,
    [ApplicationID] bigint  NULL,
    [CreatedDate] datetime  NULL,
    [IsActive] bit  NOT NULL,
    [IsDeleted] bit  NOT NULL,
    [ReplyDate] datetime  NULL,
    [RepliedBy] bigint  NULL,
    [IsReplied] bit  NOT NULL,
    [CompanyName] nvarchar(100)  NULL,
    [CompanyURLOne] nvarchar(max)  NULL,
    [CompanyURLTwo] nvarchar(max)  NULL,
    [PrefferedWebSystem] nvarchar(max)  NULL
);
GO

-- Creating table 'EmailDeliverySettings'
CREATE TABLE [dbo].[EmailDeliverySettings] (
    [ID] uniqueidentifier  NOT NULL,
    [CustomerID] uniqueidentifier  NULL,
    [StaffID] uniqueidentifier  NULL,
    [Email] nvarchar(50)  NULL,
    [MobileNumber] nvarchar(50)  NULL,
    [IsBusinessHour] bit  NOT NULL,
    [IsInterval] bit  NOT NULL,
    [IsAnyTime] bit  NOT NULL,
    [StartTime] nvarchar(50)  NULL,
    [EndTime] nvarchar(50)  NULL,
    [IsArrangedNotice] bit  NOT NULL,
    [IsDeliveryNotice] bit  NOT NULL,
    [IsTranslatorRequest] bit  NOT NULL,
    [IsMessageNotice] bit  NOT NULL,
    [IsTranslatiorConfirmed] bit  NOT NULL,
    [IsPaymentNotification] bit  NOT NULL,
    [ApplicationId] bigint  NULL,
    [CreatedBy] bigint  NULL,
    [CreatedDate] datetime  NULL,
    [UpdatedBy] bigint  NULL,
    [UpdatedDate] datetime  NULL
);
GO

-- Creating table 'EmailHistories'
CREATE TABLE [dbo].[EmailHistories] (
    [ID] bigint IDENTITY(1,1) NOT NULL,
    [EmailTo] nvarchar(50)  NULL,
    [EmailSubject] nvarchar(250)  NULL,
    [SendBy] bigint  NULL,
    [EmailBody] nvarchar(max)  NULL,
    [AttachedFile] nvarchar(max)  NULL,
    [CreatedDate] datetime  NULL,
    [CreatedBy] bigint  NULL
);
GO

-- Creating table 'EmailTemplates'
CREATE TABLE [dbo].[EmailTemplates] (
    [ID] bigint IDENTITY(1,1) NOT NULL,
    [Name_en] nvarchar(250)  NULL,
    [Name_jp] nvarchar(250)  NULL,
    [Name_kr] nvarchar(250)  NULL,
    [Name_cn] nvarchar(250)  NULL,
    [Name_fr] nvarchar(250)  NULL,
    [Name_tl] nvarchar(250)  NULL,
    [ParentID] bigint  NULL,
    [Subject_en] nvarchar(250)  NULL,
    [Subject_jp] nvarchar(250)  NULL,
    [Subject_kr] nvarchar(250)  NULL,
    [Subject_cn] nvarchar(250)  NULL,
    [Subject_fr] nvarchar(250)  NULL,
    [Subject_tl] nvarchar(250)  NULL,
    [Body_en] nvarchar(max)  NULL,
    [Body_jp] nvarchar(max)  NULL,
    [Body_kr] nvarchar(max)  NULL,
    [Body_cn] nvarchar(max)  NULL,
    [Body_fr] nvarchar(max)  NULL,
    [Body_tl] nvarchar(max)  NULL,
    [IsActive] bit  NOT NULL,
    [IsDeleted] bit  NOT NULL,
    [CreatedBy] bigint  NULL,
    [CreatedDate] datetime  NULL,
    [UpdatedBy] bigint  NULL,
    [UpdatedDate] datetime  NULL
);
GO

-- Creating table 'Employees'
CREATE TABLE [dbo].[Employees] (
    [ID] uniqueidentifier  NOT NULL,
    [RegistrationID] bigint IDENTITY(1,1) NOT NULL,
    [EmployeeID] nvarchar(50)  NOT NULL,
    [CountryID] bigint  NOT NULL,
    [DepartmentID] uniqueidentifier  NOT NULL,
    [BranchOfficeID] uniqueidentifier  NULL,
    [EmployeeTypeID] bigint  NULL,
    [ApplicationID] bigint  NULL,
    [Name_en] nvarchar(200)  NOT NULL,
    [Name_jp] nvarchar(200)  NULL,
    [Name_kr] nvarchar(200)  NULL,
    [Name_cn] nvarchar(200)  NULL,
    [Name_fr] nvarchar(200)  NULL,
    [Name_tl] nvarchar(200)  NULL,
    [Password] nvarchar(50)  NULL,
    [BirthDate] datetime  NOT NULL,
    [JoiningDate] datetime  NOT NULL,
    [RegistrationDate] datetime  NOT NULL,
    [LeavingDate] datetime  NULL,
    [AttendanceDay] int  NULL,
    [ClockInTime] nvarchar(50)  NOT NULL,
    [ClockOutTime] nvarchar(50)  NOT NULL,
    [SkypeID] nvarchar(200)  NULL,
    [SkypePassword] nvarchar(200)  NULL,
    [Email] nvarchar(100)  NULL,
    [IsResponsiblePerson] bit  NULL,
    [HomeAddress_en] nvarchar(max)  NULL,
    [HomeAddress_jp] nvarchar(max)  NULL,
    [HomeAddress_kr] nvarchar(max)  NULL,
    [HomeAddress_cn] nvarchar(max)  NULL,
    [HomeAddress_fr] nvarchar(max)  NULL,
    [HomeAddress_tl] nvarchar(max)  NULL,
    [HomePhone] nvarchar(20)  NULL,
    [MobilePhone] nvarchar(20)  NULL,
    [PCEmail] nvarchar(100)  NULL,
    [MobileEmail] nvarchar(100)  NULL,
    [Sns_one] nvarchar(500)  NULL,
    [Sns_two] nvarchar(500)  NULL,
    [BankID] uniqueidentifier  NOT NULL,
    [BankBranchID] uniqueidentifier  NOT NULL,
    [BankAccountTypeID] bigint  NOT NULL,
    [BankAccountNumber] nvarchar(50)  NULL,
    [BankAccountName] nvarchar(100)  NULL,
    [Photo] nvarchar(max)  NULL,
    [Signature] nvarchar(max)  NULL,
    [Institute_en] nvarchar(250)  NULL,
    [Institute_jp] nvarchar(250)  NULL,
    [Institute_kr] nvarchar(250)  NULL,
    [Institute_cn] nvarchar(250)  NULL,
    [Institute_fr] nvarchar(250)  NULL,
    [Institute_tl] nvarchar(250)  NULL,
    [AcademicQualification] nvarchar(max)  NULL,
    [Language_one] uniqueidentifier  NOT NULL,
    [Language_two] uniqueidentifier  NULL,
    [Language_three] uniqueidentifier  NULL,
    [SelfIntroduction_en] nvarchar(max)  NULL,
    [SelfIntroduction_jp] nvarchar(max)  NULL,
    [SelfIntroduction_kr] nvarchar(max)  NULL,
    [SelfIntroduction_fr] nvarchar(max)  NULL,
    [SelfIntroduction_tl] nvarchar(max)  NULL,
    [SelfIntroduction_cn] nvarchar(max)  NULL,
    [Note_en] nvarchar(max)  NULL,
    [Note_jp] nvarchar(max)  NULL,
    [Note_kr] nvarchar(max)  NULL,
    [Note_fr] nvarchar(max)  NULL,
    [Note_tl] nvarchar(max)  NULL,
    [Note_cn] nvarchar(max)  NULL,
    [CreatedBy] bigint  NULL,
    [CreatedDate] datetime  NULL,
    [UpdatedBy] bigint  NULL,
    [UpdatedDate] datetime  NULL,
    [Active] bit  NOT NULL,
    [IsDeleted] bit  NOT NULL
);
GO

-- Creating table 'ErrorLogs'
CREATE TABLE [dbo].[ErrorLogs] (
    [ID] uniqueidentifier  NOT NULL,
    [UserID] bigint  NOT NULL,
    [Component] nvarchar(100)  NOT NULL,
    [Description] nvarchar(500)  NULL,
    [CreatedDate] datetime  NOT NULL
);
GO

-- Creating table 'ErrorReportWebs'
CREATE TABLE [dbo].[ErrorReportWebs] (
    [ID] bigint IDENTITY(1,1) NOT NULL,
    [ApplicationID] bigint  NULL,
    [Email] nvarchar(250)  NULL,
    [Name] nvarchar(250)  NULL,
    [ErrorPageUrl] nvarchar(500)  NULL,
    [ErrorMessage] nvarchar(500)  NULL,
    [OsName] nvarchar(250)  NULL,
    [BrowserVersion] nvarchar(250)  NULL,
    [Reproducibility] nvarchar(500)  NULL,
    [ErrorDescription] nvarchar(500)  NULL,
    [CreatedDate] datetime  NULL
);
GO

-- Creating table 'Estimations'
CREATE TABLE [dbo].[Estimations] (
    [ID] uniqueidentifier  NOT NULL,
    [RegistrationID] bigint IDENTITY(1,1) NOT NULL,
    [EstimationNo] nvarchar(50)  NOT NULL,
    [InquiryDate] datetime  NULL,
    [RegistrationDate] datetime  NOT NULL,
    [ApplicationID] bigint  NULL,
    [EstimateRouteID] uniqueidentifier  NULL,
    [OutwardSalesID] uniqueidentifier  NULL,
    [LargeSalesID] uniqueidentifier  NULL,
    [SalesPersonID] uniqueidentifier  NULL,
    [AssistantID] uniqueidentifier  NULL,
    [CoordinatorID] uniqueidentifier  NULL,
    [ApprovalID] uniqueidentifier  NULL,
    [ClientID] uniqueidentifier  NOT NULL,
    [ClientDepartmentID] uniqueidentifier  NULL,
    [TradingID] uniqueidentifier  NOT NULL,
    [ProjectID] uniqueidentifier  NULL,
    [TeamID] uniqueidentifier  NULL,
    [IsCompanyPrivate] bit  NULL,
    [ClientStatus] int  NULL,
    [SubSpecializedFieldID] uniqueidentifier  NULL,
    [BusinessCategoryID] uniqueidentifier  NULL,
    [ClientPersonInCharge] nvarchar(250)  NULL,
    [ClientEmailCC] nvarchar(20)  NULL,
    [ClientAddress_en] nvarchar(max)  NULL,
    [ClientAddress_jp] nvarchar(max)  NULL,
    [ClientAddress_kr] nvarchar(max)  NULL,
    [ClientAddress_cn] nvarchar(max)  NULL,
    [ClientAddress_fr] nvarchar(max)  NULL,
    [ClientAddress_tl] nvarchar(max)  NULL,
    [ClientContactNo] nvarchar(25)  NULL,
    [ClientFax] nvarchar(25)  NULL,
    [BillingCompanyName_en] nvarchar(250)  NULL,
    [BillingCompanyName_jp] nvarchar(250)  NULL,
    [BillingCompanyName_kr] nvarchar(250)  NULL,
    [BillingCompanyName_cn] nvarchar(250)  NULL,
    [BillingCompanyName_fr] nvarchar(250)  NULL,
    [BillingCompanyName_tl] nvarchar(250)  NULL,
    [BillingTo] nvarchar(100)  NULL,
    [BillingEmailCC] nvarchar(20)  NULL,
    [BillingAddress_en] nvarchar(max)  NULL,
    [BillingAddress_jp] nvarchar(max)  NULL,
    [BillingAddress_kr] nvarchar(max)  NULL,
    [BillingAddress_cn] nvarchar(max)  NULL,
    [BillingAddress_fr] nvarchar(max)  NULL,
    [BillingAddress_tl] nvarchar(max)  NULL,
    [BillingContactNo] nvarchar(25)  NULL,
    [BillingFax] nvarchar(25)  NULL,
    [IsPostingBill] bit  NULL,
    [PaymentTerms] nvarchar(250)  NULL,
    [DeliveryCompanyName_en] nvarchar(250)  NULL,
    [DeliveryCompanyName_jp] nvarchar(250)  NULL,
    [DeliveryCompanyName_kr] nvarchar(250)  NULL,
    [DeliveryCompanyName_cn] nvarchar(250)  NULL,
    [DeliveryCompanyName_fr] nvarchar(250)  NULL,
    [DeliveryCompanyName_tl] nvarchar(250)  NULL,
    [DeliveryTo] nvarchar(100)  NULL,
    [DeliveryEmailCC] nvarchar(20)  NULL,
    [DeliveryAddress_en] nvarchar(max)  NULL,
    [DeliveryAddress_jp] nvarchar(max)  NULL,
    [DeliveryAddress_kr] nvarchar(max)  NULL,
    [DeliveryAddress_cn] nvarchar(max)  NULL,
    [DeliveryAddress_fr] nvarchar(max)  NULL,
    [DeliveryAddress_tl] nvarchar(max)  NULL,
    [DeliveryContactNo] nvarchar(25)  NULL,
    [DeliveryFax] nvarchar(25)  NULL,
    [DeliveryInstruction] nvarchar(500)  NULL,
    [RemarksCoordinatorType] varchar(250)  NULL,
    [CurrencyID] bigint  NULL,
    [IsProspect] bit  NULL,
    [IsUndisclosed] bit  NULL,
    [EstimationType] int  NOT NULL,
    [EstimationStatus] int  NOT NULL,
    [SpecializedFieldID] uniqueidentifier  NOT NULL,
    [IsInternalPurpose] bit  NULL,
    [IsExternalPurpose] bit  NULL,
    [IsPrintPurpose] bit  NULL,
    [IsWebPurpose] bit  NULL,
    [IsOtherPurpose] bit  NULL,
    [OtherPurposeText] nvarchar(250)  NULL,
    [PriorityQuality] bit  NULL,
    [PriorityPrice] bit  NULL,
    [PriorityDelivery] bit  NULL,
    [PriorityTender] bit  NULL,
    [KnownByGoogle] bit  NULL,
    [KnownByYahoo] bit  NULL,
    [KnownByEmail] bit  NULL,
    [KnownByBing] bit  NULL,
    [KnownByOthers] bit  NULL,
    [KnownOtherText] nvarchar(250)  NULL,
    [FinalDeliveryDate] datetime  NULL,
    [FirstDeliveryDate] datetime  NULL,
    [StartDate] datetime  NULL,
    [EndDate] datetime  NULL,
    [AttachedMaterialFileName] nvarchar(250)  NULL,
    [AttachedMaterialDownloadURL] nvarchar(max)  NULL,
    [CoordinatorNotes_en] nvarchar(max)  NULL,
    [CoordinatorNotes_jp] nvarchar(max)  NULL,
    [CoordinatorNotes_kr] nvarchar(max)  NULL,
    [CoordinatorNotes_cn] nvarchar(250)  NULL,
    [CoordinatorNotes_fr] nvarchar(max)  NULL,
    [CoordinatorNotes_tl] nvarchar(max)  NULL,
    [Remarks_en] nvarchar(max)  NULL,
    [Remarks_jp] nvarchar(max)  NULL,
    [Remarks_kr] nvarchar(max)  NULL,
    [Remarks_cn] nvarchar(max)  NULL,
    [Remarks_fr] nvarchar(max)  NULL,
    [Remarks_tl] nvarchar(max)  NULL,
    [IsRemarksHideInPDF] bit  NULL,
    [IsOrderReceived] bit  NULL,
    [DiscountTotal] decimal(18,2)  NULL,
    [AverageUnitPrice] decimal(18,2)  NULL,
    [ActualUnitPrice] decimal(18,2)  NULL,
    [IsDeleted] bit  NOT NULL,
    [PurposeDetails] nvarchar(max)  NULL,
    [OrderTitle] nvarchar(max)  NULL,
    [IssuedByTranslator] bigint  NOT NULL,
    [IssuedByCompany] bigint  NOT NULL,
    [PriceCertification] decimal(18,2)  NULL,
    [OtherItemName_en] nvarchar(max)  NULL,
    [OtherItemName_jp] nvarchar(max)  NULL,
    [OtherItemName_kr] nvarchar(max)  NULL,
    [OtherItemName_cn] nvarchar(max)  NULL,
    [OtherItemName_fr] nvarchar(max)  NULL,
    [OtherItemName_tl] nvarchar(max)  NULL,
    [OtherItemUnitPrice] decimal(18,2)  NULL,
    [OtherItemNumber] int  NULL,
    [OtherAmount] decimal(18,2)  NULL,
    [TaxEstimation] decimal(18,2)  NULL,
    [QuotationInclTax] decimal(18,2)  NULL,
    [QuotationExclTax] decimal(18,2)  NULL,
    [ConsumptionOnTax] decimal(18,2)  NULL,
    [ExcludedTaxCost] decimal(18,2)  NULL,
    [IsCampaign] bit  NULL,
    [IsSpecialPrice] bit  NULL,
    [IsSpecialDeal] bit  NULL,
    [SubtotalAfterDiscount] decimal(18,2)  NULL,
    [QuotationTotalInclTax] decimal(18,2)  NULL,
    [QuotationTotalExclTax] decimal(18,2)  NULL,
    [GrandTotal] decimal(18,2)  NULL,
    [IsPerformance] bit  NULL,
    [IsPrice] bit  NULL,
    [IsAccuracy] bit  NULL,
    [IsLocal] bit  NULL,
    [ExpensePriceInTax] decimal(18,2)  NULL,
    [GrossProfitRate] decimal(18,2)  NULL,
    [TotalPriceExTax] decimal(18,2)  NULL,
    [GrossProfit] decimal(18,2)  NULL,
    [ConsumptionTax] decimal(18,2)  NULL,
    [Profit] decimal(18,2)  NULL,
    [TotalWithoutTax] decimal(18,2)  NULL,
    [TotalWithTax] decimal(18,2)  NULL,
    [MenuScript] nvarchar(max)  NULL,
    [QuotationNotes_en] nvarchar(max)  NULL,
    [QuotationNotes_cn] nvarchar(max)  NULL,
    [QuotationNotes_jp] nvarchar(max)  NULL,
    [QuotationNotes_kr] nvarchar(max)  NULL,
    [QuotationNotes_fr] nvarchar(max)  NULL,
    [QuotationNotes_tl] nvarchar(max)  NULL,
    [ReturnDocument] bit  NOT NULL,
    [AddTimestampInSubtitles] bit  NOT NULL,
    [IsTemporaryRegistration] bit  NOT NULL,
    [IsPromotion] bit  NOT NULL,
    [IsSpecialPayment] bit  NOT NULL,
    [IsPastComplaint] bit  NOT NULL,
    [IsExpertise] bit  NOT NULL,
    [IsOnGoingTask] bit  NOT NULL,
    [IsOverseas] bit  NOT NULL,
    [IsJapan] bit  NOT NULL,
    [CountryID] bigint  NULL,
    [KnownByIntroduction] bit  NULL,
    [KnownIntroductionText] nvarchar(250)  NULL,
    [UnitID] bigint  NULL,
    [IsContentAll] bit  NULL,
    [CreatedBy] bigint  NULL,
    [CreateDate] datetime  NULL
);
GO

-- Creating table 'EstimationActions'
CREATE TABLE [dbo].[EstimationActions] (
    [ID] uniqueidentifier  NOT NULL,
    [EstimationID] uniqueidentifier  NOT NULL,
    [NextActionDate] datetime  NULL,
    [ActionType] int  NULL,
    [OperationBy] bigint  NOT NULL,
    [OperationDate] datetime  NOT NULL,
    [ActionDetails_en] nvarchar(500)  NULL,
    [ActionDetails_jp] nvarchar(500)  NULL,
    [ActionDetails_kr] nvarchar(500)  NULL,
    [ActionDetails_cn] nvarchar(500)  NULL,
    [ActionDetails_fr] nvarchar(500)  NULL,
    [ActionDetails_tl] nvarchar(500)  NULL
);
GO

-- Creating table 'EstimationActionTypes'
CREATE TABLE [dbo].[EstimationActionTypes] (
    [ID] bigint IDENTITY(1,1) NOT NULL,
    [Type] int  NOT NULL,
    [ActionText] nvarchar(200)  NOT NULL
);
GO

-- Creating table 'EstimationApprovals'
CREATE TABLE [dbo].[EstimationApprovals] (
    [ID] uniqueidentifier  NOT NULL,
    [ApplicationID] bigint  NOT NULL,
    [ApproverID] uniqueidentifier  NULL,
    [EstimationID] uniqueidentifier  NULL,
    [OrderID] uniqueidentifier  NULL,
    [Description] nvarchar(250)  NULL,
    [Status] int  NULL,
    [CreatedBy] bigint  NULL,
    [CreatedDate] datetime  NULL
);
GO

-- Creating table 'EstimationCompetencies'
CREATE TABLE [dbo].[EstimationCompetencies] (
    [ID] uniqueidentifier  NOT NULL,
    [EstimationID] uniqueidentifier  NOT NULL,
    [CompetencyType] varchar(50)  NOT NULL,
    [CompetencyDetail] varchar(50)  NOT NULL
);
GO

-- Creating table 'EstimationDeliveryFileTypes'
CREATE TABLE [dbo].[EstimationDeliveryFileTypes] (
    [ID] uniqueidentifier  NOT NULL,
    [EstimationID] uniqueidentifier  NOT NULL,
    [FileType] varchar(50)  NOT NULL,
    [Version] varchar(50)  NULL,
    [IsDeleted] bit  NOT NULL
);
GO

-- Creating table 'EstimationDetails'
CREATE TABLE [dbo].[EstimationDetails] (
    [ID] uniqueidentifier  NOT NULL,
    [EstimationID] uniqueidentifier  NOT NULL,
    [SourceLanguageID] uniqueidentifier  NOT NULL,
    [TargetLanguageID] uniqueidentifier  NOT NULL,
    [ServiceType] uniqueidentifier  NOT NULL,
    [DeliveryPlanID] bigint  NULL,
    [UnitPrice1] decimal(18,2)  NULL,
    [PageCount1] int  NULL,
    [Discount1] decimal(18,2)  NULL,
    [UnitPrice2] decimal(18,2)  NULL,
    [PageCount2] int  NULL,
    [Discount2] decimal(18,2)  NULL,
    [UnitPrice3] decimal(18,2)  NULL,
    [PageCount3] int  NULL,
    [Discount3] decimal(18,2)  NULL,
    [UnitPrice4] decimal(18,2)  NULL,
    [PageCount4] int  NULL,
    [Discount4] decimal(18,2)  NULL,
    [UnitPrice5] decimal(18,2)  NULL,
    [PageCount5] int  NULL,
    [Discount5] decimal(18,2)  NULL,
    [BasicTime] decimal(18,2)  NULL,
    [AdditionalTime] decimal(18,2)  NULL,
    [AdditionalBasicAmount] decimal(18,2)  NULL,
    [ExtraTime] int  NULL,
    [LateNightTime] decimal(18,2)  NULL,
    [TransferTime] decimal(18,2)  NULL,
    [BasicAmount] decimal(18,2)  NULL,
    [ExtensionTime] decimal(18,2)  NULL,
    [ExtensionAmount] decimal(18,2)  NULL,
    [ExtraAmount] decimal(18,2)  NULL,
    [LateAtNightAmount] decimal(18,2)  NULL,
    [TransferAmount] decimal(18,2)  NULL,
    [NumberOfDays] int  NULL,
    [NumberOfPeople] int  NULL,
    [OtherAmount] decimal(18,2)  NULL,
    [CertificateAmount] decimal(18,2)  NULL,
    [ExcludeTax] bit  NULL,
    [Contents] nvarchar(max)  NULL,
    [LengthMinute] decimal(18,2)  NULL,
    [WithTranslation] bit  NULL,
    [UnitPriceTime] decimal(18,2)  NULL,
    [UnitPriceSubTotal] decimal(18,2)  NULL,
    [DiscountRate] decimal(18,2)  NULL,
    [DiscountedPrice] decimal(18,2)  NULL,
    [EstimationPrice] decimal(18,2)  NULL,
    [StudioPrice] decimal(18,2)  NULL,
    [StudioPriceTime] decimal(18,2)  NULL,
    [EditPrice] decimal(18,2)  NULL,
    [EditPriceTime] decimal(18,2)  NULL,
    [StudioPriceSubTotal] decimal(18,2)  NULL,
    [StudioPriceDiscountRate] decimal(18,2)  NULL,
    [StudioDiscountedPrice] decimal(18,2)  NULL,
    [TotalAfterDiscount] decimal(18,2)  NULL,
    [Total] decimal(18,2)  NULL,
    [PaymentRate] decimal(18,2)  NULL,
    [ExpectedPayment] decimal(18,2)  NULL,
    [StartDate] datetime  NULL,
    [CompletionDate] datetime  NULL,
    [StartTime] nvarchar(50)  NULL,
    [FinishTime] nvarchar(50)  NULL,
    [IsOverseas] bit  NULL
);
GO

-- Creating table 'EstimationFiles'
CREATE TABLE [dbo].[EstimationFiles] (
    [ID] uniqueidentifier  NOT NULL,
    [EstimateID] uniqueidentifier  NOT NULL,
    [EstimateDetailsID] uniqueidentifier  NOT NULL,
    [FileName] nvarchar(250)  NULL,
    [DownloadURL] nvarchar(500)  NULL,
    [TranslationText] nvarchar(max)  NULL,
    [WordCount] int  NULL
);
GO

-- Creating table 'EstimationNarrationExpenses'
CREATE TABLE [dbo].[EstimationNarrationExpenses] (
    [ID] uniqueidentifier  NOT NULL,
    [TransportationUnitprice] int  NULL,
    [TransportationNumberOfPersons] int  NULL,
    [TransportationNumberOfDays] int  NULL,
    [TransportationTotal] int  NULL,
    [AccomodationUnitprice] int  NULL,
    [AccomodationNumberOfPersons] int  NULL,
    [AccomodationNumberOfDays] int  NULL,
    [AccomodationTotal] int  NULL,
    [MealUnitprice] int  NULL,
    [MealNumberOfPersons] int  NULL,
    [MealNumberOfDays] int  NULL,
    [MealTotal] int  NULL,
    [AllowanceUnitprice] int  NULL,
    [AllowanceNumberOfPersons] int  NULL,
    [AllowanceNumberOfDays] int  NULL,
    [AllowanceTotal] int  NULL,
    [TransportationExclTax] bit  NULL,
    [AccomodationCompleteSet] bit  NULL,
    [AccomodationExclTax] bit  NULL,
    [MealCompleteSet] bit  NULL,
    [MealExclTax] bit  NULL,
    [AllowanceCompleteSet] bit  NULL,
    [AllowanceExclTax] bit  NULL,
    [EstimationID] uniqueidentifier  NOT NULL
);
GO

-- Creating table 'EstimationProjects'
CREATE TABLE [dbo].[EstimationProjects] (
    [ID] uniqueidentifier  NOT NULL,
    [RegistrationID] bigint IDENTITY(1,1) NOT NULL,
    [ProjectNo] nvarchar(50)  NULL,
    [Name_en] nvarchar(250)  NOT NULL,
    [Name_jp] nvarchar(250)  NULL,
    [Name_kr] nvarchar(250)  NULL,
    [Name_cn] nvarchar(250)  NULL,
    [Name_fr] nvarchar(250)  NULL,
    [Name_tl] nvarchar(250)  NULL,
    [Description_en] nvarchar(500)  NULL,
    [Description_jp] nvarchar(500)  NULL,
    [Description_kr] nvarchar(500)  NULL,
    [Description_cn] nvarchar(500)  NULL,
    [Description_fr] nvarchar(500)  NULL,
    [Description_tl] nvarchar(500)  NULL,
    [ApplicationId] bigint  NULL,
    [CreatedBy] bigint  NULL,
    [CreatedDate] datetime  NULL,
    [UpdatedBy] bigint  NULL,
    [UpdatedDate] datetime  NULL
);
GO

-- Creating table 'EstimationRequestHistories'
CREATE TABLE [dbo].[EstimationRequestHistories] (
    [ID] uniqueidentifier  NOT NULL,
    [EstimationID] uniqueidentifier  NOT NULL,
    [CompanyID] uniqueidentifier  NOT NULL,
    [CreatedDate] datetime  NOT NULL,
    [CreatedBy] bigint  NOT NULL
);
GO

-- Creating table 'EstimationUserAccesses'
CREATE TABLE [dbo].[EstimationUserAccesses] (
    [ID] bigint IDENTITY(1,1) NOT NULL,
    [UserID] bigint  NOT NULL,
    [EstimationTypeID] int  NOT NULL,
    [EstimationStatusID] int  NOT NULL,
    [Options] nvarchar(500)  NULL,
    [IsActive] bit  NULL,
    [IsDelete] bit  NULL
);
GO

-- Creating table 'EstimationWorkContents'
CREATE TABLE [dbo].[EstimationWorkContents] (
    [ID] uniqueidentifier  NOT NULL,
    [EstimationID] uniqueidentifier  NOT NULL,
    [WorkContent] varchar(50)  NOT NULL,
    [IsDeleted] bit  NOT NULL
);
GO

-- Creating table 'HiworkLanguagePrices'
CREATE TABLE [dbo].[HiworkLanguagePrices] (
    [ID] uniqueidentifier  NOT NULL,
    [SourceLanguageID] uniqueidentifier  NOT NULL,
    [TargetLanguageID] uniqueidentifier  NOT NULL,
    [GeneralPrice] decimal(18,2)  NULL,
    [SpecialPrice] decimal(18,2)  NULL,
    [PatentPrice] decimal(18,2)  NULL,
    [CurrencyID] bigint  NULL,
    [IsActive] bit  NULL,
    [CreatedBy] bigint  NULL,
    [CreatedDate] datetime  NULL,
    [UpdatedBy] bigint  NULL,
    [UpdatedDate] datetime  NULL
);
GO

-- Creating table 'Master_Address'
CREATE TABLE [dbo].[Master_Address] (
    [ID] uniqueidentifier  NOT NULL,
    [CountryID] bigint  NOT NULL,
    [Address_en] nvarchar(500)  NOT NULL,
    [Address_jp] nvarchar(500)  NULL,
    [Address_kr] nvarchar(500)  NULL,
    [Address_cn] nvarchar(500)  NULL,
    [Address_fr] nvarchar(500)  NULL,
    [Address_tl] nvarchar(500)  NULL,
    [CreatedDate] datetime  NULL,
    [CreatedBy] uniqueidentifier  NULL,
    [UpdatedDate] datetime  NULL,
    [UpdatedBy] uniqueidentifier  NULL,
    [IsActive] bit  NOT NULL,
    [IsDeleted] bit  NULL
);
GO

-- Creating table 'Master_AgentBusiness'
CREATE TABLE [dbo].[Master_AgentBusiness] (
    [ID] uniqueidentifier  NOT NULL,
    [Code] varchar(5)  NOT NULL,
    [Name_en] nvarchar(250)  NULL,
    [Name_jp] nvarchar(250)  NULL,
    [Name_kr] nvarchar(250)  NULL,
    [Name_cn] nvarchar(250)  NULL,
    [Name_fr] nvarchar(250)  NULL,
    [Name_tl] nvarchar(250)  NULL,
    [IsActive] bit  NOT NULL,
    [IsDeleted] bit  NULL,
    [CreatedBy] bigint  NOT NULL,
    [CreatedDate] datetime  NOT NULL,
    [UpdatedBy] bigint  NULL,
    [UpdatedDate] datetime  NULL
);
GO

-- Creating table 'Master_AgentCharacterstics'
CREATE TABLE [dbo].[Master_AgentCharacterstics] (
    [ID] uniqueidentifier  NOT NULL,
    [Code] varchar(5)  NOT NULL,
    [Name_en] nvarchar(250)  NULL,
    [Name_jp] nvarchar(250)  NULL,
    [Name_kr] nvarchar(250)  NULL,
    [Name_cn] nvarchar(250)  NULL,
    [Name_fr] nvarchar(250)  NULL,
    [Name_tl] nvarchar(250)  NULL,
    [IsActive] bit  NOT NULL,
    [IsDeleted] bit  NULL,
    [CreatedBy] bigint  NOT NULL,
    [CreatedDate] datetime  NOT NULL,
    [UpdatedBy] bigint  NULL,
    [UpdatedDate] datetime  NULL
);
GO

-- Creating table 'Master_AgentFreeDesignation'
CREATE TABLE [dbo].[Master_AgentFreeDesignation] (
    [ID] uniqueidentifier  NOT NULL,
    [Code] varchar(5)  NOT NULL,
    [Name_en] nvarchar(250)  NULL,
    [Name_jp] nvarchar(250)  NULL,
    [Name_kr] nvarchar(250)  NULL,
    [Name_cn] nvarchar(250)  NULL,
    [Name_fr] nvarchar(250)  NULL,
    [Name_tl] nvarchar(250)  NULL,
    [IsActive] bit  NOT NULL,
    [IsDeleted] bit  NULL,
    [CreatedBy] bigint  NOT NULL,
    [CreatedDate] datetime  NOT NULL,
    [UpdatedBy] bigint  NULL,
    [UpdatedDate] datetime  NULL
);
GO

-- Creating table 'Master_Bank'
CREATE TABLE [dbo].[Master_Bank] (
    [ID] uniqueidentifier  NOT NULL,
    [CountryID] bigint  NOT NULL,
    [CurrencyID] bigint  NULL,
    [Code] varchar(5)  NOT NULL,
    [Name_en] nvarchar(200)  NOT NULL,
    [Name_jp] nvarchar(200)  NULL,
    [Name_cn] nvarchar(200)  NULL,
    [Name_kr] nvarchar(200)  NULL,
    [Name_fr] nvarchar(200)  NULL,
    [Name_tl] nvarchar(200)  NULL,
    [CreatedBy] bigint  NOT NULL,
    [CreatedDate] datetime  NULL,
    [UpdatedBy] bigint  NOT NULL,
    [UpdatedDate] datetime  NULL,
    [IsActive] bit  NOT NULL,
    [IsDeleted] bit  NULL
);
GO

-- Creating table 'Master_BankAccount'
CREATE TABLE [dbo].[Master_BankAccount] (
    [ID] uniqueidentifier  NOT NULL,
    [BankID] uniqueidentifier  NOT NULL,
    [BankBranchID] uniqueidentifier  NOT NULL,
    [AccountTypeID] bigint  NOT NULL,
    [AccountNo] nvarchar(100)  NOT NULL,
    [AccountName_en] nvarchar(200)  NULL,
    [AccountName_jp] nvarchar(200)  NULL,
    [AccountName_kr] nvarchar(200)  NULL,
    [AccountName_cn] nvarchar(200)  NULL,
    [AccountName_fr] nvarchar(200)  NULL,
    [AccountName_tl] nvarchar(200)  NULL,
    [CreatedBy] bigint  NULL,
    [CreatedDate] datetime  NULL,
    [UpdatedBy] bigint  NULL,
    [UpdatedDate] datetime  NULL,
    [IsActive] bit  NOT NULL,
    [IsDeleted] bit  NULL
);
GO

-- Creating table 'Master_BankAccountType'
CREATE TABLE [dbo].[Master_BankAccountType] (
    [ID] bigint  NOT NULL,
    [Name_en] nvarchar(100)  NOT NULL,
    [Name_jp] nvarchar(100)  NULL,
    [Name_cn] nvarchar(100)  NULL,
    [Name_fr] nvarchar(100)  NULL,
    [Name_kr] nvarchar(100)  NULL,
    [Name_tl] nvarchar(100)  NULL,
    [CreatedBy] bigint  NULL,
    [CreatedDate] datetime  NULL,
    [UpdatedBy] bigint  NULL,
    [UpdateDate] datetime  NULL,
    [IsActive] bit  NOT NULL,
    [IsDeleted] bit  NULL
);
GO

-- Creating table 'Master_BankBranch'
CREATE TABLE [dbo].[Master_BankBranch] (
    [ID] uniqueidentifier  NOT NULL,
    [BankID] uniqueidentifier  NOT NULL,
    [Code] varchar(5)  NOT NULL,
    [SwiftCode] nvarchar(50)  NULL,
    [Name_en] nvarchar(200)  NOT NULL,
    [Name_jp] nvarchar(200)  NULL,
    [Name_kr] nvarchar(200)  NULL,
    [Name_cn] nvarchar(200)  NULL,
    [Name_fr] nvarchar(200)  NULL,
    [Name_tl] nvarchar(200)  NULL,
    [Address_en] nvarchar(500)  NULL,
    [Address_jp] nvarchar(500)  NULL,
    [Address_kr] nvarchar(500)  NULL,
    [Address_cn] nvarchar(500)  NULL,
    [Address_fr] nvarchar(500)  NULL,
    [Address_tl] nvarchar(500)  NULL,
    [CreatedDate] datetime  NULL,
    [CreatedBy] bigint  NULL,
    [UpdatedBy] bigint  NULL,
    [UpdatedDate] datetime  NULL,
    [IsActive] bit  NOT NULL,
    [IsDeleted] bit  NULL
);
GO

-- Creating table 'Master_BranchOffice'
CREATE TABLE [dbo].[Master_BranchOffice] (
    [ID] uniqueidentifier  NOT NULL,
    [CountryID] bigint  NOT NULL,
    [Code] varchar(5)  NOT NULL,
    [Name_en] nvarchar(50)  NOT NULL,
    [Name_jp] nvarchar(50)  NULL,
    [Name_kr] nvarchar(50)  NULL,
    [Name_cn] nvarchar(50)  NULL,
    [Name_fr] nvarchar(50)  NULL,
    [Name_tl] nvarchar(50)  NULL,
    [IsDeleted] bit  NULL,
    [CreatedBy] bigint  NULL,
    [CreatedDate] datetime  NULL,
    [UpdatedDate] datetime  NULL,
    [UpdatedBy] bigint  NULL,
    [IsActive] bit  NOT NULL
);
GO

-- Creating table 'Master_CompanyBusinessService'
CREATE TABLE [dbo].[Master_CompanyBusinessService] (
    [ID] uniqueidentifier  NOT NULL,
    [Code] varchar(5)  NOT NULL,
    [Name_en] nvarchar(150)  NULL,
    [Name_jp] nvarchar(150)  NULL,
    [Name_kr] nvarchar(150)  NULL,
    [Name_cn] nvarchar(150)  NULL,
    [Name_fr] nvarchar(150)  NULL,
    [Name_tl] nvarchar(150)  NULL,
    [IsActive] bit  NOT NULL,
    [IsDeleted] bit  NULL,
    [CreatedBy] bigint  NOT NULL,
    [CreatedDate] datetime  NOT NULL,
    [UpdatedBy] bigint  NULL,
    [UpdatedDate] datetime  NULL
);
GO

-- Creating table 'Master_CompanyBusinessSpeciality'
CREATE TABLE [dbo].[Master_CompanyBusinessSpeciality] (
    [ID] uniqueidentifier  NOT NULL,
    [Code] varchar(5)  NOT NULL,
    [Name_en] nvarchar(150)  NULL,
    [Name_jp] nvarchar(150)  NULL,
    [Name_kr] nvarchar(150)  NULL,
    [Name_cn] nvarchar(150)  NULL,
    [Name_fr] nvarchar(150)  NULL,
    [Name_tl] nvarchar(150)  NULL,
    [IsActive] bit  NOT NULL,
    [IsDeleted] bit  NULL,
    [CreatedBy] bigint  NOT NULL,
    [CreatedDate] datetime  NOT NULL,
    [UpdatedBy] bigint  NULL,
    [UpdatedDate] datetime  NULL
);
GO

-- Creating table 'Master_CompanyIndustryClassification'
CREATE TABLE [dbo].[Master_CompanyIndustryClassification] (
    [ID] uniqueidentifier  NOT NULL,
    [Code] nvarchar(5)  NOT NULL,
    [Name_en] nvarchar(100)  NOT NULL,
    [Name_jp] nvarchar(100)  NULL,
    [Name_kr] nvarchar(100)  NULL,
    [Name_cn] nvarchar(100)  NULL,
    [Name_fr] nvarchar(100)  NULL,
    [Name_tl] nvarchar(100)  NULL,
    [IsOther] bit  NULL,
    [SortBy] int  NULL,
    [CreatedBy] bigint  NULL,
    [CreatedDate] datetime  NULL,
    [UpdatedBy] bigint  NULL,
    [UpdatedDate] datetime  NULL,
    [IsActive] bit  NOT NULL,
    [IsDeleted] bit  NULL
);
GO

-- Creating table 'Master_CompanyIndustryClassificationItem'
CREATE TABLE [dbo].[Master_CompanyIndustryClassificationItem] (
    [ID] uniqueidentifier  NOT NULL,
    [IndustryClassificationID] uniqueidentifier  NOT NULL,
    [Name_en] nvarchar(100)  NULL,
    [Name_jp] nvarchar(100)  NULL,
    [Name_kr] nvarchar(100)  NULL,
    [Name_cn] nvarchar(100)  NULL,
    [Name_fr] nvarchar(100)  NULL,
    [Name_tl] nvarchar(100)  NULL,
    [Description_en] nvarchar(250)  NULL,
    [Description_jp] nvarchar(250)  NULL,
    [Description_kr] nvarchar(250)  NULL,
    [Description_cn] nvarchar(250)  NULL,
    [Description_fr] nvarchar(250)  NULL,
    [Description_tl] nvarchar(250)  NULL,
    [SortBy] int  NULL,
    [IsActive] bit  NULL,
    [IsDeleted] bit  NULL,
    [CreatedBy] bigint  NULL,
    [CreatedDate] datetime  NULL,
    [UpdatedBy] bigint  NULL,
    [UpdatedDate] datetime  NULL
);
GO

-- Creating table 'Master_CompanyTradingCategory'
CREATE TABLE [dbo].[Master_CompanyTradingCategory] (
    [ID] uniqueidentifier  NOT NULL,
    [Code] nvarchar(5)  NOT NULL,
    [Name_en] nvarchar(100)  NOT NULL,
    [Name_jp] nvarchar(100)  NULL,
    [Name_kr] nvarchar(100)  NULL,
    [Name_cn] nvarchar(100)  NULL,
    [Name_fr] nvarchar(100)  NULL,
    [Name_tl] nvarchar(100)  NULL,
    [SortBy] int  NULL,
    [IsActive] bit  NOT NULL,
    [IsDeleted] bit  NULL,
    [CreatedBy] bigint  NOT NULL,
    [CreatedDate] datetime  NOT NULL,
    [UpdatedBy] bigint  NULL,
    [UpdatedDate] datetime  NULL
);
GO

-- Creating table 'Master_CompanyTradingCategoryItem'
CREATE TABLE [dbo].[Master_CompanyTradingCategoryItem] (
    [ID] uniqueidentifier  NOT NULL,
    [TradingCategoryID] uniqueidentifier  NOT NULL,
    [Name_en] nvarchar(100)  NOT NULL,
    [Name_jp] nvarchar(100)  NULL,
    [Name_kr] nvarchar(100)  NULL,
    [Name_cn] nvarchar(100)  NULL,
    [Name_fr] nvarchar(100)  NULL,
    [Name_tl] nvarchar(100)  NULL,
    [Description_en] nvarchar(250)  NULL,
    [Description_jp] nvarchar(250)  NULL,
    [Description_kr] nvarchar(250)  NULL,
    [Description_cn] nvarchar(250)  NULL,
    [Description_fr] nvarchar(250)  NULL,
    [Description_tl] nvarchar(250)  NULL,
    [SortBy] int  NULL,
    [IsActive] bit  NOT NULL,
    [IsDeleted] bit  NULL,
    [CreatedBy] bigint  NOT NULL,
    [CreatedDate] datetime  NOT NULL,
    [UpdatedBy] bigint  NULL,
    [UpdatedDate] datetime  NULL
);
GO

-- Creating table 'Master_CompanyTradingDivision'
CREATE TABLE [dbo].[Master_CompanyTradingDivision] (
    [ID] uniqueidentifier  NOT NULL,
    [Code] varchar(5)  NOT NULL,
    [Name_en] nvarchar(150)  NULL,
    [Name_jp] nvarchar(150)  NULL,
    [Name_kr] nvarchar(150)  NULL,
    [Name_cn] nvarchar(150)  NULL,
    [Name_fr] nvarchar(150)  NULL,
    [Name_tl] nvarchar(150)  NULL,
    [IsActive] bit  NOT NULL,
    [IsDeleted] bit  NULL,
    [CreatedBy] bigint  NOT NULL,
    [CreatedDate] datetime  NOT NULL,
    [UpdatedBy] bigint  NULL,
    [UpdatedDate] datetime  NULL
);
GO

-- Creating table 'Master_Country'
CREATE TABLE [dbo].[Master_Country] (
    [ID] bigint IDENTITY(1,1) NOT NULL,
    [Code] nvarchar(5)  NULL,
    [CurrencyID] bigint  NULL,
    [Name_en] nvarchar(50)  NOT NULL,
    [Name_jp] nvarchar(50)  NULL,
    [Name_kr] nvarchar(50)  NULL,
    [Name_cn] nvarchar(50)  NULL,
    [Name_fr] nvarchar(50)  NULL,
    [Name_tl] nvarchar(50)  NULL,
    [IsTrading] bit  NULL,
    [SortBy] int  NULL,
    [CreatedDate] datetime  NULL,
    [UpdatedDate] datetime  NULL,
    [CreatedBy] bigint  NULL,
    [IsActive] bit  NOT NULL,
    [IsDeleted] bit  NULL,
    [UpdatedBy] bigint  NULL
);
GO

-- Creating table 'Master_Culture'
CREATE TABLE [dbo].[Master_Culture] (
    [ID] uniqueidentifier  NOT NULL,
    [CountryID] bigint  NULL,
    [Code] varchar(5)  NOT NULL,
    [SystemCode] varchar(20)  NOT NULL,
    [Description] nvarchar(50)  NOT NULL,
    [SortBy] int  NULL,
    [CreatedDate] datetime  NULL,
    [UpdatedDate] datetime  NULL,
    [IsActive] bit  NOT NULL,
    [IsDeleted] bit  NULL,
    [CreatedBy] bigint  NULL,
    [UpdatedBy] bigint  NULL
);
GO

-- Creating table 'Master_Currency'
CREATE TABLE [dbo].[Master_Currency] (
    [ID] bigint IDENTITY(1,1) NOT NULL,
    [Code] nvarchar(5)  NOT NULL,
    [Symbol] nvarchar(3)  NOT NULL,
    [Name_en] nvarchar(50)  NULL,
    [Name_jp] nvarchar(50)  NULL,
    [Name_kr] nvarchar(50)  NULL,
    [Name_cn] nvarchar(50)  NULL,
    [Name_fr] nvarchar(50)  NULL,
    [Name_tl] nvarchar(50)  NULL,
    [IsDefalut] bit  NOT NULL,
    [CreatedDate] datetime  NULL,
    [IsActive] bit  NOT NULL,
    [IsDeleted] bit  NULL,
    [CreatedBy] bigint  NULL,
    [UpdatedBy] bigint  NULL,
    [UpdatedDate] datetime  NULL
);
GO

-- Creating table 'Master_CurrencyRate'
CREATE TABLE [dbo].[Master_CurrencyRate] (
    [ID] bigint IDENTITY(1,1) NOT NULL,
    [CurrencyID] bigint  NOT NULL,
    [Rate] decimal(18,2)  NULL,
    [FromDate] datetime  NULL,
    [ToDate] datetime  NULL,
    [IsActive] bit  NOT NULL,
    [IsDeleted] bit  NULL,
    [CreatedDate] datetime  NULL,
    [CreatedBy] bigint  NULL,
    [UpdatedBy] bigint  NULL,
    [UpdatedDate] datetime  NULL
);
GO

-- Creating table 'Master_DeliveryMethod'
CREATE TABLE [dbo].[Master_DeliveryMethod] (
    [ID] int IDENTITY(1,1) NOT NULL,
    [Name_en] nvarchar(250)  NULL,
    [Name_jp] nvarchar(250)  NULL,
    [Name_kr] nvarchar(250)  NULL,
    [Name_cn] nvarchar(250)  NULL,
    [Name_fr] nvarchar(250)  NULL,
    [Name_tl] nvarchar(250)  NULL,
    [Type] int  NULL,
    [IsDeleted] bit  NOT NULL,
    [IsActive] bit  NOT NULL,
    [CreatedBy] bigint  NULL,
    [CreatedDate] datetime  NULL,
    [UpdatedBy] bigint  NULL,
    [UpdatedDate] datetime  NULL
);
GO

-- Creating table 'Master_Department'
CREATE TABLE [dbo].[Master_Department] (
    [ID] uniqueidentifier  NOT NULL,
    [CountryID] bigint  NOT NULL,
    [BranchID] uniqueidentifier  NOT NULL,
    [Code] varchar(5)  NULL,
    [Name_en] nvarchar(200)  NOT NULL,
    [Name_jp] nvarchar(200)  NULL,
    [Name_kr] nvarchar(200)  NULL,
    [Name_cn] nvarchar(200)  NULL,
    [Name_fr] nvarchar(200)  NULL,
    [Name_tl] nvarchar(200)  NULL,
    [Description_en] nvarchar(500)  NULL,
    [Description_jp] nvarchar(500)  NULL,
    [Description_kr] nvarchar(500)  NULL,
    [Description_cn] nvarchar(500)  NULL,
    [Description_fr] nvarchar(500)  NULL,
    [Description_tl] nvarchar(500)  NULL,
    [CreatedBy] bigint  NULL,
    [IsDeleted] bit  NULL,
    [UpdatedBy] bigint  NULL,
    [CreatedDate] datetime  NULL,
    [UpdatedDate] datetime  NULL,
    [IsActive] bit  NOT NULL
);
GO

-- Creating table 'Master_Designation'
CREATE TABLE [dbo].[Master_Designation] (
    [ID] uniqueidentifier  NOT NULL,
    [CountryID] bigint  NOT NULL,
    [BranchID] uniqueidentifier  NOT NULL,
    [DivisionID] uniqueidentifier  NOT NULL,
    [DepartmentID] uniqueidentifier  NOT NULL,
    [TeamID] uniqueidentifier  NOT NULL,
    [Code] varchar(5)  NULL,
    [Name_en] nvarchar(200)  NOT NULL,
    [Name_jp] nvarchar(200)  NULL,
    [Name_kr] nvarchar(200)  NULL,
    [Name_cn] nvarchar(200)  NULL,
    [Name_fr] nvarchar(200)  NULL,
    [Name_tl] nvarchar(200)  NULL,
    [CreatedDate] datetime  NULL,
    [UpdatedDate] datetime  NULL,
    [IsActive] bit  NOT NULL,
    [IsDeleted] bit  NOT NULL,
    [CreatedBy] bigint  NULL,
    [UpdatedBy] bigint  NULL
);
GO

-- Creating table 'Master_Division'
CREATE TABLE [dbo].[Master_Division] (
    [ID] uniqueidentifier  NOT NULL,
    [CountryID] bigint  NOT NULL,
    [Code] varchar(5)  NULL,
    [Name_en] nvarchar(100)  NOT NULL,
    [Name_jp] nvarchar(100)  NULL,
    [Name_kr] nvarchar(100)  NULL,
    [Name_cn] nvarchar(100)  NULL,
    [Name_fr] nvarchar(100)  NULL,
    [Name_tl] nvarchar(100)  NULL,
    [Type] int  NULL,
    [CreatedDate] datetime  NULL,
    [UpdatedDate] datetime  NULL,
    [IsActive] bit  NOT NULL,
    [IsDeleted] bit  NULL,
    [CreatedBy] bigint  NULL,
    [UpdatedBy] bigint  NULL
);
GO

-- Creating table 'Master_EmailCategorySettings'
CREATE TABLE [dbo].[Master_EmailCategorySettings] (
    [ID] bigint IDENTITY(1,1) NOT NULL,
    [Name_en] nvarchar(50)  NULL,
    [Name_jp] nvarchar(50)  NULL,
    [Name_kr] nvarchar(50)  NULL,
    [Name_cn] nvarchar(50)  NULL,
    [Name_fr] nvarchar(50)  NULL,
    [Name_tl] nvarchar(50)  NULL,
    [IsDeleted] bit  NOT NULL,
    [IsActive] bit  NOT NULL
);
GO

-- Creating table 'Master_EmailGroupSettings'
CREATE TABLE [dbo].[Master_EmailGroupSettings] (
    [ID] bigint IDENTITY(1,1) NOT NULL,
    [Name_en] nvarchar(50)  NULL,
    [Name_jp] nvarchar(50)  NULL,
    [Name_kr] nvarchar(50)  NULL,
    [Name_cn] nvarchar(50)  NULL,
    [Name_fr] nvarchar(50)  NULL,
    [Name_tl] nvarchar(50)  NULL,
    [IsDeleted] bit  NOT NULL,
    [IsActive] bit  NOT NULL
);
GO

-- Creating table 'Master_EstimationRoutes'
CREATE TABLE [dbo].[Master_EstimationRoutes] (
    [ID] uniqueidentifier  NOT NULL,
    [Code] varchar(5)  NOT NULL,
    [Name_en] nvarchar(150)  NULL,
    [Name_jp] nvarchar(150)  NULL,
    [Name_kr] nvarchar(150)  NULL,
    [Name_cn] nvarchar(150)  NULL,
    [Name_fr] nvarchar(150)  NULL,
    [Name_tl] nvarchar(150)  NULL,
    [IsActive] bit  NOT NULL,
    [IsDeleted] bit  NULL,
    [CreatedBy] bigint  NOT NULL,
    [CreatedDate] datetime  NOT NULL,
    [UpdatedBy] bigint  NULL,
    [UpdatedDate] datetime  NULL
);
GO

-- Creating table 'Master_EstimationServiceType'
CREATE TABLE [dbo].[Master_EstimationServiceType] (
    [ID] uniqueidentifier  NOT NULL,
    [Code] varchar(5)  NOT NULL,
    [Name_en] nvarchar(150)  NULL,
    [Name_jp] nvarchar(150)  NULL,
    [Name_kr] nvarchar(150)  NULL,
    [Name_cn] nvarchar(150)  NULL,
    [Name_fr] nvarchar(150)  NULL,
    [Name_tl] nvarchar(150)  NULL,
    [Type] int  NULL,
    [SortBy] int  NULL,
    [IsActive] bit  NOT NULL,
    [IsDeleted] bit  NULL,
    [CreatedBy] bigint  NOT NULL,
    [CreatedDate] datetime  NOT NULL,
    [UpdatedBy] bigint  NULL,
    [UpdatedDate] datetime  NULL
);
GO

-- Creating table 'Master_EstimationSpecializedField'
CREATE TABLE [dbo].[Master_EstimationSpecializedField] (
    [ID] uniqueidentifier  NOT NULL,
    [Code] varchar(5)  NOT NULL,
    [Name_en] nvarchar(150)  NULL,
    [Name_jp] nvarchar(150)  NULL,
    [Name_kr] nvarchar(150)  NULL,
    [Name_cn] nvarchar(150)  NULL,
    [Name_fr] nvarchar(150)  NULL,
    [Name_tl] nvarchar(150)  NULL,
    [IsActive] bit  NOT NULL,
    [IsDeleted] bit  NULL,
    [CreatedBy] bigint  NOT NULL,
    [CreatedDate] datetime  NOT NULL,
    [UpdatedBy] bigint  NULL,
    [UpdatedDate] datetime  NULL
);
GO

-- Creating table 'Master_EstimationStatus'
CREATE TABLE [dbo].[Master_EstimationStatus] (
    [ID] int IDENTITY(1,1) NOT NULL,
    [Name_en] nvarchar(100)  NULL,
    [Name_jp] nvarchar(100)  NULL,
    [Name_kr] nvarchar(100)  NULL,
    [Name_cn] nvarchar(100)  NULL,
    [Name_fr] nvarchar(100)  NULL,
    [Name_tl] nvarchar(100)  NULL,
    [IsActive] bit  NOT NULL,
    [IsDeleted] bit  NULL
);
GO

-- Creating table 'Master_EstimationSubSpecializedField'
CREATE TABLE [dbo].[Master_EstimationSubSpecializedField] (
    [ID] uniqueidentifier  NOT NULL,
    [SpecializedField] uniqueidentifier  NOT NULL,
    [Code] varchar(5)  NOT NULL,
    [Name_en] nvarchar(150)  NULL,
    [Name_jp] nvarchar(150)  NULL,
    [Name_kr] nvarchar(150)  NULL,
    [Name_cn] nvarchar(150)  NULL,
    [Name_fr] nvarchar(150)  NULL,
    [Name_tl] nvarchar(150)  NULL,
    [IsActive] bit  NOT NULL,
    [IsDeleted] bit  NULL,
    [CreatedBy] bigint  NOT NULL,
    [CreatedDate] datetime  NOT NULL,
    [UpdatedBy] bigint  NULL,
    [UpdatedDate] datetime  NULL
);
GO

-- Creating table 'Master_EstimationType'
CREATE TABLE [dbo].[Master_EstimationType] (
    [ID] int IDENTITY(1,1) NOT NULL,
    [Code] varchar(5)  NOT NULL,
    [Name_en] nvarchar(150)  NULL,
    [Name_jp] nvarchar(150)  NULL,
    [Name_kr] nvarchar(150)  NULL,
    [Name_cn] nvarchar(150)  NULL,
    [Name_fr] nvarchar(150)  NULL,
    [Name_tl] nvarchar(150)  NULL,
    [IsActive] bit  NOT NULL,
    [IsDeleted] bit  NOT NULL,
    [SortBy] int  NULL,
    [CreatedBy] bigint  NULL,
    [CreatedDate] datetime  NULL,
    [UpdatedBy] bigint  NULL,
    [UpdatedDate] datetime  NULL
);
GO

-- Creating table 'Master_Language'
CREATE TABLE [dbo].[Master_Language] (
    [ID] uniqueidentifier  NOT NULL,
    [Code] varchar(5)  NOT NULL,
    [Name_en] nvarchar(100)  NOT NULL,
    [Name_jp] nvarchar(100)  NULL,
    [Name_kr] nvarchar(100)  NULL,
    [Name_cn] nvarchar(100)  NULL,
    [Name_fr] nvarchar(100)  NULL,
    [Name_tl] nvarchar(100)  NULL,
    [IsActive] bit  NOT NULL,
    [IsDeleted] bit  NOT NULL,
    [CreatedBy] bigint  NULL,
    [CreatedDate] datetime  NULL,
    [UpdatedBy] bigint  NULL,
    [UpdatedDate] datetime  NULL
);
GO

-- Creating table 'Master_Market'
CREATE TABLE [dbo].[Master_Market] (
    [ID] uniqueidentifier  NOT NULL,
    [Code] varchar(5)  NULL,
    [Name_en] nvarchar(200)  NOT NULL,
    [Name_jp] nvarchar(200)  NULL,
    [Name_kr] nvarchar(200)  NULL,
    [Name_cn] nvarchar(200)  NULL,
    [Name_fr] nvarchar(200)  NULL,
    [Name_tl] nvarchar(200)  NULL,
    [IsActive] bit  NOT NULL,
    [IsDeleted] bit  NULL,
    [CreatedDate] datetime  NULL,
    [UpdatedDate] datetime  NULL,
    [CreatedBy] bigint  NULL,
    [UpdatedBy] bigint  NULL
);
GO

-- Creating table 'Master_PartnerServiceType'
CREATE TABLE [dbo].[Master_PartnerServiceType] (
    [ID] bigint IDENTITY(1,1) NOT NULL,
    [Name_en] nvarchar(50)  NOT NULL,
    [Name_jp] nvarchar(50)  NULL,
    [Name_kr] nvarchar(50)  NULL,
    [Name_cn] nvarchar(50)  NULL,
    [Name_fr] nvarchar(50)  NULL,
    [Name_tl] nvarchar(50)  NULL,
    [CreatedBy] bigint  NULL,
    [CreatedDate] datetime  NULL,
    [UpdatedBy] bigint  NULL,
    [UpdatedDate] datetime  NULL,
    [IsActive] bit  NOT NULL,
    [IsDeleted] bit  NOT NULL
);
GO

-- Creating table 'Master_PaymentType'
CREATE TABLE [dbo].[Master_PaymentType] (
    [ID] uniqueidentifier  NOT NULL,
    [IsActive] bit  NOT NULL,
    [IsDeleted] bit  NULL,
    [Language_Code] uniqueidentifier  NOT NULL,
    [Name_jp] nvarchar(100)  NULL,
    [Name_en] nvarchar(100)  NULL,
    [Name_kr] nvarchar(100)  NULL,
    [Name_cn] nvarchar(100)  NULL,
    [Name_fr] nvarchar(100)  NULL,
    [Name_tl] nvarchar(100)  NULL,
    [CreatedBy] bigint  NULL,
    [CreatedDate] datetime  NULL,
    [UpdatedBy] bigint  NULL,
    [UpdatedDate] datetime  NULL
);
GO

-- Creating table 'Master_Penalty'
CREATE TABLE [dbo].[Master_Penalty] (
    [ID] uniqueidentifier  NOT NULL,
    [CategoryNo] int  NULL,
    [Score] int  NULL,
    [Name_en] nvarchar(max)  NULL,
    [Name_jp] nvarchar(max)  NULL,
    [Name_kr] nvarchar(max)  NULL,
    [Name_cn] nvarchar(max)  NULL,
    [Name_tl] nvarchar(max)  NULL,
    [Name_fr] nvarchar(max)  NULL,
    [Contents_en] nvarchar(max)  NULL,
    [Contents_jp] nvarchar(max)  NULL,
    [Contents_kr] nvarchar(max)  NULL,
    [Contents_cn] nvarchar(max)  NULL,
    [Contents_tl] nvarchar(max)  NULL,
    [Contents_fr] nvarchar(max)  NULL,
    [Response_en] nvarchar(max)  NULL,
    [Response_jp] nvarchar(max)  NULL,
    [Response_kr] nvarchar(max)  NULL,
    [Response_cn] nvarchar(max)  NULL,
    [Response_tl] nvarchar(max)  NULL,
    [Response_fr] nvarchar(max)  NULL,
    [ApplicationId] bigint  NOT NULL,
    [CreatedBy] bigint  NULL,
    [CreatedDate] datetime  NULL,
    [UpdatedBy] bigint  NULL,
    [UpdatedDate] datetime  NULL,
    [IsActive] bit  NULL
);
GO

-- Creating table 'Master_StaffBusinessCategory'
CREATE TABLE [dbo].[Master_StaffBusinessCategory] (
    [ID] uniqueidentifier  NOT NULL,
    [Name_en] nvarchar(100)  NOT NULL,
    [Name_jp] nvarchar(100)  NULL,
    [Name_kr] nvarchar(100)  NULL,
    [Name_cn] nvarchar(100)  NULL,
    [Name_fr] nvarchar(100)  NULL,
    [Name_tl] nvarchar(100)  NULL,
    [SortBy] int  NULL,
    [IsActive] bit  NOT NULL,
    [IsDeleted] bit  NULL,
    [CreatedDate] datetime  NULL,
    [CreatedBy] bigint  NULL,
    [UpdatedDate] datetime  NULL,
    [UpdatedBy] bigint  NULL
);
GO

-- Creating table 'Master_StaffBusinessCategoryDetails'
CREATE TABLE [dbo].[Master_StaffBusinessCategoryDetails] (
    [ID] uniqueidentifier  NOT NULL,
    [BusinessCategoryID] uniqueidentifier  NOT NULL,
    [Description_en] nvarchar(500)  NULL,
    [Description_jp] nvarchar(500)  NULL,
    [Description_kr] nvarchar(500)  NULL,
    [Description_cn] nvarchar(500)  NULL,
    [Description_fr] nvarchar(500)  NULL,
    [Description_tl] nvarchar(500)  NULL,
    [SortBy] int  NULL,
    [IsActive] bit  NOT NULL,
    [IsDeleted] bit  NULL,
    [CreatedDate] datetime  NULL,
    [CreatedBy] bigint  NULL,
    [UpdatedDate] datetime  NULL,
    [UpdatedBy] bigint  NULL
);
GO

-- Creating table 'Master_StaffCategory'
CREATE TABLE [dbo].[Master_StaffCategory] (
    [ID] uniqueidentifier  NOT NULL,
    [Name_en] nvarchar(100)  NOT NULL,
    [Name_jp] nvarchar(100)  NULL,
    [Name_kr] nvarchar(100)  NULL,
    [Name_cn] nvarchar(100)  NULL,
    [Name_fr] nvarchar(100)  NULL,
    [Name_tl] nvarchar(100)  NULL,
    [Description_en] nvarchar(500)  NULL,
    [Description_jp] nvarchar(500)  NULL,
    [Description_kr] nvarchar(500)  NULL,
    [Description_cn] nvarchar(500)  NULL,
    [Description_fr] nvarchar(500)  NULL,
    [Description_tl] nvarchar(500)  NULL,
    [SortBy] int  NULL,
    [IsActive] bit  NOT NULL,
    [IsDeleted] bit  NULL,
    [CreatedDate] datetime  NULL,
    [CreatedBy] bigint  NULL,
    [UpdatedDate] datetime  NULL,
    [UpdatedBy] bigint  NULL
);
GO

-- Creating table 'Master_StaffCurrentState'
CREATE TABLE [dbo].[Master_StaffCurrentState] (
    [ID] uniqueidentifier  NOT NULL,
    [Name_en] nvarchar(100)  NOT NULL,
    [Name_jp] nvarchar(100)  NULL,
    [Name_kr] nvarchar(100)  NULL,
    [Name_cn] nvarchar(100)  NULL,
    [Name_fr] nvarchar(100)  NULL,
    [Name_tl] nvarchar(100)  NULL,
    [Description_en] nvarchar(500)  NULL,
    [Description_jp] nvarchar(500)  NULL,
    [Description_kr] nvarchar(500)  NULL,
    [Description_cn] nvarchar(500)  NULL,
    [Description_fr] nvarchar(500)  NULL,
    [Description_tl] nvarchar(500)  NULL,
    [SortBy] int  NULL,
    [IsActive] bit  NOT NULL,
    [IsDeleted] bit  NULL,
    [CreatedDate] datetime  NULL,
    [CreatedBy] bigint  NULL,
    [UpdatedDate] datetime  NULL,
    [UpdatedBy] bigint  NULL
);
GO

-- Creating table 'Master_StaffDevelopmentSkill'
CREATE TABLE [dbo].[Master_StaffDevelopmentSkill] (
    [ID] uniqueidentifier  NOT NULL,
    [Name_en] nvarchar(100)  NOT NULL,
    [Name_jp] nvarchar(100)  NULL,
    [Name_kr] nvarchar(100)  NULL,
    [Name_cn] nvarchar(100)  NULL,
    [Name_fr] nvarchar(100)  NULL,
    [Name_tl] nvarchar(100)  NULL,
    [Description_en] nvarchar(500)  NULL,
    [Description_jp] nvarchar(500)  NULL,
    [Description_kr] nvarchar(500)  NULL,
    [Description_cn] nvarchar(500)  NULL,
    [Description_fr] nvarchar(500)  NULL,
    [Description_tl] nvarchar(500)  NULL,
    [SortBy] int  NULL,
    [IsActive] bit  NOT NULL,
    [IsDeleted] bit  NULL,
    [CreatedDate] datetime  NULL,
    [CreatedBy] bigint  NULL,
    [UpdatedDate] datetime  NULL,
    [UpdatedBy] bigint  NULL
);
GO

-- Creating table 'Master_StaffDevelopmentSkillItem'
CREATE TABLE [dbo].[Master_StaffDevelopmentSkillItem] (
    [ID] uniqueidentifier  NOT NULL,
    [DevelopmentSkillID] uniqueidentifier  NOT NULL,
    [Name_en] nvarchar(100)  NOT NULL,
    [Name_jp] nvarchar(100)  NULL,
    [Name_kr] nvarchar(100)  NULL,
    [Name_cn] nvarchar(100)  NULL,
    [Name_fr] nvarchar(100)  NULL,
    [Name_tl] nvarchar(100)  NULL,
    [Description_en] nvarchar(500)  NULL,
    [Description_jp] nvarchar(500)  NULL,
    [Description_kr] nvarchar(500)  NULL,
    [Description_cn] nvarchar(500)  NULL,
    [Description_fr] nvarchar(500)  NULL,
    [Description_tl] nvarchar(500)  NULL,
    [SortBy] int  NULL,
    [IsActive] bit  NOT NULL,
    [IsDeleted] bit  NULL,
    [CreatedDate] datetime  NULL,
    [CreatedBy] bigint  NULL,
    [UpdatedDate] datetime  NULL,
    [UpdatedBy] bigint  NULL
);
GO

-- Creating table 'Master_StaffEducationalDegree'
CREATE TABLE [dbo].[Master_StaffEducationalDegree] (
    [ID] uniqueidentifier  NOT NULL,
    [Name_en] nvarchar(100)  NOT NULL,
    [Name_jp] nvarchar(100)  NULL,
    [Name_kr] nvarchar(100)  NULL,
    [Name_cn] nvarchar(100)  NULL,
    [Name_fr] nvarchar(100)  NULL,
    [Name_tl] nvarchar(100)  NULL,
    [Description_en] nvarchar(500)  NULL,
    [Description_jp] nvarchar(500)  NULL,
    [Description_kr] nvarchar(500)  NULL,
    [Description_cn] nvarchar(500)  NULL,
    [Description_fr] nvarchar(500)  NULL,
    [Description_tl] nvarchar(500)  NULL,
    [SortBy] int  NULL,
    [IsActive] bit  NOT NULL,
    [IsDeleted] bit  NULL,
    [CreatedDate] datetime  NULL,
    [CreatedBy] bigint  NULL,
    [UpdatedDate] datetime  NULL,
    [UpdatedBy] bigint  NULL
);
GO

-- Creating table 'Master_StaffEmploymentType'
CREATE TABLE [dbo].[Master_StaffEmploymentType] (
    [ID] uniqueidentifier  NOT NULL,
    [Name_en] nvarchar(100)  NOT NULL,
    [Name_jp] nvarchar(100)  NULL,
    [Name_kr] nvarchar(100)  NULL,
    [Name_cn] nvarchar(100)  NULL,
    [Name_fr] nvarchar(100)  NULL,
    [Name_tl] nvarchar(100)  NULL,
    [Description_en] nvarchar(500)  NULL,
    [Description_jp] nvarchar(500)  NULL,
    [Description_kr] nvarchar(500)  NULL,
    [Description_cn] nvarchar(500)  NULL,
    [Description_fr] nvarchar(500)  NULL,
    [Description_tl] nvarchar(500)  NULL,
    [SortBy] int  NULL,
    [IsActive] bit  NOT NULL,
    [IsDeleted] bit  NULL,
    [CreatedDate] datetime  NULL,
    [CreatedBy] bigint  NULL,
    [UpdatedDate] datetime  NULL,
    [UpdatedBy] bigint  NULL
);
GO

-- Creating table 'Master_StaffInterpretationFields'
CREATE TABLE [dbo].[Master_StaffInterpretationFields] (
    [ID] uniqueidentifier  NOT NULL,
    [Name_en] nvarchar(100)  NOT NULL,
    [Name_jp] nvarchar(100)  NULL,
    [Name_kr] nvarchar(100)  NULL,
    [Name_cn] nvarchar(100)  NULL,
    [Name_fr] nvarchar(100)  NULL,
    [Name_tl] nvarchar(100)  NULL,
    [Description_en] nvarchar(500)  NULL,
    [Description_jp] nvarchar(500)  NULL,
    [Description_kr] nvarchar(500)  NULL,
    [Description_cn] nvarchar(500)  NULL,
    [Description_fr] nvarchar(500)  NULL,
    [Description_tl] nvarchar(500)  NULL,
    [SortBy] int  NULL,
    [IsActive] bit  NOT NULL,
    [IsDeleted] bit  NULL,
    [CreatedDate] datetime  NULL,
    [CreatedBy] bigint  NULL,
    [UpdatedDate] datetime  NULL,
    [UpdatedBy] bigint  NULL
);
GO

-- Creating table 'Master_StaffJobCategory'
CREATE TABLE [dbo].[Master_StaffJobCategory] (
    [ID] uniqueidentifier  NOT NULL,
    [Name_en] nvarchar(100)  NOT NULL,
    [Name_jp] nvarchar(100)  NULL,
    [Name_kr] nvarchar(100)  NULL,
    [Name_cn] nvarchar(100)  NULL,
    [Name_fr] nvarchar(100)  NULL,
    [Name_tl] nvarchar(100)  NULL,
    [SortBy] int  NULL,
    [IsActive] bit  NOT NULL,
    [IsDeleted] bit  NULL,
    [CreatedDate] datetime  NULL,
    [CreatedBy] bigint  NULL,
    [UpdatedDate] datetime  NULL,
    [UpdatedBy] bigint  NULL
);
GO

-- Creating table 'Master_StaffJobCategoryDetails'
CREATE TABLE [dbo].[Master_StaffJobCategoryDetails] (
    [ID] uniqueidentifier  NOT NULL,
    [JobCategoryID] uniqueidentifier  NOT NULL,
    [Description_en] nvarchar(500)  NULL,
    [Description_jp] nvarchar(500)  NULL,
    [Description_kr] nvarchar(500)  NULL,
    [Description_cn] nvarchar(500)  NULL,
    [Description_fr] nvarchar(500)  NULL,
    [Description_tl] nvarchar(500)  NULL,
    [SortBy] int  NULL,
    [IsActive] bit  NOT NULL,
    [IsDeleted] bit  NULL,
    [CreatedDate] datetime  NULL,
    [CreatedBy] bigint  NULL,
    [UpdatedDate] datetime  NULL,
    [UpdatedBy] bigint  NULL
);
GO

-- Creating table 'Master_StaffKnowledgeField'
CREATE TABLE [dbo].[Master_StaffKnowledgeField] (
    [ID] uniqueidentifier  NOT NULL,
    [Name_en] nvarchar(100)  NOT NULL,
    [Name_jp] nvarchar(100)  NULL,
    [Name_kr] nvarchar(100)  NULL,
    [Name_cn] nvarchar(100)  NULL,
    [Name_fr] nvarchar(100)  NULL,
    [Name_tl] nvarchar(100)  NULL,
    [Description_en] nvarchar(500)  NULL,
    [Description_jp] nvarchar(500)  NULL,
    [Description_kr] nvarchar(500)  NULL,
    [Description_cn] nvarchar(500)  NULL,
    [Description_fr] nvarchar(500)  NULL,
    [Description_tl] nvarchar(500)  NULL,
    [SortBy] int  NULL,
    [IsActive] bit  NOT NULL,
    [IsDeleted] bit  NOT NULL,
    [CreatedDate] datetime  NULL,
    [CreatedBy] bigint  NULL,
    [UpdatedDate] datetime  NULL,
    [UpdatedBy] bigint  NULL
);
GO

-- Creating table 'Master_StaffKnowledgeFieldItem'
CREATE TABLE [dbo].[Master_StaffKnowledgeFieldItem] (
    [ID] uniqueidentifier  NOT NULL,
    [KnowledgeFieldID] uniqueidentifier  NOT NULL,
    [Name_en] nvarchar(100)  NOT NULL,
    [Name_jp] nvarchar(100)  NULL,
    [Name_kr] nvarchar(100)  NULL,
    [Name_cn] nvarchar(100)  NULL,
    [Name_fr] nvarchar(100)  NULL,
    [Name_tl] nvarchar(100)  NULL,
    [Description_en] nvarchar(500)  NULL,
    [Description_jp] nvarchar(500)  NULL,
    [Description_kr] nvarchar(500)  NULL,
    [Description_cn] nvarchar(500)  NULL,
    [Description_fr] nvarchar(500)  NULL,
    [Description_tl] nvarchar(500)  NULL,
    [SortBy] int  NULL,
    [IsActive] bit  NOT NULL,
    [IsDeleted] bit  NOT NULL,
    [CreatedDate] datetime  NULL,
    [CreatedBy] bigint  NULL,
    [UpdatedDate] datetime  NULL,
    [UpdatedBy] bigint  NULL
);
GO

-- Creating table 'Master_StaffLanguageQualifications'
CREATE TABLE [dbo].[Master_StaffLanguageQualifications] (
    [ID] uniqueidentifier  NOT NULL,
    [Name_en] nvarchar(250)  NOT NULL,
    [Name_jp] nvarchar(250)  NULL,
    [Name_kr] nvarchar(250)  NULL,
    [Name_cn] nvarchar(250)  NULL,
    [Name_fr] nvarchar(250)  NULL,
    [Name_tl] nvarchar(250)  NULL,
    [Description_en] nvarchar(500)  NULL,
    [Description_jp] nvarchar(500)  NULL,
    [Description_kr] nvarchar(500)  NULL,
    [Description_cn] nvarchar(500)  NULL,
    [Description_fr] nvarchar(500)  NULL,
    [Description_tl] nvarchar(500)  NULL,
    [IsActive] bit  NOT NULL,
    [IsDeleted] bit  NULL,
    [CreatedBy] bigint  NOT NULL,
    [CreatedDate] datetime  NOT NULL,
    [UpdatedBy] bigint  NULL,
    [UpdatedDate] datetime  NULL
);
GO

-- Creating table 'Master_StaffMajorSubject'
CREATE TABLE [dbo].[Master_StaffMajorSubject] (
    [ID] uniqueidentifier  NOT NULL,
    [Code] nvarchar(5)  NOT NULL,
    [Name_en] nvarchar(100)  NOT NULL,
    [Name_jp] nvarchar(100)  NULL,
    [Name_kr] nvarchar(100)  NULL,
    [Name_cn] nvarchar(100)  NULL,
    [Name_fr] nvarchar(100)  NULL,
    [Name_tl] nvarchar(100)  NULL,
    [CreatedBy] bigint  NOT NULL,
    [CreatedDate] datetime  NOT NULL,
    [UpdatedBy] bigint  NULL,
    [UpdatedDate] datetime  NULL,
    [IsActive] bit  NOT NULL,
    [IsDeleted] bit  NULL
);
GO

-- Creating table 'Master_StaffMajorSubjectDetails'
CREATE TABLE [dbo].[Master_StaffMajorSubjectDetails] (
    [ID] uniqueidentifier  NOT NULL,
    [StaffMajorSubjectID] uniqueidentifier  NOT NULL,
    [Name_en] nvarchar(150)  NOT NULL,
    [Name_jp] nvarchar(150)  NULL,
    [Name_kr] nvarchar(150)  NULL,
    [Name_cn] nvarchar(150)  NULL,
    [Name_fr] nvarchar(150)  NULL,
    [Name_tl] nvarchar(150)  NULL,
    [Description_en] nvarchar(250)  NULL,
    [Description_jp] nvarchar(250)  NULL,
    [Description_kr] nvarchar(250)  NULL,
    [Description_cn] nvarchar(250)  NULL,
    [Description_fr] nvarchar(250)  NULL,
    [Description_tl] nvarchar(250)  NULL,
    [IsActive] bit  NOT NULL,
    [IsDeleted] bit  NULL,
    [SortBy] int  NOT NULL,
    [CreatedBy] bigint  NOT NULL,
    [CreatedDate] datetime  NOT NULL,
    [UpdatedBy] bigint  NULL,
    [UpdatedDate] datetime  NULL
);
GO

-- Creating table 'Master_StaffMedicalField'
CREATE TABLE [dbo].[Master_StaffMedicalField] (
    [ID] uniqueidentifier  NOT NULL,
    [Name_en] nvarchar(100)  NOT NULL,
    [Name_jp] nvarchar(100)  NULL,
    [Name_kr] nvarchar(100)  NULL,
    [Name_cn] nvarchar(100)  NULL,
    [Name_fr] nvarchar(100)  NULL,
    [Name_tl] nvarchar(100)  NULL,
    [Description_en] nvarchar(500)  NULL,
    [Description_jp] nvarchar(500)  NULL,
    [Description_kr] nvarchar(500)  NULL,
    [Description_cn] nvarchar(500)  NULL,
    [Description_fr] nvarchar(500)  NULL,
    [Description_tl] nvarchar(500)  NULL,
    [Type] int  NULL,
    [SortBy] int  NULL,
    [IsActive] bit  NOT NULL,
    [IsDeleted] bit  NULL,
    [CreatedDate] datetime  NULL,
    [CreatedBy] bigint  NULL,
    [UpdatedDate] datetime  NULL,
    [UpdatedBy] bigint  NULL
);
GO

-- Creating table 'Master_StaffNarrationType'
CREATE TABLE [dbo].[Master_StaffNarrationType] (
    [ID] uniqueidentifier  NOT NULL,
    [Code] nvarchar(5)  NOT NULL,
    [Name_en] nvarchar(100)  NOT NULL,
    [Name_jp] nvarchar(100)  NULL,
    [Name_kr] nvarchar(100)  NULL,
    [Name_cn] nvarchar(100)  NULL,
    [Name_fr] nvarchar(100)  NULL,
    [Name_tl] nvarchar(100)  NULL,
    [SortBy] int  NULL,
    [IsActive] bit  NOT NULL,
    [IsDeleted] bit  NULL,
    [CreatedDate] datetime  NULL,
    [CreatedBy] bigint  NULL,
    [UpdatedDate] datetime  NULL,
    [UpdatedBy] bigint  NULL
);
GO

-- Creating table 'Master_StaffPatentField'
CREATE TABLE [dbo].[Master_StaffPatentField] (
    [ID] uniqueidentifier  NOT NULL,
    [Name_en] nvarchar(100)  NOT NULL,
    [Name_jp] nvarchar(100)  NULL,
    [Name_kr] nvarchar(100)  NULL,
    [Name_cn] nvarchar(100)  NULL,
    [Name_fr] nvarchar(100)  NULL,
    [Name_tl] nvarchar(100)  NULL,
    [Description_en] nvarchar(500)  NULL,
    [Description_jp] nvarchar(500)  NULL,
    [Description_kr] nvarchar(500)  NULL,
    [Description_cn] nvarchar(500)  NULL,
    [Description_fr] nvarchar(500)  NULL,
    [Description_tl] nvarchar(500)  NULL,
    [Type] int  NULL,
    [SortBy] int  NULL,
    [IsActive] bit  NOT NULL,
    [IsDeleted] bit  NULL,
    [CreatedDate] datetime  NULL,
    [CreatedBy] bigint  NULL,
    [UpdatedDate] datetime  NULL,
    [UpdatedBy] bigint  NULL
);
GO

-- Creating table 'Master_StaffProfession'
CREATE TABLE [dbo].[Master_StaffProfession] (
    [ID] uniqueidentifier  NOT NULL,
    [Name_en] nvarchar(100)  NOT NULL,
    [Name_jp] nvarchar(100)  NULL,
    [Name_kr] nvarchar(100)  NULL,
    [Name_cn] nvarchar(100)  NULL,
    [Name_fr] nvarchar(100)  NULL,
    [Name_tl] nvarchar(100)  NULL,
    [Description_en] nvarchar(500)  NULL,
    [Description_jp] nvarchar(500)  NULL,
    [Description_kr] nvarchar(500)  NULL,
    [Description_cn] nvarchar(500)  NULL,
    [Description_fr] nvarchar(500)  NULL,
    [Description_tl] nvarchar(500)  NULL,
    [SortBy] int  NULL,
    [IsActive] bit  NOT NULL,
    [IsDeleted] bit  NULL,
    [CreatedDate] datetime  NULL,
    [CreatedBy] bigint  NULL,
    [UpdatedDate] datetime  NULL,
    [UpdatedBy] bigint  NULL
);
GO

-- Creating table 'Master_StaffResearchField'
CREATE TABLE [dbo].[Master_StaffResearchField] (
    [ID] uniqueidentifier  NOT NULL,
    [Name_en] nvarchar(100)  NOT NULL,
    [Name_jp] nvarchar(100)  NULL,
    [Name_kr] nvarchar(100)  NULL,
    [Name_cn] nvarchar(100)  NULL,
    [Name_fr] nvarchar(100)  NULL,
    [Name_tl] nvarchar(100)  NULL,
    [Description_en] nvarchar(500)  NULL,
    [Description_jp] nvarchar(500)  NULL,
    [Description_kr] nvarchar(500)  NULL,
    [Description_cn] nvarchar(500)  NULL,
    [Description_fr] nvarchar(500)  NULL,
    [Description_tl] nvarchar(500)  NULL,
    [Type] int  NULL,
    [SortBy] int  NULL,
    [IsActive] bit  NOT NULL,
    [IsDeleted] bit  NULL,
    [CreatedDate] datetime  NULL,
    [CreatedBy] bigint  NULL,
    [UpdatedDate] datetime  NULL,
    [UpdatedBy] bigint  NULL
);
GO

-- Creating table 'Master_StaffSoftwareSkill'
CREATE TABLE [dbo].[Master_StaffSoftwareSkill] (
    [ID] bigint IDENTITY(1,1) NOT NULL,
    [Name_en] nvarchar(100)  NOT NULL,
    [Name_jp] nvarchar(100)  NULL,
    [Name_kr] nvarchar(100)  NULL,
    [Name_cn] nvarchar(100)  NULL,
    [Name_fr] nvarchar(100)  NULL,
    [Name_tl] nvarchar(100)  NULL,
    [Description_en] nvarchar(500)  NULL,
    [Description_jp] nvarchar(500)  NULL,
    [Description_kr] nvarchar(500)  NULL,
    [Description_cn] nvarchar(500)  NULL,
    [Description_fr] nvarchar(500)  NULL,
    [Description_tl] nvarchar(500)  NULL,
    [IsActive] bit  NOT NULL,
    [IsDeleted] bit  NULL,
    [CreatedDate] datetime  NULL,
    [CreatedBy] bigint  NULL,
    [UpdatedDate] datetime  NULL,
    [UpdatedBy] bigint  NULL
);
GO

-- Creating table 'Master_StaffSpecialField'
CREATE TABLE [dbo].[Master_StaffSpecialField] (
    [ID] uniqueidentifier  NOT NULL,
    [Name_en] nvarchar(100)  NOT NULL,
    [Name_jp] nvarchar(100)  NULL,
    [Name_kr] nvarchar(100)  NULL,
    [Name_cn] nvarchar(100)  NULL,
    [Name_fr] nvarchar(100)  NULL,
    [Name_tl] nvarchar(100)  NULL,
    [Description_en] nvarchar(500)  NULL,
    [Description_jp] nvarchar(500)  NULL,
    [Description_kr] nvarchar(500)  NULL,
    [Description_cn] nvarchar(500)  NULL,
    [Description_fr] nvarchar(500)  NULL,
    [Description_tl] nvarchar(500)  NULL,
    [Type] int  NULL,
    [SortBy] int  NULL,
    [IsActive] bit  NOT NULL,
    [IsDeleted] bit  NULL,
    [CreatedDate] datetime  NULL,
    [CreatedBy] bigint  NULL,
    [UpdatedDate] datetime  NULL,
    [UpdatedBy] bigint  NULL
);
GO

-- Creating table 'Master_StaffTechnicalSkillCategory'
CREATE TABLE [dbo].[Master_StaffTechnicalSkillCategory] (
    [ID] uniqueidentifier  NOT NULL,
    [Code] nvarchar(5)  NOT NULL,
    [Name_en] nvarchar(100)  NOT NULL,
    [Name_jp] nvarchar(100)  NULL,
    [Name_kr] nvarchar(100)  NULL,
    [Name_cn] nvarchar(100)  NULL,
    [Name_fr] nvarchar(100)  NULL,
    [Name_tl] nvarchar(100)  NULL,
    [Type] int  NULL,
    [SortBy] int  NULL,
    [IsActive] bit  NOT NULL,
    [IsDeleted] bit  NULL,
    [CreatedBy] bigint  NOT NULL,
    [CreatedDate] datetime  NOT NULL,
    [UpdatedBy] bigint  NULL,
    [UpdatedDate] datetime  NULL
);
GO

-- Creating table 'Master_StaffTechnicalSkillItems'
CREATE TABLE [dbo].[Master_StaffTechnicalSkillItems] (
    [ID] uniqueidentifier  NOT NULL,
    [TechnicalSkillCategoryID] uniqueidentifier  NOT NULL,
    [Name_en] nvarchar(100)  NOT NULL,
    [Name_jp] nvarchar(100)  NULL,
    [Name_kr] nvarchar(100)  NULL,
    [Name_cn] nvarchar(100)  NULL,
    [Name_fr] nvarchar(100)  NULL,
    [Name_tl] nvarchar(100)  NULL,
    [Description_en] nvarchar(250)  NULL,
    [Description_jp] nvarchar(250)  NULL,
    [Description_kr] nvarchar(250)  NULL,
    [Description_cn] nvarchar(250)  NULL,
    [Description_fr] nvarchar(250)  NULL,
    [Description_tl] nvarchar(250)  NULL,
    [SortBy] int  NULL,
    [IsActive] bit  NOT NULL,
    [IsDeleted] bit  NULL,
    [CreatedBy] bigint  NOT NULL,
    [CreatedDate] datetime  NOT NULL,
    [UpdatedBy] bigint  NULL,
    [UpdatedDate] datetime  NULL
);
GO

-- Creating table 'Master_StaffTranslationFields'
CREATE TABLE [dbo].[Master_StaffTranslationFields] (
    [ID] uniqueidentifier  NOT NULL,
    [Name_en] nvarchar(100)  NOT NULL,
    [Name_jp] nvarchar(100)  NULL,
    [Name_kr] nvarchar(100)  NULL,
    [Name_cn] nvarchar(100)  NULL,
    [Name_fr] nvarchar(100)  NULL,
    [Name_tl] nvarchar(100)  NULL,
    [Description_en] nvarchar(500)  NULL,
    [Description_jp] nvarchar(500)  NULL,
    [Description_kr] nvarchar(500)  NULL,
    [Description_cn] nvarchar(500)  NULL,
    [Description_fr] nvarchar(500)  NULL,
    [Description_tl] nvarchar(500)  NULL,
    [SortBy] int  NULL,
    [IsActive] bit  NOT NULL,
    [IsDeleted] bit  NULL,
    [CreatedDate] datetime  NULL,
    [CreatedBy] bigint  NULL,
    [UpdatedDate] datetime  NULL,
    [UpdatedBy] bigint  NULL
);
GO

-- Creating table 'Master_StaffType'
CREATE TABLE [dbo].[Master_StaffType] (
    [ID] int IDENTITY(1,1) NOT NULL,
    [Name_en] nvarchar(100)  NOT NULL,
    [Name_jp] nvarchar(100)  NULL,
    [Name_kr] nvarchar(100)  NULL,
    [Name_cn] nvarchar(100)  NULL,
    [Name_fr] nvarchar(100)  NULL,
    [Name_tl] nvarchar(100)  NULL,
    [Description_en] nvarchar(500)  NULL,
    [Description_jp] nvarchar(500)  NULL,
    [Description_kr] nvarchar(500)  NULL,
    [Description_cn] nvarchar(500)  NULL,
    [Description_fr] nvarchar(500)  NULL,
    [Description_tl] nvarchar(500)  NULL,
    [SortBy] int  NULL,
    [IsActive] bit  NOT NULL,
    [IsDeleted] bit  NULL,
    [CreatedDate] datetime  NULL,
    [CreatedBy] bigint  NULL,
    [UpdatedDate] datetime  NULL,
    [UpdatedBy] bigint  NULL
);
GO

-- Creating table 'Master_StaffVisaType'
CREATE TABLE [dbo].[Master_StaffVisaType] (
    [ID] uniqueidentifier  NOT NULL,
    [Name_en] nvarchar(100)  NOT NULL,
    [Name_jp] nvarchar(100)  NULL,
    [Name_kr] nvarchar(100)  NULL,
    [Name_cn] nvarchar(100)  NULL,
    [Name_fr] nvarchar(100)  NULL,
    [Name_tl] nvarchar(100)  NULL,
    [Description_en] nvarchar(500)  NULL,
    [Description_jp] nvarchar(500)  NULL,
    [Description_kr] nvarchar(500)  NULL,
    [Description_cn] nvarchar(500)  NULL,
    [Description_fr] nvarchar(500)  NULL,
    [Description_tl] nvarchar(500)  NULL,
    [SortBy] int  NULL,
    [IsActive] bit  NOT NULL,
    [IsDeleted] bit  NULL,
    [CreatedDate] datetime  NULL,
    [CreatedBy] bigint  NULL,
    [UpdatedDate] datetime  NULL,
    [UpdatedBy] bigint  NULL
);
GO

-- Creating table 'Master_Team'
CREATE TABLE [dbo].[Master_Team] (
    [ID] uniqueidentifier  NOT NULL,
    [CountryID] bigint  NOT NULL,
    [BranchID] uniqueidentifier  NOT NULL,
    [DivisionID] uniqueidentifier  NOT NULL,
    [DepartmentID] uniqueidentifier  NOT NULL,
    [Code] varchar(5)  NULL,
    [Name_en] nvarchar(100)  NOT NULL,
    [Name_jp] nvarchar(100)  NULL,
    [Name_kr] nvarchar(100)  NULL,
    [Name_cn] nvarchar(100)  NULL,
    [Name_fr] nvarchar(100)  NULL,
    [Name_tl] nvarchar(100)  NULL,
    [Description_en] nvarchar(500)  NULL,
    [Description_jp] nvarchar(500)  NULL,
    [Description_kr] nvarchar(500)  NULL,
    [Description_cn] nvarchar(500)  NULL,
    [Description_fr] nvarchar(500)  NULL,
    [Description_tl] nvarchar(500)  NULL,
    [CreatedBy] bigint  NULL,
    [UpdatedBy] bigint  NULL,
    [CreatedDate] datetime  NULL,
    [UpdatedDate] datetime  NULL,
    [IsActive] bit  NOT NULL,
    [IsDeleted] bit  NULL
);
GO

-- Creating table 'Master_TeamToMarket'
CREATE TABLE [dbo].[Master_TeamToMarket] (
    [ID] uniqueidentifier  NOT NULL,
    [TeamID] uniqueidentifier  NOT NULL,
    [MarketID] uniqueidentifier  NOT NULL,
    [IsActive] bit  NOT NULL,
    [IsDeleted] bit  NULL
);
GO

-- Creating table 'Master_Unit'
CREATE TABLE [dbo].[Master_Unit] (
    [ID] bigint IDENTITY(1,1) NOT NULL,
    [Code] varchar(3)  NOT NULL,
    [Name_en] nvarchar(250)  NULL,
    [Name_jp] nvarchar(250)  NULL,
    [Name_kr] nvarchar(250)  NULL,
    [Name_cn] nvarchar(250)  NULL,
    [Name_fr] nvarchar(250)  NULL,
    [Name_tl] nvarchar(250)  NULL,
    [SortBy] int  NULL,
    [IsActive] bit  NOT NULL,
    [IsDeleted] bit  NULL,
    [CreatedBy] bigint  NULL,
    [CreatedDate] datetime  NULL,
    [UpdatedBy] bigint  NULL,
    [UpdatedDate] datetime  NULL
);
GO

-- Creating table 'Master_UnitPriceSetting'
CREATE TABLE [dbo].[Master_UnitPriceSetting] (
    [ID] bigint IDENTITY(1,1) NOT NULL,
    [UnitID] bigint  NOT NULL,
    [EstimationTypeID] int  NOT NULL,
    [SourceLanguageID] uniqueidentifier  NOT NULL,
    [TargetLanguageID] uniqueidentifier  NOT NULL,
    [CurrencyID] bigint  NOT NULL,
    [GeneralUnitPrice] decimal(18,2)  NULL,
    [SpecialUnitPrice] decimal(18,2)  NULL,
    [PatentUnitPrice] decimal(18,2)  NULL,
    [IsActive] bit  NOT NULL,
    [IsDeleted] bit  NULL,
    [CreatedBy] bigint  NULL,
    [CreatedDate] datetime  NULL,
    [UpdatedBy] bigint  NULL,
    [UpdatedDate] datetime  NULL
);
GO

-- Creating table 'Master_WebOrderStatus'
CREATE TABLE [dbo].[Master_WebOrderStatus] (
    [ID] int IDENTITY(1,1) NOT NULL,
    [Name_en] nvarchar(100)  NULL,
    [Name_jp] nvarchar(100)  NULL,
    [Name_kr] nvarchar(100)  NULL,
    [Name_cn] nvarchar(100)  NULL,
    [Name_fr] nvarchar(100)  NULL,
    [Name_tl] nvarchar(100)  NULL,
    [SortBy] int  NULL,
    [IsActive] bit  NOT NULL,
    [IsDeleted] bit  NULL,
    [CreatedDate] datetime  NULL,
    [CreatedBy] bigint  NULL,
    [UpdatedDate] datetime  NULL,
    [UpdatedBy] bigint  NULL
);
GO

-- Creating table 'Master_WorkingStatus'
CREATE TABLE [dbo].[Master_WorkingStatus] (
    [ID] int IDENTITY(1,1) NOT NULL,
    [Name_en] nvarchar(100)  NULL,
    [Name_jp] nvarchar(100)  NULL,
    [Name_kr] nvarchar(100)  NULL,
    [Name_cn] nvarchar(100)  NULL,
    [Name_fr] nvarchar(100)  NULL,
    [Name_tl] nvarchar(100)  NULL,
    [SortBy] int  NULL,
    [IsActive] bit  NOT NULL,
    [IsDeleted] bit  NULL,
    [CreatedDate] datetime  NULL,
    [CreatedBy] bigint  NULL,
    [UpdatedDate] datetime  NULL,
    [UpdatedBy] bigint  NULL
);
GO

-- Creating table 'Menus'
CREATE TABLE [dbo].[Menus] (
    [Id] bigint IDENTITY(1,1) NOT NULL,
    [Name_en] nvarchar(100)  NULL,
    [Name_jp] nvarchar(100)  NOT NULL,
    [Name_kr] nvarchar(100)  NULL,
    [Name_cn] nvarchar(100)  NULL,
    [Name_fr] nvarchar(100)  NULL,
    [Name_tl] nvarchar(100)  NULL,
    [Description_en] nvarchar(500)  NULL,
    [Description_jp] nvarchar(500)  NULL,
    [Description_kr] nvarchar(500)  NULL,
    [Description_cn] nvarchar(500)  NULL,
    [Description_fr] nvarchar(500)  NULL,
    [Description_tl] nvarchar(500)  NULL,
    [MenuOrder] tinyint  NOT NULL,
    [MenuIcon] nvarchar(500)  NULL,
    [ParentMenuId] bigint  NULL,
    [ScreenId] bigint  NOT NULL,
    [IsActive] bit  NOT NULL,
    [IsDeleted] bit  NULL,
    [CreatedDate] datetime  NULL,
    [CreatedBy] bigint  NULL,
    [UpdatedDate] datetime  NULL,
    [UpdatedBy] bigint  NULL
);
GO

-- Creating table 'Messages'
CREATE TABLE [dbo].[Messages] (
    [ID] bigint IDENTITY(1,1) NOT NULL,
    [SenderID] uniqueidentifier  NOT NULL,
    [SenderName] nvarchar(250)  NULL,
    [ReceiverID] uniqueidentifier  NOT NULL,
    [ReceiverName] nvarchar(250)  NULL,
    [Title] nvarchar(250)  NULL,
    [Body] nvarchar(max)  NULL,
    [Status] int  NULL,
    [ReadDate] datetime  NULL,
    [ReplyDate] datetime  NULL,
    [AttachedFile] nvarchar(250)  NULL,
    [AttachedSize] bigint  NULL,
    [DownloadURL] nvarchar(250)  NULL,
    [OrderID] uniqueidentifier  NULL,
    [IsDeleted] bit  NULL,
    [CreatedBy] bigint  NULL,
    [CreatedDate] datetime  NULL,
    [UpdatedBy] bigint  NULL,
    [UpdatedDate] datetime  NULL
);
GO

-- Creating table 'Modules'
CREATE TABLE [dbo].[Modules] (
    [Id] bigint IDENTITY(1,1) NOT NULL,
    [Name_en] nvarchar(100)  NOT NULL,
    [Name_jp] nvarchar(100)  NULL,
    [Name_kr] nvarchar(100)  NULL,
    [Name_cn] nvarchar(100)  NULL,
    [Name_fr] nvarchar(100)  NULL,
    [Name_tl] nvarchar(100)  NULL,
    [Description_en] nvarchar(500)  NULL,
    [Description_jp] nvarchar(500)  NULL,
    [Description_kr] nvarchar(500)  NULL,
    [Description_cn] nvarchar(500)  NULL,
    [Description_fr] nvarchar(500)  NULL,
    [Description_tl] nvarchar(500)  NULL,
    [ApplicationId] bigint  NOT NULL,
    [IsActive] bit  NOT NULL,
    [IsDeleted] bit  NULL,
    [CreatedDate] datetime  NULL,
    [CreatedBy] bigint  NULL,
    [UpdatedDate] datetime  NULL,
    [UpdatedBy] bigint  NULL
);
GO

-- Creating table 'Notices'
CREATE TABLE [dbo].[Notices] (
    [ID] uniqueidentifier  NOT NULL,
    [NoticeNo] bigint IDENTITY(1,1) NOT NULL,
    [RegisteredDate] datetime  NOT NULL,
    [Priority] int  NOT NULL,
    [NoticeURL] nvarchar(50)  NULL,
    [ClientDisplayStatus] int  NULL,
    [StaffDisplayStatus] int  NULL,
    [PartnerDisplayStatus] int  NULL,
    [Title_en] nvarchar(250)  NULL,
    [Title_jp] nvarchar(250)  NULL,
    [Title_kr] nvarchar(250)  NULL,
    [Title_cn] nvarchar(250)  NULL,
    [Title_fr] nvarchar(250)  NULL,
    [Title_tl] nvarchar(250)  NULL,
    [Description_en] nvarchar(max)  NULL,
    [Description_jp] nvarchar(max)  NULL,
    [Description_kr] nvarchar(max)  NULL,
    [Description_cn] nvarchar(max)  NULL,
    [Description_fr] nvarchar(max)  NULL,
    [Description_tl] nvarchar(max)  NULL,
    [CreatedBy] bigint  NULL,
    [CreatedDate] datetime  NULL,
    [UpdatedBy] bigint  NULL,
    [UpdatedDate] datetime  NULL,
    [IsActive] bit  NOT NULL,
    [IsDeleted] bit  NULL
);
GO

-- Creating table 'Orders'
CREATE TABLE [dbo].[Orders] (
    [ID] uniqueidentifier  NOT NULL,
    [RegistrationID] bigint IDENTITY(1,1) NOT NULL,
    [ApplicationID] bigint  NULL,
    [OrderNo] nvarchar(100)  NOT NULL,
    [InvoiceNo] nvarchar(100)  NULL,
    [EstimationID] uniqueidentifier  NOT NULL,
    [CompanyID] uniqueidentifier  NOT NULL,
    [DeliveryDescription_en] varchar(350)  NULL,
    [DeliveryDescription_jp] varchar(350)  NULL,
    [DeliveryDescription_kr] varchar(350)  NULL,
    [DeliveryDescription_cn] varchar(350)  NULL,
    [DeliveryDescription_fr] varchar(350)  NULL,
    [DeliveryDescription_tl] varchar(350)  NULL,
    [QuoatedPrice] decimal(18,2)  NULL,
    [ConsumptionTax] decimal(18,2)  NULL,
    [CostExclTax] decimal(18,2)  NULL,
    [BillingAmount] decimal(18,2)  NULL,
    [OriginalCost] decimal(18,2)  NULL,
    [WithdrawlAmount] decimal(18,2)  NULL,
    [Profit] decimal(18,2)  NULL,
    [OrderStatus] int  NULL,
    [PaymentStatus] int  NULL,
    [GrossInterestProfit] decimal(18,2)  NULL,
    [IsDeposited] bit  NULL,
    [Remarks] nvarchar(500)  NULL,
    [Deadline] datetime  NULL,
    [EstimatedDateOfDeposit] datetime  NULL,
    [ClientComplain] int  NULL,
    [StaffComplain] int  NULL,
    [NonStaffComplain] int  NULL,
    [ComplainDate] datetime  NULL,
    [ResponseComplainDate] datetime  NULL,
    [ComplainDetails] nvarchar(500)  NULL,
    [AccountingRelatedMemo] nvarchar(300)  NULL,
    [CostInclTax] decimal(18,2)  NULL,
    [PaymentinInstallment] decimal(18,2)  NULL,
    [InternalPayment] decimal(18,2)  NULL,
    [FrontSalesCharge] decimal(18,2)  NULL,
    [SCharge] decimal(18,2)  NULL,
    [BCharge] decimal(18,2)  NULL,
    [CCharge] decimal(18,2)  NULL,
    [PartnerCharge] decimal(18,2)  NULL,
    [NetProfit] decimal(18,2)  NULL,
    [NetMarginRate] decimal(18,2)  NULL,
    [GrossProfit] decimal(18,2)  NULL,
    [GrossMarginRate] decimal(18,2)  NULL,
    [OrderAmount] decimal(18,2)  NULL,
    [CoordinatorMemo] nvarchar(500)  NULL,
    [CoordinatorPrecautions] nvarchar(500)  NULL,
    [CoordinatorNotes] nvarchar(500)  NULL,
    [NotesToStaff] nvarchar(500)  NULL,
    [IsInternalComplain] bit  NULL,
    [IsClientComplain] bit  NULL,
    [DirectManuscript_en] nvarchar(max)  NULL,
    [DirectManuscript_cn] nvarchar(max)  NULL,
    [DirectManuscript_jp] nvarchar(max)  NULL,
    [DirectManuscript_kr] nvarchar(max)  NULL,
    [DirectManuscript_tl] nvarchar(max)  NULL,
    [DirectManuscript_fr] nvarchar(max)  NULL,
    [CoordinatorNotes_en] nvarchar(max)  NULL,
    [CoordinatorNotes_cn] nvarchar(max)  NULL,
    [CoordinatorNotes_jp] nvarchar(max)  NULL,
    [CoordinatorNotes_kr] nvarchar(max)  NULL,
    [CoordinatorNotes_tl] nvarchar(max)  NULL,
    [CoordinatorNotes_fr] nvarchar(max)  NULL,
    [NotesToStaff_en] nvarchar(max)  NULL,
    [NotesToStaff_cn] nvarchar(max)  NULL,
    [NotesToStaff_jp] nvarchar(max)  NULL,
    [NotesToStaff_kr] nvarchar(max)  NULL,
    [NotesToStaff_tl] nvarchar(max)  NULL,
    [NotesToStaff_fr] nvarchar(max)  NULL,
    [CoordinatorMemo_en] nvarchar(max)  NULL,
    [CoordinatorMemo_cn] nvarchar(max)  NULL,
    [CoordinatorMemo_jp] nvarchar(max)  NULL,
    [CoordinatorMemo_kr] nvarchar(max)  NULL,
    [CoordinatorMemo_tl] nvarchar(max)  NULL,
    [CoordinatorMemo_fr] nvarchar(max)  NULL,
    [Remarks_en] nvarchar(max)  NULL,
    [Remarks_cn] nvarchar(max)  NULL,
    [Remarks_jp] nvarchar(max)  NULL,
    [Remarks_kr] nvarchar(max)  NULL,
    [Remarks_tl] nvarchar(max)  NULL,
    [Remarks_fr] nvarchar(max)  NULL,
    [ComplainDetails_en] nvarchar(max)  NULL,
    [ComplainDetails_cn] nvarchar(max)  NULL,
    [ComplainDetails_jp] nvarchar(max)  NULL,
    [ComplainDetails_kr] nvarchar(max)  NULL,
    [ComplainDetails_tl] nvarchar(max)  NULL,
    [ComplainDetails_fr] nvarchar(max)  NULL,
    [AccountingRelatedMemo_en] nvarchar(max)  NULL,
    [AccountingRelatedMemo_cn] nvarchar(max)  NULL,
    [AccountingRelatedMemo_jp] nvarchar(max)  NULL,
    [AccountingRelatedMemo_kr] nvarchar(max)  NULL,
    [AccountingRelatedMemo_tl] nvarchar(max)  NULL,
    [AccountingRelatedMemo_fr] nvarchar(max)  NULL,
    [Coordinator2ID] uniqueidentifier  NULL,
    [EmailCCFullString] nvarchar(max)  NULL,
    [PaymentDateByMonth] int  NULL,
    [CoordinatorPrecautions_en] varchar(350)  NULL,
    [CoordinatorPrecautions_jp] varchar(350)  NULL,
    [CoordinatorPrecautions_kr] varchar(350)  NULL,
    [CoordinatorPrecautions_cn] varchar(350)  NULL,
    [CoordinatorPrecautions_fr] varchar(350)  NULL,
    [CoordinatorPrecautions_tl] varchar(350)  NULL,
    [StaffPaymentCost] decimal(18,2)  NULL,
    [StaffBillingCost] decimal(18,2)  NULL,
    [GrossInterestRate] decimal(18,2)  NULL,
    [BillingDate] datetime  NULL,
    [IsInternalResponse] bit  NULL,
    [OutwardsSalesPersonShare] decimal(18,2)  NULL,
    [Sales] decimal(18,2)  NULL,
    [PersonCharge1] decimal(18,2)  NULL,
    [PersonCharge2] decimal(18,2)  NULL
);
GO

-- Creating table 'Order_DeliveryDocuments'
CREATE TABLE [dbo].[Order_DeliveryDocuments] (
    [ID] uniqueidentifier  NOT NULL,
    [OrderID] uniqueidentifier  NULL,
    [Name] nvarchar(350)  NULL,
    [FileDescription] nvarchar(350)  NULL,
    [DownloadURL] nvarchar(350)  NULL,
    [UploadDated] datetime  NULL
);
GO

-- Creating table 'Order_StaffAllowance'
CREATE TABLE [dbo].[Order_StaffAllowance] (
    [ID] uniqueidentifier  NOT NULL,
    [EstimationID] uniqueidentifier  NOT NULL,
    [AllowanceType] int  NOT NULL,
    [ItemName] nvarchar(350)  NULL,
    [UnitPrice] decimal(18,2)  NULL,
    [NoOfPersons] int  NULL,
    [NoOfDays] int  NULL,
    [IsCompleteSet] bit  NULL,
    [IsExclTax] bit  NULL,
    [SubTotal] decimal(18,2)  NOT NULL
);
GO

-- Creating table 'Order_Web'
CREATE TABLE [dbo].[Order_Web] (
    [ID] uniqueidentifier  NOT NULL,
    [ApplicationID] bigint  NOT NULL,
    [RegistrationID] bigint  NOT NULL,
    [OrderNo] nvarchar(250)  NOT NULL,
    [InvoiceNo] nvarchar(250)  NULL,
    [SourceLanguageID] uniqueidentifier  NOT NULL,
    [TargetLanguageID] uniqueidentifier  NOT NULL,
    [TranslationFieldID] uniqueidentifier  NOT NULL,
    [AssignedTranslatorID] uniqueidentifier  NULL,
    [ClientID] uniqueidentifier  NOT NULL,
    [DeliveryPlanID] bigint  NOT NULL,
    [DeliveryPlan] nvarchar(250)  NULL,
    [DeliveryLevelName] nvarchar(250)  NULL,
    [CurrencyID] bigint  NOT NULL,
    [IntroducerID] uniqueidentifier  NULL,
    [TranslationType] int  NULL,
    [OrderDate] datetime  NULL,
    [StartDate] datetime  NULL,
    [EndDate] datetime  NULL,
    [DeliveryDate] datetime  NULL,
    [CompletionDate] datetime  NULL,
    [OrderStatus] int  NULL,
    [PaymentStatus] int  NULL,
    [PaymentMethod] int  NULL,
    [WordCount] bigint  NULL,
    [CountType] int  NULL,
    [PaymentAmount] decimal(18,2)  NULL,
    [TranslatorFee] decimal(18,2)  NULL,
    [EstimatedPrice] decimal(18,2)  NULL,
    [UnitPrice] decimal(18,2)  NULL,
    [Discount] decimal(18,2)  NULL,
    [PriceAfterDiscount] decimal(18,2)  NULL,
    [ConsumptionTax] decimal(18,2)  NULL,
    [RequestDate] datetime  NULL,
    [PaymentDate] datetime  NULL,
    [CommentToTranslator] nvarchar(max)  NULL,
    [MenuScript] nvarchar(max)  NULL,
    [DeliveryComment] nvarchar(max)  NULL,
    [CompanyNotes] nvarchar(max)  NULL,
    [CommentToBcause] nvarchar(max)  NULL,
    [ReferenceFileName] nvarchar(max)  NULL,
    [ReferenceDownloadURL] nvarchar(max)  NULL
);
GO

-- Creating table 'Order_WebDocuments'
CREATE TABLE [dbo].[Order_WebDocuments] (
    [ID] uniqueidentifier  NOT NULL,
    [OrderID] uniqueidentifier  NOT NULL,
    [Name] nvarchar(250)  NOT NULL,
    [FileDescription] nvarchar(250)  NULL,
    [DownloadURL] nvarchar(250)  NOT NULL,
    [UploadDate] datetime  NULL,
    [WordCount] bigint  NULL,
    [OriginalName] nvarchar(250)  NULL,
    [Extension] nvarchar(50)  NULL
);
GO

-- Creating table 'OrderAppointedToStaff_Web'
CREATE TABLE [dbo].[OrderAppointedToStaff_Web] (
    [ID] uniqueidentifier  NOT NULL,
    [TranslatorID] uniqueidentifier  NOT NULL,
    [OrderID] uniqueidentifier  NOT NULL,
    [ClientID] uniqueidentifier  NOT NULL,
    [AppointedDate] datetime  NULL
);
GO

-- Creating table 'OrderDetails'
CREATE TABLE [dbo].[OrderDetails] (
    [ID] uniqueidentifier  NOT NULL,
    [OrderID] uniqueidentifier  NOT NULL,
    [EstimationDetailsID] uniqueidentifier  NOT NULL,
    [StaffID] uniqueidentifier  NULL,
    [WorkingStatus] int  NULL,
    [DeliveryDate] datetime  NULL,
    [EvaluationAmount] decimal(18,2)  NULL,
    [PaymentAmountExcludingTax] decimal(18,2)  NULL,
    [AgencyCommission] decimal(18,2)  NULL,
    [ComplainDetails] nvarchar(250)  NULL,
    [RemitanceDate] datetime  NULL,
    [DepositAmount] decimal(18,2)  NULL,
    [CostIncTax] decimal(18,2)  NULL,
    [CostExclTax] decimal(18,2)  NULL,
    [ClientBillingCost] decimal(18,2)  NULL,
    [PaymentAmountIncludingTax] decimal(18,2)  NULL,
    [StaffPaymentCostIncludingTax] decimal(18,2)  NULL,
    [StaffPaymentCostExcludingTax] decimal(18,2)  NULL,
    [TotalStaffPaymentCost] decimal(18,2)  NULL,
    [Penalty] decimal(18,2)  NULL,
    [IsDeposited] bit  NULL,
    [PlaceOfResidence] nvarchar(max)  NULL,
    [IsComplaint] bit  NULL
);
GO

-- Creating table 'OrderEvaluationByCustomers'
CREATE TABLE [dbo].[OrderEvaluationByCustomers] (
    [ID] uniqueidentifier  NOT NULL,
    [TranslatorID] uniqueidentifier  NOT NULL,
    [OrderID] uniqueidentifier  NOT NULL,
    [ClientID] uniqueidentifier  NULL,
    [Q1Score] int  NULL,
    [Q2Score] int  NULL,
    [Q3Score] int  NULL,
    [Q4Score] int  NULL,
    [AvgScore] decimal(18,2)  NULL,
    [Comment] nvarchar(350)  NULL,
    [EvaluationDate] datetime  NULL,
    [ServiceEvaluationScore] int  NULL
);
GO

-- Creating table 'OrderRequestedToStaff_Web'
CREATE TABLE [dbo].[OrderRequestedToStaff_Web] (
    [ID] uniqueidentifier  NOT NULL,
    [TranslatorID] uniqueidentifier  NOT NULL,
    [OrderID] uniqueidentifier  NOT NULL,
    [ClientID] uniqueidentifier  NOT NULL,
    [RequestDate] datetime  NULL
);
GO

-- Creating table 'ProfitShareSettings'
CREATE TABLE [dbo].[ProfitShareSettings] (
    [ID] bigint IDENTITY(1,1) NOT NULL,
    [SCharge] int  NULL,
    [BCharge] int  NULL,
    [CCharge] int  NULL,
    [PartnerCharge] int  NULL,
    [FrontSalesCharge] int  NULL,
    [AssistantCharge] int  NULL,
    [PersonCharge1] int  NULL,
    [PersonCharge2] int  NULL,
    [IsActive] bit  NOT NULL,
    [IsDeleted] bit  NOT NULL,
    [CreatedBy] bigint  NULL,
    [CreatedDate] datetime  NULL,
    [UpdatedBy] bigint  NULL,
    [UpdatedDate] datetime  NULL,
    [Sales] int  NULL,
    [OutwardsSalesPersonShare] int  NULL
);
GO

-- Creating table 'Roles'
CREATE TABLE [dbo].[Roles] (
    [Id] bigint IDENTITY(1,1) NOT NULL,
    [Name_en] nvarchar(100)  NULL,
    [Name_jp] nvarchar(100)  NULL,
    [Name_kr] nvarchar(100)  NULL,
    [Name_cn] nvarchar(100)  NULL,
    [Description_en] nvarchar(500)  NULL,
    [Description_jp] nvarchar(500)  NULL,
    [Description_kr] nvarchar(500)  NULL,
    [Description_cn] nvarchar(500)  NULL,
    [Type] int  NULL,
    [IsActive] bit  NOT NULL,
    [IsDeleted] bit  NULL,
    [CreatedDate] datetime  NULL,
    [CreatedBy] bigint  NULL,
    [UpdatedDate] datetime  NULL,
    [UpdatedBy] bigint  NULL,
    [Name_fr] nvarchar(100)  NULL,
    [Name_tl] nvarchar(100)  NULL,
    [Description_fr] nvarchar(500)  NULL,
    [Description_tl] nvarchar(500)  NULL
);
GO

-- Creating table 'RoleAudits'
CREATE TABLE [dbo].[RoleAudits] (
    [Id] bigint IDENTITY(1,1) NOT NULL,
    [RoleId] bigint  NOT NULL,
    [ScreenOperationId] bigint  NOT NULL,
    [HaveAccess] bit  NOT NULL,
    [IsActive] bit  NOT NULL,
    [IsDeleted] bit  NOT NULL,
    [CreatedDate] datetime  NULL,
    [CreatedBy] bigint  NULL,
    [UpdatedDate] datetime  NULL,
    [UpdatedBy] bigint  NULL,
    [DataStatusFlag] char(1)  NOT NULL
);
GO

-- Creating table 'RoleWiseOperationPermissions'
CREATE TABLE [dbo].[RoleWiseOperationPermissions] (
    [RoleId] bigint  NOT NULL,
    [ScreenOperationId] bigint  NOT NULL,
    [HaveAccess] bit  NOT NULL,
    [IsActive] bit  NOT NULL,
    [IsDeleted] bit  NOT NULL,
    [CreatedDate] datetime  NULL,
    [CreatedBy] bigint  NULL,
    [UpdatedDate] datetime  NULL,
    [UpdatedBy] bigint  NULL
);
GO

-- Creating table 'RoleWiseScreenPermissions'
CREATE TABLE [dbo].[RoleWiseScreenPermissions] (
    [RoleId] bigint  NOT NULL,
    [ScreenId] bigint  NOT NULL,
    [AccessRight] char(4)  NOT NULL,
    [IsActive] bit  NOT NULL,
    [IsDeleted] bit  NOT NULL,
    [CreatedDate] datetime  NULL,
    [CreatedBy] bigint  NULL,
    [UpdatedDate] datetime  NULL,
    [UpdatedBy] bigint  NULL
);
GO

-- Creating table 'Screens'
CREATE TABLE [dbo].[Screens] (
    [Id] bigint IDENTITY(1,1) NOT NULL,
    [ModuleId] bigint  NOT NULL,
    [Title_en] nvarchar(200)  NULL,
    [Title_jp] nvarchar(200)  NULL,
    [Title_kr] nvarchar(200)  NULL,
    [Title_cn] nvarchar(200)  NULL,
    [Type] nchar(20)  NOT NULL,
    [URL] varchar(max)  NULL,
    [IsActive] bit  NOT NULL,
    [IsDeleted] bit  NULL,
    [CreatedDate] datetime  NULL,
    [CreatedBy] bigint  NULL,
    [UpdatedDate] datetime  NULL,
    [UpdatedBy] bigint  NULL,
    [Title_fr] nvarchar(200)  NULL,
    [Title_tl] nvarchar(200)  NULL
);
GO

-- Creating table 'ScreenOperations'
CREATE TABLE [dbo].[ScreenOperations] (
    [Id] bigint IDENTITY(1,1) NOT NULL,
    [Name_en] nvarchar(100)  NULL,
    [Name_jp] nvarchar(100)  NULL,
    [Name_kr] nvarchar(100)  NULL,
    [Name_cn] nvarchar(100)  NULL,
    [Description_en] nvarchar(500)  NULL,
    [Description_jp] nvarchar(500)  NULL,
    [Description_kr] nvarchar(500)  NULL,
    [Description_cn] nvarchar(500)  NULL,
    [ScreenId] bigint  NOT NULL,
    [IsActive] bit  NOT NULL,
    [IsDeleted] bit  NULL,
    [CreatedDate] datetime  NULL,
    [CreatedBy] bigint  NULL,
    [UpdatedDate] datetime  NULL,
    [UpdatedBy] bigint  NULL,
    [Name_fr] nvarchar(100)  NULL,
    [Name_tl] nvarchar(100)  NULL,
    [Description_fr] nvarchar(500)  NULL,
    [Description_tl] nvarchar(500)  NULL
);
GO

-- Creating table 'Staffs'
CREATE TABLE [dbo].[Staffs] (
    [ID] uniqueidentifier  NOT NULL,
    [RegistrationID] bigint IDENTITY(1,1) NOT NULL,
    [StaffEmailID] nvarchar(50)  NOT NULL,
    [StaffTypeID] int  NOT NULL,
    [MyIdentityNo] bigint  NULL,
    [ApplicationID] bigint  NULL,
    [RegistrationDate] datetime  NULL,
    [Password] nvarchar(500)  NOT NULL,
    [NickName_en] nvarchar(20)  NULL,
    [NickName_jp] nvarchar(20)  NULL,
    [NickName_kr] nvarchar(20)  NULL,
    [NickName_cn] nvarchar(20)  NULL,
    [NickName_fr] nvarchar(20)  NULL,
    [NickName_tl] nvarchar(20)  NULL,
    [Surname] nvarchar(5)  NULL,
    [FirstName_en] nvarchar(100)  NOT NULL,
    [FirstName_jp] nvarchar(100)  NULL,
    [FirstName_kr] nvarchar(100)  NULL,
    [FirstName_cn] nvarchar(100)  NULL,
    [FirstName_fr] nvarchar(100)  NULL,
    [FirstName_tl] nvarchar(100)  NULL,
    [MiddleName_en] nvarchar(100)  NULL,
    [MiddleName_jp] nvarchar(100)  NULL,
    [MiddleName_kr] nvarchar(100)  NULL,
    [MiddleName_cn] nvarchar(100)  NULL,
    [MiddleName_fr] nvarchar(100)  NULL,
    [MiddleName_tl] nvarchar(100)  NULL,
    [LastName_en] nvarchar(100)  NULL,
    [LastName_jp] nvarchar(100)  NULL,
    [LastName_kr] nvarchar(100)  NULL,
    [LastName_cn] nvarchar(100)  NULL,
    [LastName_fr] nvarchar(100)  NULL,
    [LastName_tl] nvarchar(100)  NULL,
    [Sex] bit  NULL,
    [BirthDate] datetime  NULL,
    [PostalCode] nvarchar(10)  NULL,
    [IsJapanese] bit  NULL,
    [LivingCountryID] bigint  NULL,
    [CityOfOverseas_en] nvarchar(50)  NULL,
    [CityOfOverseas_jp] nvarchar(50)  NULL,
    [CityOfOverseas_kr] nvarchar(50)  NULL,
    [CityOfOverseas_cn] nvarchar(50)  NULL,
    [CityOfOverseas_fr] nvarchar(50)  NULL,
    [CityOfOverseas_tl] nvarchar(50)  NULL,
    [NativeLanguageID] uniqueidentifier  NOT NULL,
    [ForiegnLanguage1ID] uniqueidentifier  NOT NULL,
    [ForiegnLanguage2ID] uniqueidentifier  NULL,
    [ForiegnLanguage3ID] uniqueidentifier  NULL,
    [ForiegnLanguage4ID] uniqueidentifier  NULL,
    [ForeignLang1Level] int  NULL,
    [ForeignLang2Level] int  NULL,
    [ForeignLang3Level] int  NULL,
    [ForeignLang4Level] int  NULL,
    [TranslationExpID] uniqueidentifier  NULL,
    [OtherLanguage] nvarchar(500)  NULL,
    [OtherLangQualification] nvarchar(500)  NULL,
    [VisaTypeID] uniqueidentifier  NULL,
    [VisaDeadLine] datetime  NULL,
    [District_en] nvarchar(50)  NULL,
    [District_jp] nvarchar(50)  NULL,
    [District_kr] nvarchar(50)  NULL,
    [District_cn] nvarchar(50)  NULL,
    [District_fr] nvarchar(50)  NULL,
    [District_tl] nvarchar(50)  NULL,
    [TownName_en] nvarchar(50)  NULL,
    [TownName_jp] nvarchar(50)  NULL,
    [TownName_kr] nvarchar(50)  NULL,
    [TownName_cn] nvarchar(50)  NULL,
    [TownName_fr] nvarchar(50)  NULL,
    [TownName_tl] nvarchar(50)  NULL,
    [Address_en] nvarchar(250)  NULL,
    [Address_jp] nvarchar(250)  NULL,
    [Address_kr] nvarchar(250)  NULL,
    [Address_cn] nvarchar(250)  NULL,
    [Address_fr] nvarchar(250)  NULL,
    [Address_tl] nvarchar(250)  NULL,
    [ApartmentName_en] nvarchar(100)  NULL,
    [ApartmentName_jp] nvarchar(100)  NULL,
    [ApartmentName_kr] nvarchar(100)  NULL,
    [ApartmentName_cn] nvarchar(100)  NULL,
    [ApartmentName_fr] nvarchar(100)  NULL,
    [ApartmentName_tl] nvarchar(100)  NULL,
    [ApartmentNo] nvarchar(50)  NULL,
    [TelephoneNo] nvarchar(25)  NULL,
    [MobileNo] nvarchar(20)  NULL,
    [HomeCountryPhone] nvarchar(250)  NULL,
    [Fax] nvarchar(20)  NULL,
    [HomeCountryAddress_en] nvarchar(250)  NULL,
    [HomeCountryAddress_jp] nvarchar(250)  NULL,
    [HomeCountryAddress_kr] nvarchar(250)  NULL,
    [HomeCountryAddress_cn] nvarchar(250)  NULL,
    [HomeCountryAddress_fr] nvarchar(250)  NULL,
    [HomeCountryAddress_tl] nvarchar(250)  NULL,
    [HasSocialExperienceJapan] bit  NULL,
    [HasSocialExperienceOtherCountry] bit  NULL,
    [IntroductionVideoURL] nvarchar(50)  NULL,
    [Street_en] nvarchar(250)  NULL,
    [Street_jp] nvarchar(250)  NULL,
    [Street_kr] nvarchar(250)  NULL,
    [Street_cn] nvarchar(250)  NULL,
    [Street_fr] nvarchar(250)  NULL,
    [Street_tl] nvarchar(250)  NULL,
    [EducationalDegree1] uniqueidentifier  NULL,
    [EducationalDegree2] uniqueidentifier  NULL,
    [EducationalDegree3] uniqueidentifier  NULL,
    [MainCareer_en] nvarchar(300)  NULL,
    [MainCareer_jp] nvarchar(300)  NULL,
    [MainCareer_kr] nvarchar(300)  NULL,
    [MainCareer_cn] nvarchar(300)  NULL,
    [MainCareer_fr] nvarchar(300)  NULL,
    [MainCareer_tl] nvarchar(300)  NULL,
    [SelfPR_en] nvarchar(300)  NULL,
    [SelfPR_jp] nvarchar(300)  NULL,
    [SelfPR_kr] nvarchar(300)  NULL,
    [SelfPR_cn] nvarchar(300)  NULL,
    [SelfPR_fr] nvarchar(300)  NULL,
    [SelfPR_tl] nvarchar(300)  NULL,
    [BankName] nvarchar(250)  NULL,
    [BankBranchName] nvarchar(250)  NULL,
    [BankAccountNumber] nvarchar(250)  NULL,
    [BankAccountName] nvarchar(250)  NULL,
    [BankAccountType] nvarchar(250)  NULL,
    [IntroducedBy] nvarchar(50)  NULL,
    [LastLoginDate] datetime  NULL,
    [CreatedDate] datetime  NULL,
    [CreatedBy] bigint  NULL,
    [UpdatedDate] datetime  NULL,
    [UpdatedBy] bigint  NULL,
    [Image] nvarchar(max)  NULL,
    [StaffNo] varchar(150)  NULL,
    [CountryOfCitizenship] bigint  NULL,
    [NationalityID] nvarchar(50)  NULL,
    [IsDeleted] bit  NOT NULL,
    [SelfVideoURL] varchar(max)  NULL,
    [CompanyID] uniqueidentifier  NULL
);
GO

-- Creating table 'Staff_BankAccountInfo'
CREATE TABLE [dbo].[Staff_BankAccountInfo] (
    [ID] uniqueidentifier  NOT NULL,
    [StaffID] uniqueidentifier  NOT NULL,
    [BankID] uniqueidentifier  NOT NULL,
    [BankBranchID] uniqueidentifier  NOT NULL,
    [AccountTypeID] bigint  NOT NULL,
    [AccountHolderName_en] nvarchar(250)  NULL,
    [AccountHolderName_jp] nvarchar(250)  NULL,
    [AccountHolderName_kr] nvarchar(250)  NULL,
    [AccountHolderName_cn] nvarchar(250)  NULL,
    [AccountHolderName_fr] nvarchar(250)  NULL,
    [AccountHolderName_tl] nvarchar(250)  NULL,
    [AccountNo] nvarchar(250)  NULL,
    [AccountHolderAddress_en] nvarchar(500)  NULL,
    [AccountHolderAddress_jp] nvarchar(500)  NULL,
    [AccountHolderAddress_kr] nvarchar(500)  NULL,
    [AccountHolderAddress_cn] nvarchar(500)  NULL,
    [AccountHolderAddress_fr] nvarchar(500)  NULL,
    [AccountHolderAddress_tl] nvarchar(500)  NULL,
    [AccountHolderContactNo] nvarchar(50)  NULL,
    [AccountNote_en] nvarchar(max)  NULL,
    [AccountNote_jp] nvarchar(max)  NULL,
    [AccountNote_kr] nvarchar(max)  NULL,
    [AccountNote_cn] nvarchar(max)  NULL,
    [AccountNote_fr] nvarchar(max)  NULL,
    [AccountNote_tl] nvarchar(max)  NULL,
    [CreatedDate] datetime  NULL,
    [CreatedBy] bigint  NULL,
    [UpdatedDate] datetime  NULL,
    [UpdatedBy] bigint  NULL
);
GO

-- Creating table 'Staff_CurrentStates'
CREATE TABLE [dbo].[Staff_CurrentStates] (
    [ID] bigint IDENTITY(1,1) NOT NULL,
    [StaffID] uniqueidentifier  NULL,
    [CurrentStateID] uniqueidentifier  NULL,
    [IsSelected] bit  NULL
);
GO

-- Creating table 'Staff_DevelopmentSkill'
CREATE TABLE [dbo].[Staff_DevelopmentSkill] (
    [ID] uniqueidentifier  NOT NULL,
    [StaffID] uniqueidentifier  NOT NULL,
    [DevelopmentSkillID] uniqueidentifier  NOT NULL,
    [DevelopmentSkillItemID] uniqueidentifier  NOT NULL,
    [ExperienceInYears] int  NULL
);
GO

-- Creating table 'Staff_EditingproInformation'
CREATE TABLE [dbo].[Staff_EditingproInformation] (
    [ID] uniqueidentifier  NOT NULL,
    [StaffID] uniqueidentifier  NOT NULL,
    [OverallScore] bigint  NULL,
    [InternalScore] bigint  NULL,
    [NumberOfWorks] int  NULL,
    [FavoritePoint] bigint  NULL,
    [CustomerEvaluationPoint] bigint  NULL,
    [PenaltyPoint] bigint  NULL,
    [NegativePoint] bigint  NULL,
    [BannedPeriodFrom] datetime  NULL,
    [BannedPeriodTo] datetime  NULL,
    [CustomerEvaluation_en] nvarchar(max)  NULL,
    [CustomerEvaluation_jp] nvarchar(max)  NULL,
    [CustomerEvaluation_kr] nvarchar(max)  NULL,
    [CustomerEvaluation_cn] nvarchar(max)  NULL,
    [CustomerEvaluation_fr] nvarchar(max)  NULL,
    [CustomerEvaluation_tl] nvarchar(max)  NULL,
    [IsExpertCertified] bit  NULL,
    [LastEvaluationDate] datetime  NULL,
    [NextEvaluationDate] datetime  NULL,
    [EvaluationHistory] nvarchar(max)  NULL
);
GO

-- Creating table 'Staff_EducationalHistory'
CREATE TABLE [dbo].[Staff_EducationalHistory] (
    [ID] uniqueidentifier  NOT NULL,
    [StaffID] uniqueidentifier  NOT NULL,
    [DegreeID] uniqueidentifier  NOT NULL,
    [MajorSubjectID] uniqueidentifier  NOT NULL,
    [CountryID] bigint  NOT NULL,
    [EntryYear] datetime  NOT NULL,
    [GraduationYear] datetime  NOT NULL,
    [InstituteName_en] nvarchar(200)  NULL,
    [InstituteName_jp] nvarchar(200)  NULL,
    [InstituteName_kr] nvarchar(200)  NULL,
    [InstituteName_cn] nvarchar(200)  NULL,
    [InstituteName_fr] nvarchar(200)  NULL,
    [InstituteName_tl] nvarchar(200)  NULL,
    [Comment_en] nvarchar(max)  NULL,
    [Comment_jp] nvarchar(max)  NULL,
    [Comment_kr] nvarchar(max)  NULL,
    [Comment_cn] nvarchar(max)  NULL,
    [Comment_fr] nvarchar(max)  NULL,
    [Comment_tl] nvarchar(max)  NULL,
    [CreatedDate] datetime  NULL,
    [CreatedBy] bigint  NULL,
    [UpdatedDate] datetime  NULL,
    [UpdatedBy] bigint  NULL
);
GO

-- Creating table 'Staff_InterpretationSpecialFields'
CREATE TABLE [dbo].[Staff_InterpretationSpecialFields] (
    [ID] uniqueidentifier  NOT NULL,
    [StaffID] uniqueidentifier  NOT NULL,
    [InterpretationFieldID] uniqueidentifier  NOT NULL,
    [IsSelected] bit  NOT NULL
);
GO

-- Creating table 'Staff_JobCategories'
CREATE TABLE [dbo].[Staff_JobCategories] (
    [ID] uniqueidentifier  NOT NULL,
    [StaffID] uniqueidentifier  NOT NULL,
    [JobCategoryID] uniqueidentifier  NOT NULL,
    [IsSelected] bit  NOT NULL
);
GO

-- Creating table 'Staff_JobHistory'
CREATE TABLE [dbo].[Staff_JobHistory] (
    [ID] uniqueidentifier  NOT NULL,
    [StaffID] uniqueidentifier  NOT NULL,
    [CompanyName_en] nvarchar(200)  NULL,
    [CompanyName_jp] nvarchar(200)  NULL,
    [CompanyName_kr] nvarchar(200)  NULL,
    [CompanyName_cn] nvarchar(200)  NULL,
    [CompanyName_fr] nvarchar(200)  NULL,
    [CompanyName_tl] nvarchar(200)  NULL,
    [CompanyPrivacyName_en] nvarchar(200)  NULL,
    [CompanyPrivacyName_jp] nvarchar(200)  NULL,
    [CompanyPrivacyName_kr] nvarchar(200)  NULL,
    [CompanyPrivacyName_cn] nvarchar(200)  NULL,
    [CompanyPrivacyName_fr] nvarchar(200)  NULL,
    [CompanyPrivacyName_tl] nvarchar(200)  NULL,
    [CompanyDetails_en] nvarchar(500)  NULL,
    [CompanyDetails_jp] nvarchar(500)  NULL,
    [CompanyDetails_kr] nvarchar(500)  NULL,
    [CompanyDetails_cn] nvarchar(500)  NULL,
    [CompanyDetails_fr] nvarchar(500)  NULL,
    [CompanyDetails_tl] nvarchar(500)  NULL,
    [BusinessTypeID] uniqueidentifier  NOT NULL,
    [BusinessTypeItemID] uniqueidentifier  NOT NULL,
    [JobType1ID] uniqueidentifier  NOT NULL,
    [JobType1ItemID] uniqueidentifier  NOT NULL,
    [JobType2ID] uniqueidentifier  NOT NULL,
    [JobType2ItemID] uniqueidentifier  NOT NULL,
    [OfficeLocation_en] nvarchar(200)  NULL,
    [OfficeLocation_jp] nvarchar(200)  NULL,
    [OfficeLocation_kr] nvarchar(200)  NULL,
    [OfficeLocation_cn] nvarchar(200)  NULL,
    [OfficeLocation_fr] nvarchar(200)  NULL,
    [OfficeLocation_tl] nvarchar(200)  NULL,
    [Position_en] nvarchar(200)  NULL,
    [Position_jp] nvarchar(200)  NULL,
    [Position_kr] nvarchar(200)  NULL,
    [Position_cn] nvarchar(200)  NULL,
    [Position_fr] nvarchar(200)  NULL,
    [Position_tl] nvarchar(200)  NULL,
    [JobResponsibility_en] nvarchar(500)  NULL,
    [JobResponsibility_jp] nvarchar(500)  NULL,
    [JobResponsibility_kr] nvarchar(500)  NULL,
    [JobResponsibility_cn] nvarchar(500)  NULL,
    [JobResponsibility_fr] nvarchar(500)  NULL,
    [JobResponsibility_tl] nvarchar(500)  NULL,
    [Achivements_en] nvarchar(500)  NULL,
    [Achivements_jp] nvarchar(500)  NULL,
    [Achivements_kr] nvarchar(500)  NULL,
    [Achivements_cn] nvarchar(500)  NULL,
    [Achivements_fr] nvarchar(500)  NULL,
    [Achivements_tl] nvarchar(500)  NULL,
    [InterviewNote_en] nvarchar(500)  NULL,
    [InterviewNote_jp] nvarchar(500)  NULL,
    [InterviewNote_kr] nvarchar(500)  NULL,
    [InterviewNote_cn] nvarchar(500)  NULL,
    [InterviewNote_fr] nvarchar(500)  NULL,
    [InterviewNote_tl] nvarchar(500)  NULL,
    [SalaryAmount] bigint  NULL,
    [ReasonOfResignation_en] nvarchar(500)  NULL,
    [ReasonOfResignation_jp] nvarchar(500)  NULL,
    [ReasonOfResignation_kr] nvarchar(500)  NULL,
    [ReasonOfResignation_cn] nvarchar(500)  NULL,
    [ReasonOfResignation_fr] nvarchar(500)  NULL,
    [ReasonOfResignation_tl] nvarchar(500)  NULL,
    [EmploymentTypeID] uniqueidentifier  NULL,
    [JoinDate] datetime  NULL,
    [ResignDate] datetime  NULL,
    [CreatedDate] datetime  NULL,
    [CreatedBy] bigint  NULL,
    [UpdatedDate] datetime  NULL,
    [UpdatedBy] bigint  NULL
);
GO

-- Creating table 'Staff_KnowledgeFields'
CREATE TABLE [dbo].[Staff_KnowledgeFields] (
    [ID] uniqueidentifier  NOT NULL,
    [StaffID] uniqueidentifier  NOT NULL,
    [KnowledgeFieldID] uniqueidentifier  NOT NULL,
    [KnowledgeFieldItemID] uniqueidentifier  NOT NULL,
    [IsSelected] bit  NULL
);
GO

-- Creating table 'Staff_ManagementExperience'
CREATE TABLE [dbo].[Staff_ManagementExperience] (
    [ID] uniqueidentifier  NOT NULL,
    [StaffID] uniqueidentifier  NOT NULL,
    [ManagementExperienceID] int  NULL,
    [Project1StartDate] datetime  NULL,
    [Project1EndDate] datetime  NULL,
    [Project1CompanyName_en] nvarchar(500)  NULL,
    [Project1CompanyName_jp] nvarchar(500)  NULL,
    [Project1CompanyName_kr] nvarchar(500)  NULL,
    [Project1CompanyName_cn] nvarchar(500)  NULL,
    [Project1CompanyName_fr] nvarchar(500)  NULL,
    [Project1CompanyName_tl] nvarchar(500)  NULL,
    [Project1SystemName_en] nvarchar(500)  NULL,
    [Project1SystemName_jp] nvarchar(500)  NULL,
    [Project1SystemName_kr] nvarchar(500)  NULL,
    [Project1SystemName_cn] nvarchar(500)  NULL,
    [Project1SystemName_fr] nvarchar(500)  NULL,
    [Project1SystemName_tl] nvarchar(500)  NULL,
    [Project1Language] nvarchar(500)  NULL,
    [Project1ResponsibleRoleID] int  NULL,
    [Project2StartDate] datetime  NULL,
    [Project2EndDate] datetime  NULL,
    [Project2CompanyName_en] nvarchar(500)  NULL,
    [Project2CompanyName_jp] nvarchar(500)  NULL,
    [Project2CompanyName_kr] nvarchar(500)  NULL,
    [Project2CompanyName_cn] nvarchar(500)  NULL,
    [Project2CompanyName_fr] nvarchar(500)  NULL,
    [Project2CompanyName_tl] nvarchar(500)  NULL,
    [Project2SystemName_en] nvarchar(500)  NULL,
    [Project2SystemName_jp] nvarchar(500)  NULL,
    [Project2SystemName_kr] nvarchar(500)  NULL,
    [Project2SystemName_cn] nvarchar(500)  NULL,
    [Project2SystemName_fr] nvarchar(500)  NULL,
    [Project2SystemName_tl] nvarchar(500)  NULL,
    [Project2Language] nvarchar(500)  NULL,
    [Project2ResponsibleRoleID] int  NULL,
    [DevelopmentExperienceIDs] nvarchar(100)  NULL,
    [Comments_en] nvarchar(max)  NULL,
    [Comments_jp] nvarchar(max)  NULL,
    [Comments_kr] nvarchar(max)  NULL,
    [Comments_cn] nvarchar(max)  NULL,
    [Comments_fr] nvarchar(max)  NULL,
    [Comments_tl] nvarchar(max)  NULL
);
GO

-- Creating table 'Staff_NarrationInformation'
CREATE TABLE [dbo].[Staff_NarrationInformation] (
    [ID] uniqueidentifier  NOT NULL,
    [StaffID] uniqueidentifier  NOT NULL,
    [NoOfExpYear] bigint  NULL,
    [NoOfExpMonth] bigint  NULL,
    [OtherExperience_en] nvarchar(250)  NULL,
    [OtherExperience_jp] nvarchar(250)  NULL,
    [OtherExperience_kr] nvarchar(250)  NULL,
    [OtherExperience_cn] nvarchar(250)  NULL,
    [OtherExperience_fr] nvarchar(250)  NULL,
    [OtherExperience_tl] nvarchar(250)  NULL,
    [PricePerWork] bigint  NULL,
    [PricePerHour] bigint  NULL,
    [MinPrice] bigint  NULL,
    [PricePerWorkRequest] bigint  NULL,
    [PricePerHourRequest] bigint  NULL,
    [MinPriceRequest] bigint  NULL,
    [VoiceType] int  NULL,
    [AgeImpression] int  NULL,
    [SceneOrPurposes] varchar(100)  NULL,
    [VoiceSampleFile1] nvarchar(250)  NULL,
    [VoiceSampleFile2] nvarchar(250)  NULL,
    [VoiceSampleFile3] nvarchar(250)  NULL,
    [SelfPromotion_en] nvarchar(max)  NULL,
    [SelfPromotion_jp] nvarchar(max)  NULL,
    [SelfPromotion_kr] nvarchar(max)  NULL,
    [SelfPromotion_cn] nvarchar(max)  NULL,
    [SelfPromotion_fr] nvarchar(max)  NULL,
    [SelfPromotion_tl] nvarchar(max)  NULL,
    [Coordinator_en] nvarchar(max)  NULL,
    [Coordinator_jp] nvarchar(max)  NULL,
    [Coordinator_kr] nvarchar(max)  NULL,
    [Coordinator_cn] nvarchar(max)  NULL,
    [Coordinator_fr] nvarchar(max)  NULL,
    [Coordinator_tl] nvarchar(max)  NULL,
    [IsShowWebsite] bit  NULL,
    [IsPartnerNarrator] bit  NULL,
    [IsPromote] bit  NULL,
    [PriorityValue] int  NULL,
    [CustomerEvaluation] int  NULL,
    [NarrationLevel] int  NULL,
    [ProfessionID] uniqueidentifier  NULL,
    [CreatedDate] datetime  NULL,
    [CreatedBy] bigint  NULL,
    [UpdatedDate] datetime  NULL,
    [UpdatedBy] bigint  NULL
);
GO

-- Creating table 'Staff_NarrationVoiceFiles'
CREATE TABLE [dbo].[Staff_NarrationVoiceFiles] (
    [ID] uniqueidentifier  NOT NULL,
    [StaffID] uniqueidentifier  NOT NULL,
    [NarrationTypeID] uniqueidentifier  NULL,
    [OrderNo] varchar(50)  NULL,
    [VoiceDetail_en] varchar(250)  NULL,
    [VoiceDetail_jp] varchar(250)  NULL,
    [VoiceDetail_kr] varchar(250)  NULL,
    [VoiceDetail_cn] varchar(250)  NULL,
    [VoiceDetail_fr] varchar(250)  NULL,
    [VoiceDetail_tl] varchar(250)  NULL,
    [NarrationFileName] varchar(250)  NULL,
    [UploadURL] varchar(250)  NULL,
    [CreatedDate] datetime  NULL,
    [CreatedBy] bigint  NULL,
    [UpdatedDate] datetime  NULL,
    [UpdatedBy] bigint  NULL
);
GO

-- Creating table 'Staff_ProfessionalSpeciality'
CREATE TABLE [dbo].[Staff_ProfessionalSpeciality] (
    [ID] bigint IDENTITY(1,1) NOT NULL,
    [StaffID] uniqueidentifier  NOT NULL,
    [ProfessionalID] uniqueidentifier  NOT NULL,
    [IsSelected] bit  NULL
);
GO

-- Creating table 'Staff_ServiceTypes'
CREATE TABLE [dbo].[Staff_ServiceTypes] (
    [ID] uniqueidentifier  NOT NULL,
    [StaffID] uniqueidentifier  NOT NULL,
    [ServiceTypeID] int  NULL,
    [IsSelected] bit  NULL
);
GO

-- Creating table 'Staff_SkillCertificate'
CREATE TABLE [dbo].[Staff_SkillCertificate] (
    [ID] uniqueidentifier  NOT NULL,
    [StaffID] uniqueidentifier  NOT NULL,
    [MainLanguageID] uniqueidentifier  NULL,
    [MainLanguageLevelID] int  NULL,
    [FoeignLanguageID1] uniqueidentifier  NULL,
    [FoeignLanguageID2] uniqueidentifier  NULL,
    [FoeignLanguageID3] uniqueidentifier  NULL,
    [ForeignLanguageLevelID1] int  NULL,
    [ForeignLanguageLevelID2] int  NULL,
    [ForeignLanguageLevelID3] int  NULL,
    [TOEICScore] bigint  NULL,
    [TOEICDate] datetime  NULL,
    [TOFELScore] bigint  NULL,
    [TOFELDate] datetime  NULL,
    [CertificateName1] nvarchar(250)  NULL,
    [CertificateName2] nvarchar(250)  NULL,
    [CertificateName3] nvarchar(250)  NULL,
    [CertificateDate1] datetime  NULL,
    [CertificateDate2] datetime  NULL,
    [CertificateDate3] datetime  NULL,
    [SpecialField1] uniqueidentifier  NULL,
    [SpecialField2] uniqueidentifier  NULL,
    [SpecialField3] uniqueidentifier  NULL,
    [SpecialField4] uniqueidentifier  NULL,
    [SpecialField5] uniqueidentifier  NULL,
    [Comment_en] nvarchar(500)  NULL,
    [Comment_jp] nvarchar(500)  NULL,
    [Comment_kr] nvarchar(500)  NULL,
    [Comment_cn] nvarchar(500)  NULL,
    [Comment_fr] nvarchar(500)  NULL,
    [Comment_tl] nvarchar(500)  NULL,
    [Project1StartDate] datetime  NULL,
    [Project1EndDate] datetime  NULL,
    [Project1TeamSize] int  NULL,
    [Project1Budget] bigint  NULL,
    [Project1CompanyName_en] nvarchar(250)  NULL,
    [Project1CompanyName_jp] nvarchar(250)  NULL,
    [Project1CompanyName_kr] nvarchar(250)  NULL,
    [Project1CompanyName_cn] nvarchar(250)  NULL,
    [Project1CompanyName_fr] nvarchar(250)  NULL,
    [Project1CompanyName_tl] nvarchar(250)  NULL,
    [Project1Role_en] nvarchar(150)  NULL,
    [Project1Role_jp] nvarchar(150)  NULL,
    [Project1Role_kr] nvarchar(150)  NULL,
    [Project1Role_cn] nvarchar(150)  NULL,
    [Project1Role_fr] nvarchar(150)  NULL,
    [Project1Role_tl] nvarchar(150)  NULL,
    [Project2StartDate] datetime  NULL,
    [Project2EndDate] datetime  NULL,
    [Project2TeamSize] int  NULL,
    [Project2Budget] bigint  NULL,
    [Project2CompanyName_en] nvarchar(250)  NULL,
    [Project2CompanyName_jp] nvarchar(250)  NULL,
    [Project2CompanyName_kr] nvarchar(250)  NULL,
    [Project2CompanyName_cn] nvarchar(250)  NULL,
    [Project2CompanyName_fr] nvarchar(250)  NULL,
    [Project2CompanyName_tl] nvarchar(250)  NULL,
    [Project2Role_en] nvarchar(150)  NULL,
    [Project2Role_jp] nvarchar(150)  NULL,
    [Project2Role_kr] nvarchar(150)  NULL,
    [Project2Role_cn] nvarchar(150)  NULL,
    [Project2Role_fr] nvarchar(150)  NULL,
    [Project2Role_tl] nvarchar(150)  NULL,
    [CreatedDate] datetime  NULL,
    [CreatedBy] bigint  NULL,
    [UpdatedDate] datetime  NULL,
    [UpdatedBy] bigint  NULL
);
GO

-- Creating table 'Staff_SoftwareSkill'
CREATE TABLE [dbo].[Staff_SoftwareSkill] (
    [ID] uniqueidentifier  NOT NULL,
    [StaffID] uniqueidentifier  NULL,
    [StaffSoftwareSkillID] bigint  NULL,
    [IsSelected] bit  NULL,
    [ApplicationID] int  NULL,
    [CreatedDate] datetime  NULL,
    [CreatedBy] bigint  NULL,
    [UpdatedDate] datetime  NULL,
    [UpdatedBy] bigint  NULL
);
GO

-- Creating table 'Staff_TechnicalCertificate'
CREATE TABLE [dbo].[Staff_TechnicalCertificate] (
    [ID] uniqueidentifier  NOT NULL,
    [StaffID] uniqueidentifier  NOT NULL,
    [Name_en] nvarchar(250)  NULL,
    [Name_jp] nvarchar(250)  NULL,
    [Name_kr] nvarchar(250)  NULL,
    [Name_cn] nvarchar(250)  NULL,
    [Name_fr] nvarchar(250)  NULL,
    [Name_tl] nvarchar(250)  NULL,
    [IssuedPlace] nvarchar(250)  NULL,
    [IssuedDate] datetime  NULL,
    [UploadLink] nvarchar(250)  NULL,
    [CreatedDate] datetime  NULL,
    [CreatedBy] bigint  NULL,
    [UpdatedDate] datetime  NULL,
    [UpdatedBy] bigint  NULL
);
GO

-- Creating table 'Staff_TranslateInterpretExperience'
CREATE TABLE [dbo].[Staff_TranslateInterpretExperience] (
    [ID] uniqueidentifier  NOT NULL,
    [StaffID] uniqueidentifier  NOT NULL,
    [PriorityID] int  NULL,
    [TransSpecialFieldID1] uniqueidentifier  NULL,
    [TransSpecialFieldID2] uniqueidentifier  NULL,
    [TransSpecialFieldID3] uniqueidentifier  NULL,
    [HasResearchExperience] bit  NULL,
    [HasMSOfficeExperience] bit  NULL,
    [HasMacOSExperience] bit  NULL,
    [HasAdobeExperience] bit  NULL,
    [AssignedWork] bigint  NULL,
    [WorkDelay] bigint  NULL,
    [WorkClaim] bigint  NULL,
    [PuntualityPercentage] bigint  NULL,
    [ClaimPercentage] bigint  NULL,
    [EvaluationAvg] decimal(18,2)  NULL,
    [EvaluationInterp] decimal(18,2)  NULL,
    [EvaluationTrans] decimal(18,2)  NULL,
    [EvaluationDTP] decimal(18,2)  NULL,
    [TransRatingPunctuality] decimal(18,2)  NULL,
    [TransRatingQuality] decimal(18,2)  NULL,
    [TransRatingComment] decimal(18,2)  NULL,
    [TransRatingFeedback] decimal(18,2)  NULL,
    [TransRatingLayout] decimal(18,2)  NULL,
    [TransRatingResponse] decimal(18,2)  NULL,
    [TransRatingNegotiation] decimal(18,2)  NULL,
    [InterpRatingPunctuality] decimal(18,2)  NULL,
    [InterpRatingQuality] decimal(18,2)  NULL,
    [InterpRatingComment] decimal(18,2)  NULL,
    [InterpRatingFeedback] decimal(18,2)  NULL,
    [InterpRatingReport] decimal(18,2)  NULL,
    [InterpRatingManner] decimal(18,2)  NULL,
    [InerpRatingNegotiation] decimal(18,2)  NULL,
    [TransPricePerPage] decimal(18,2)  NULL,
    [TransPricePerWord] decimal(18,2)  NULL,
    [TransPricePerPageRequested] decimal(18,2)  NULL,
    [TransPricePerWordRequested] decimal(18,2)  NULL,
    [TransPriceNote_en] nvarchar(max)  NULL,
    [TransPriceNote_jp] nvarchar(max)  NULL,
    [TransPriceNote_kr] nvarchar(max)  NULL,
    [TransPriceNote_cn] nvarchar(max)  NULL,
    [TransPriceNote_fr] nvarchar(max)  NULL,
    [TransPriceNote_tl] nvarchar(max)  NULL,
    [InterpPricePerDay] decimal(18,2)  NULL,
    [InterpPricePerHalfDay] decimal(18,2)  NULL,
    [InterpPricePerHour] decimal(18,2)  NULL,
    [InterpPricePerPageRequested] decimal(18,2)  NULL,
    [InterpPricePerHalfDayRequested] decimal(18,2)  NULL,
    [InterpPricePerHourRequested] decimal(18,2)  NULL,
    [InterpPriceNote_en] nvarchar(max)  NULL,
    [InterpPriceNote_jp] nvarchar(max)  NULL,
    [InterpPriceNote_kr] nvarchar(max)  NULL,
    [InterpPriceNote_cn] nvarchar(max)  NULL,
    [InterpPriceNote_fr] nvarchar(max)  NULL,
    [InterpPriceNote_tl] nvarchar(max)  NULL,
    [CoordinatorSalesNote_en] nvarchar(max)  NULL,
    [CoordinatorSalesNote_jp] nvarchar(max)  NULL,
    [CoordinatorSalesNote_kr] nvarchar(max)  NULL,
    [CoordinatorSalesNote_cn] nvarchar(max)  NULL,
    [CoordinatorSalesNote_fr] nvarchar(max)  NULL,
    [CoordinatorSalesNote_tl] nvarchar(max)  NULL,
    [CreatedDate] datetime  NULL,
    [CreatedBy] bigint  NULL,
    [UpdatedDate] datetime  NULL,
    [UpdatedBy] bigint  NULL
);
GO

-- Creating table 'Staff_TranslationSpecialFields'
CREATE TABLE [dbo].[Staff_TranslationSpecialFields] (
    [ID] uniqueidentifier  NOT NULL,
    [StaffID] uniqueidentifier  NOT NULL,
    [TranslationSpecialFieldID] uniqueidentifier  NOT NULL,
    [IsSelected] bit  NOT NULL
);
GO

-- Creating table 'Staff_TransproInformation'
CREATE TABLE [dbo].[Staff_TransproInformation] (
    [ID] uniqueidentifier  NOT NULL,
    [StaffID] uniqueidentifier  NOT NULL,
    [OverallScore] bigint  NULL,
    [InternalScore] bigint  NULL,
    [NumberOfWorks] int  NULL,
    [FavoritePoint] bigint  NULL,
    [CustomerEvaluationPoint] bigint  NULL,
    [PenaltyPoint] bigint  NULL,
    [NegativePoint] bigint  NULL,
    [BannedPeriodFrom] datetime  NULL,
    [BannedPeriodTo] datetime  NULL,
    [CustomerEvaluation_en] nvarchar(max)  NULL,
    [CustomerEvaluation_jp] nvarchar(max)  NULL,
    [CustomerEvaluation_kr] nvarchar(max)  NULL,
    [CustomerEvaluation_cn] nvarchar(max)  NULL,
    [CustomerEvaluation_fr] nvarchar(max)  NULL,
    [CustomerEvaluation_tl] nvarchar(max)  NULL,
    [IsExpertCertified] bit  NULL,
    [LastEvaluationDate] datetime  NULL,
    [NextEvaluationDate] datetime  NULL,
    [EvaluationHistory] nvarchar(max)  NULL,
    [CreatedDate] datetime  NULL,
    [CreatedBy] bigint  NULL,
    [UpdatedDate] datetime  NULL,
    [UpdatedBy] bigint  NULL
);
GO

-- Creating table 'sysdiagrams'
CREATE TABLE [dbo].[sysdiagrams] (
    [name] nvarchar(128)  NOT NULL,
    [principal_id] int  NOT NULL,
    [diagram_id] int IDENTITY(1,1) NOT NULL,
    [version] int  NULL,
    [definition] varbinary(max)  NULL
);
GO

-- Creating table 'TranslationCertificateSettings'
CREATE TABLE [dbo].[TranslationCertificateSettings] (
    [ID] bigint IDENTITY(1,1) NOT NULL,
    [CertificateType] int  NOT NULL,
    [UnitPrice] decimal(18,2)  NOT NULL
);
GO

-- Creating table 'TranslationLevels'
CREATE TABLE [dbo].[TranslationLevels] (
    [ID] bigint IDENTITY(1,1) NOT NULL,
    [Name_en] nvarchar(50)  NULL,
    [Name_jp] nvarchar(50)  NULL,
    [Name_kr] nvarchar(50)  NULL,
    [Name_cn] nvarchar(50)  NULL,
    [Name_fr] nvarchar(50)  NULL,
    [Name_tl] nvarchar(50)  NULL,
    [CurrencyID] bigint  NULL,
    [Price] decimal(18,2)  NULL
);
GO

-- Creating table 'TranslatorBlackLists'
CREATE TABLE [dbo].[TranslatorBlackLists] (
    [ID] uniqueidentifier  NOT NULL,
    [ClientID] uniqueidentifier  NOT NULL,
    [StaffID] uniqueidentifier  NOT NULL
);
GO

-- Creating table 'TranslatorFavouriteLists'
CREATE TABLE [dbo].[TranslatorFavouriteLists] (
    [ID] uniqueidentifier  NOT NULL,
    [ClientID] uniqueidentifier  NOT NULL,
    [StaffID] uniqueidentifier  NOT NULL
);
GO

-- Creating table 'TransproDeliveryPlanSettings'
CREATE TABLE [dbo].[TransproDeliveryPlanSettings] (
    [ID] bigint IDENTITY(1,1) NOT NULL,
    [Name_en] nvarchar(250)  NULL,
    [Name_jp] nvarchar(250)  NULL,
    [Name_kr] nvarchar(250)  NULL,
    [Name_cn] nvarchar(250)  NULL,
    [Name_fr] nvarchar(250)  NULL,
    [Name_tl] nvarchar(250)  NULL,
    [IsActive] bit  NOT NULL,
    [DeliveryType] int  NULL,
    [DeliveryTime] int  NULL,
    [CreatedBy] bigint  NULL,
    [CreatedDate] datetime  NULL,
    [UpdatedBy] bigint  NULL,
    [UpdatedDate] datetime  NULL
);
GO

-- Creating table 'TransproLanguagePriceCategories'
CREATE TABLE [dbo].[TransproLanguagePriceCategories] (
    [ID] uniqueidentifier  NOT NULL,
    [SourceLanguageID] uniqueidentifier  NOT NULL,
    [TargetLanguageID] uniqueidentifier  NOT NULL,
    [SpecialityFieldID] uniqueidentifier  NOT NULL,
    [SubSpecialityFieldID] uniqueidentifier  NOT NULL,
    [Description_en] nvarchar(250)  NULL,
    [Description_jp] nvarchar(250)  NULL,
    [Description_kr] nvarchar(250)  NULL,
    [Description_cn] nvarchar(250)  NULL,
    [Description_fr] nvarchar(250)  NULL,
    [Description_tl] nvarchar(250)  NULL,
    [WordPerPage] bigint  NULL,
    [CurrencyID] bigint  NOT NULL,
    [IsLightPrice] bit  NOT NULL,
    [IsBusinessPrice] bit  NOT NULL,
    [IsExpertPrice] bit  NOT NULL,
    [IsActive] bit  NOT NULL,
    [IsDeleted] bit  NOT NULL
);
GO

-- Creating table 'UserInformations'
CREATE TABLE [dbo].[UserInformations] (
    [Id] bigint IDENTITY(1,1) NOT NULL,
    [FirstName] nvarchar(200)  NOT NULL,
    [LastName] nvarchar(200)  NULL,
    [MobileNo] nvarchar(20)  NULL,
    [DateOfBirth] datetime  NULL,
    [Email] nvarchar(50)  NOT NULL,
    [UserTypeId] bigint  NOT NULL,
    [RoleId] bigint  NOT NULL,
    [Username] nvarchar(50)  NOT NULL,
    [EmployeeID] uniqueidentifier  NULL,
    [Password] varchar(max)  NOT NULL,
    [PasswordAgeLimit] int  NULL,
    [IsPasswordChanged] bit  NOT NULL,
    [HasMultipleRole] bit  NULL,
    [IsLocked] bit  NOT NULL,
    [LastPasswordChangedDate] datetime  NULL,
    [LastLockedDate] datetime  NULL,
    [WrongPasswordTryLimit] int  NULL,
    [IsSuperAdmin] bit  NOT NULL,
    [IsActive] bit  NOT NULL,
    [IsDeleted] bit  NULL,
    [Session] uniqueidentifier  NULL,
    [CreatedDate] datetime  NULL,
    [CreatedBy] bigint  NULL,
    [UpdateDate] datetime  NULL,
    [UpdatedBy] bigint  NULL
);
GO

-- Creating table 'UserInRoles'
CREATE TABLE [dbo].[UserInRoles] (
    [UserId] bigint  NOT NULL,
    [RoleId] bigint  NOT NULL,
    [IsActive] bit  NOT NULL,
    [IsDeleted] bit  NULL,
    [CreatedDate] datetime  NULL,
    [CreatedBy] bigint  NULL,
    [UpdatedDate] datetime  NULL,
    [UpdatedBy] bigint  NULL
);
GO

-- Creating table 'UserTypes'
CREATE TABLE [dbo].[UserTypes] (
    [Id] bigint IDENTITY(1,1) NOT NULL,
    [Name_en] nvarchar(100)  NOT NULL,
    [Name_jp] nvarchar(100)  NULL,
    [Name_kr] nvarchar(100)  NULL,
    [Name_cn] nvarchar(100)  NULL,
    [Name_fr] nvarchar(100)  NULL,
    [Name_tl] nvarchar(100)  NULL,
    [Description_en] nvarchar(500)  NULL,
    [Description_jp] nvarchar(500)  NULL,
    [Description_kr] nvarchar(500)  NULL,
    [Description_cn] nvarchar(500)  NULL,
    [Description_fr] nvarchar(500)  NULL,
    [Description_tl] nvarchar(500)  NULL,
    [IsActive] bit  NOT NULL,
    [IsDeleted] bit  NOT NULL,
    [CreatedDate] datetime  NOT NULL,
    [CreatedBy] bigint  NULL,
    [UpdatedDate] datetime  NOT NULL,
    [UpdatedBy] bigint  NULL
);
GO

-- Creating table 'IdentityInformations'
CREATE TABLE [dbo].[IdentityInformations] (
    [ApplicationId] bigint  NOT NULL,
    [ApplicationIdLength] tinyint  NOT NULL,
    [ModuleId] bigint  NOT NULL,
    [ModuleIdLength] tinyint  NOT NULL,
    [ScreenId] bigint  NOT NULL,
    [ScreenIdLength] tinyint  NOT NULL,
    [MenuId] bigint  NOT NULL,
    [MenuIdLength] tinyint  NOT NULL,
    [UserTypeId] bigint  NOT NULL,
    [UserTypeIdLength] tinyint  NOT NULL,
    [RoleId] bigint  NOT NULL,
    [RoleIdLength] tinyint  NOT NULL,
    [PersonId] bigint  NOT NULL,
    [PersonIdLength] tinyint  NOT NULL,
    [ScreenOperationId] bigint  NOT NULL,
    [ScreenOperationIdLength] tinyint  NOT NULL,
    [ApplicationPolicyId] bigint  NOT NULL,
    [ApplicationPolicyIdLength] tinyint  NOT NULL
);
GO

-- Creating table 'PayPalTransactions'
CREATE TABLE [dbo].[PayPalTransactions] (
    [ID] uniqueidentifier  NOT NULL,
    [Guid] nvarchar(max)  NOT NULL,
    [PaymentID] nvarchar(max)  NOT NULL,
    [ApplicationID] bigint  NOT NULL,
    [CreatedDate] datetime  NOT NULL
);
GO

-- Creating table 'TransproLanguagePriceDetails'
CREATE TABLE [dbo].[TransproLanguagePriceDetails] (
    [ID] uniqueidentifier  NOT NULL,
    [PriceCategoryID] uniqueidentifier  NOT NULL,
    [DeliveryPlanID] bigint  NOT NULL,
    [LightPrice] decimal(18,2)  NULL,
    [BusinessPrice] decimal(18,2)  NULL,
    [ExpertPrice] decimal(18,2)  NULL,
    [IsDefaultForView] bit  NOT NULL,
    [SortBy] int  NULL
);
GO

-- Creating table 'RoleManagements'
CREATE TABLE [dbo].[RoleManagements] (
    [UserId] bigint  NOT NULL
);
GO

-- Creating table 'staff_tbd'
CREATE TABLE [dbo].[staff_tbd] (
    [RegistrationID] bigint  NOT NULL,
    [StaffEmailID] nvarchar(50)  NOT NULL,
    [NickName_en] nvarchar(20)  NOT NULL,
    [NickName_jp] nvarchar(20)  NULL,
    [NickName_kr] nvarchar(20)  NULL,
    [NickName_cn] nvarchar(20)  NULL,
    [NickName_fr] nvarchar(20)  NULL,
    [NickName_tl] nvarchar(20)  NULL,
    [FirstName_en] nvarchar(100)  NOT NULL,
    [FirstName_jp] nvarchar(100)  NULL,
    [FirstName_kr] nvarchar(100)  NULL,
    [FirstName_cn] nvarchar(100)  NULL,
    [FirstName_fr] nvarchar(100)  NULL,
    [FirstName_tl] nvarchar(100)  NULL,
    [MiddleName_en] nvarchar(100)  NULL,
    [MiddleName_jp] nvarchar(100)  NULL,
    [MiddleName_kr] nvarchar(100)  NULL,
    [MiddleName_cn] nvarchar(100)  NULL,
    [MiddleName_fr] nvarchar(100)  NULL,
    [MiddleName_tl] nvarchar(100)  NULL,
    [LastName_en] nvarchar(100)  NOT NULL,
    [LastName_jp] nvarchar(100)  NULL,
    [LastName_kr] nvarchar(100)  NULL,
    [LastName_cn] nvarchar(100)  NULL,
    [LastName_fr] nvarchar(100)  NULL,
    [LastName_tl] nvarchar(100)  NULL,
    [TelephoneNo] nvarchar(25)  NULL,
    [MobileNo] nvarchar(20)  NULL,
    [Fax] nvarchar(20)  NULL,
    [ForiegnLanguage1ID] uniqueidentifier  NOT NULL,
    [Expr39] varchar(5)  NOT NULL,
    [Expr40] nvarchar(100)  NOT NULL,
    [Expr41] nvarchar(100)  NULL,
    [Expr42] nvarchar(100)  NULL,
    [Expr43] nvarchar(100)  NULL,
    [Expr44] nvarchar(100)  NULL,
    [Expr45] nvarchar(100)  NULL,
    [Expr46] bit  NOT NULL,
    [ForeignLang1Level] int  NULL,
    [ForiegnLanguage2ID] uniqueidentifier  NULL,
    [Expr1] varchar(5)  NOT NULL,
    [Expr2] nvarchar(100)  NOT NULL,
    [Expr3] nvarchar(100)  NULL,
    [Expr4] nvarchar(100)  NULL,
    [Expr5] nvarchar(100)  NULL,
    [Expr6] nvarchar(100)  NULL,
    [Expr7] nvarchar(100)  NULL,
    [Expr8] bit  NOT NULL,
    [ForeignLang2Level] int  NULL,
    [ForiegnLanguage3ID] uniqueidentifier  NULL,
    [Expr9] varchar(5)  NOT NULL,
    [Expr10] nvarchar(100)  NOT NULL,
    [Expr11] nvarchar(100)  NULL,
    [Expr12] nvarchar(100)  NULL,
    [Expr13] nvarchar(100)  NULL,
    [Expr14] nvarchar(100)  NULL,
    [Expr15] nvarchar(100)  NULL,
    [Expr16] bit  NOT NULL,
    [ForeignLang3Level] int  NULL,
    [ForiegnLanguage4ID] uniqueidentifier  NULL,
    [Expr17] varchar(5)  NOT NULL,
    [Expr18] nvarchar(100)  NOT NULL,
    [Expr19] nvarchar(100)  NULL,
    [Expr20] nvarchar(100)  NULL,
    [Expr21] nvarchar(100)  NULL,
    [Expr22] nvarchar(100)  NULL,
    [Expr23] nvarchar(100)  NULL,
    [Expr24] bit  NOT NULL,
    [ForeignLang4Level] int  NULL,
    [Sex] bit  NOT NULL,
    [BirthDate] datetime  NOT NULL,
    [CountryOfCitizenship] bigint  NOT NULL,
    [Expr25] nvarchar(5)  NULL,
    [Expr26] nvarchar(50)  NOT NULL,
    [Expr27] nvarchar(50)  NULL,
    [Expr28] nvarchar(50)  NULL,
    [Expr29] nvarchar(50)  NULL,
    [Expr30] nvarchar(50)  NULL,
    [Expr31] nvarchar(50)  NULL,
    [IsTrading] bit  NULL,
    [SortBy] int  NULL,
    [IsActive] bit  NOT NULL,
    [LivingCountryID] bigint  NULL,
    [Code] nvarchar(5)  NULL,
    [Name_en] nvarchar(50)  NOT NULL,
    [Name_jp] nvarchar(50)  NULL,
    [Name_kr] nvarchar(50)  NULL,
    [Name_cn] nvarchar(50)  NULL,
    [Name_fr] nvarchar(50)  NULL,
    [Name_tl] nvarchar(50)  NULL,
    [Expr32] bit  NULL,
    [Expr33] int  NULL,
    [Expr34] bit  NOT NULL,
    [VisaTypeID] uniqueidentifier  NOT NULL,
    [Expr35] nvarchar(100)  NOT NULL,
    [Expr36] nvarchar(100)  NULL,
    [Expr37] nvarchar(100)  NULL,
    [Expr38] nvarchar(100)  NULL,
    [Expr47] nvarchar(100)  NULL,
    [Expr48] nvarchar(100)  NULL,
    [Description_en] nvarchar(500)  NULL,
    [Description_jp] nvarchar(500)  NULL,
    [Description_kr] nvarchar(500)  NULL,
    [Description_cn] nvarchar(500)  NULL,
    [Description_fr] nvarchar(500)  NULL,
    [Description_tl] nvarchar(500)  NULL,
    [Expr49] int  NULL,
    [Expr50] bit  NOT NULL
);
GO

-- Creating table 'VW_GetAdvancedSearch'
CREATE TABLE [dbo].[VW_GetAdvancedSearch] (
    [ID] uniqueidentifier  NOT NULL,
    [RegistrationID] bigint  NOT NULL,
    [MyIdentityNo] bigint  NULL,
    [StaffEmailID] nvarchar(50)  NOT NULL,
    [StaffName_en] nvarchar(302)  NULL,
    [StaffName_cn] nvarchar(302)  NULL,
    [StaffName_fr] nvarchar(302)  NULL,
    [StaffName_jp] nvarchar(302)  NULL,
    [StaffName_kr] nvarchar(302)  NULL,
    [StaffName_tl] nvarchar(302)  NULL,
    [TelephoneNo] nvarchar(25)  NULL,
    [MobileNo] nvarchar(20)  NULL,
    [Fax] nvarchar(20)  NULL,
    [TextSearch_en] nvarchar(302)  NULL,
    [TextSearch_cn] nvarchar(302)  NULL,
    [TextSearch_fr] nvarchar(302)  NULL,
    [TextSearch_jp] nvarchar(302)  NULL,
    [TextSearch_kr] nvarchar(302)  NULL,
    [TextSearch_tl] nvarchar(302)  NULL,
    [PostalCode] nvarchar(10)  NULL,
    [ApplicationID] bigint  NULL,
    [AchievementSearch] varchar(1)  NOT NULL,
    [ApplicationName] nvarchar(250)  NULL,
    [lang1ID] uniqueidentifier  NULL,
    [Lang1Name_en] nvarchar(100)  NULL,
    [Lang1Name_cn] nvarchar(100)  NULL,
    [Lang1Name_fr] nvarchar(100)  NULL,
    [Lang1Name_jp] nvarchar(100)  NULL,
    [Lang1Name_kr] nvarchar(100)  NULL,
    [Lang1Name_tl] nvarchar(100)  NULL,
    [ForeignLang1Level] int  NULL,
    [lang2ID] uniqueidentifier  NULL,
    [Lang2Name_en] nvarchar(100)  NULL,
    [Lang2Name_cn] nvarchar(100)  NULL,
    [Lang2Name_fr] nvarchar(100)  NULL,
    [Lang2Name_jp] nvarchar(100)  NULL,
    [Lang2Name_kr] nvarchar(100)  NULL,
    [Lang2Name_tl] nvarchar(100)  NULL,
    [ForeignLang2Level] int  NULL,
    [lang3ID] uniqueidentifier  NULL,
    [Lang3Name_en] nvarchar(100)  NULL,
    [Lang3Name_cn] nvarchar(100)  NULL,
    [Lang3Name_fr] nvarchar(100)  NULL,
    [Lang3Name_jp] nvarchar(100)  NULL,
    [Lang3Name_kr] nvarchar(100)  NULL,
    [Lang3Name_tl] nvarchar(100)  NULL,
    [ForeignLang3Level] int  NULL,
    [lang4ID] uniqueidentifier  NULL,
    [Lang4Name_en] nvarchar(100)  NULL,
    [Lang4Name_cn] nvarchar(100)  NULL,
    [Lang4Name_fr] nvarchar(100)  NULL,
    [Lang4Name_jp] nvarchar(100)  NULL,
    [Lang4Name_kr] nvarchar(100)  NULL,
    [Lang4Name_tl] nvarchar(100)  NULL,
    [ForeignLang4Level] int  NULL,
    [Sex] bit  NULL,
    [BirthDate] datetime  NULL,
    [Age] float  NULL,
    [NationalityID] bigint  NULL,
    [NationalityName_en] nvarchar(50)  NULL,
    [NationalityName_cn] nvarchar(50)  NULL,
    [NationalityName_fr] nvarchar(50)  NULL,
    [NationalityName_jp] nvarchar(50)  NULL,
    [NationalityName_kr] nvarchar(50)  NULL,
    [NationalityName_tl] nvarchar(50)  NULL,
    [VisaCountryID] bigint  NULL,
    [VisaCountryName_en] nvarchar(50)  NULL,
    [VisaCountryName_cn] nvarchar(50)  NULL,
    [VisaCountryName_fr] nvarchar(50)  NULL,
    [VisaCountryName_jp] nvarchar(50)  NULL,
    [VisaCountryName_kr] nvarchar(50)  NULL,
    [VisaCountryName_tl] nvarchar(50)  NULL,
    [VisaTypeID] uniqueidentifier  NULL,
    [VisaTypeName_en] nvarchar(100)  NULL,
    [VisaTypeName_cn] nvarchar(100)  NULL,
    [VisaTypeName_fr] nvarchar(100)  NULL,
    [VisaTypeName_jp] nvarchar(100)  NULL,
    [VisaTypeName_kr] nvarchar(100)  NULL,
    [VisaTypeName_tl] nvarchar(100)  NULL,
    [VisaExpire] datetime  NULL,
    [IsJapanese] bit  NULL,
    [IsIntroVideo] nvarchar(50)  NULL,
    [StaffActiveDays] int  NULL,
    [SNSAccount] varchar(1)  NOT NULL,
    [DtpExpCount] int  NOT NULL,
    [TechnicalSkillParent] varchar(1)  NULL,
    [TechnicalSkillChild] varchar(1)  NULL,
    [DevelopmentSkillParent] varchar(1)  NULL,
    [DevelopmentSkillChild] varchar(1)  NULL,
    [KnowledgeSkillParent] varchar(1)  NULL,
    [KnowledgeSkillChild] varchar(1)  NULL,
    [MedicalSkillParent] varchar(1)  NULL,
    [MedicalSkillChild] varchar(1)  NULL,
    [TRExpCount] int  NOT NULL,
    [TranslationUnitPrice] decimal(18,2)  NULL,
    [INExpCount] int  NOT NULL,
    [InterpretationUnitPricePerHourly] decimal(18,2)  NULL,
    [InterpretationUnitPricePerHalfDay] decimal(18,2)  NULL,
    [InterpretationUnitPriceOneDay] decimal(18,2)  NULL,
    [IsSuccessiveInterpretation] uniqueidentifier  NULL,
    [IsWhisperingInterpretation] uniqueidentifier  NULL,
    [IsSimultaneousInterpretation] uniqueidentifier  NULL,
    [NRExpCount] int  NULL,
    [IsSpecialistNarator] varchar(1)  NOT NULL,
    [NarrationPerformance] varchar(1)  NOT NULL
);
GO

-- Creating table 'VW_GetAdvancedSearch_OLD'
CREATE TABLE [dbo].[VW_GetAdvancedSearch_OLD] (
    [ID] uniqueidentifier  NOT NULL,
    [RegistrationID] bigint  NOT NULL,
    [StaffEmailID] nvarchar(50)  NOT NULL,
    [StaffTypeID] uniqueidentifier  NULL,
    [MyIdentityNo] bigint  NULL,
    [ApplicationID] bigint  NULL,
    [RegistrationDate] datetime  NULL,
    [Password] nvarchar(500)  NOT NULL,
    [NickName_en] nvarchar(20)  NULL,
    [NickName_jp] nvarchar(20)  NULL,
    [NickName_kr] nvarchar(20)  NULL,
    [NickName_cn] nvarchar(20)  NULL,
    [NickName_fr] nvarchar(20)  NULL,
    [NickName_tl] nvarchar(20)  NULL,
    [Surname] nvarchar(5)  NULL,
    [FirstName_en] nvarchar(100)  NOT NULL,
    [FirstName_jp] nvarchar(100)  NULL,
    [FirstName_kr] nvarchar(100)  NULL,
    [FirstName_cn] nvarchar(100)  NULL,
    [FirstName_fr] nvarchar(100)  NULL,
    [FirstName_tl] nvarchar(100)  NULL,
    [MiddleName_en] nvarchar(100)  NULL,
    [MiddleName_jp] nvarchar(100)  NULL,
    [MiddleName_kr] nvarchar(100)  NULL,
    [MiddleName_cn] nvarchar(100)  NULL,
    [MiddleName_fr] nvarchar(100)  NULL,
    [MiddleName_tl] nvarchar(100)  NULL,
    [LastName_en] nvarchar(100)  NULL,
    [LastName_jp] nvarchar(100)  NULL,
    [LastName_kr] nvarchar(100)  NULL,
    [LastName_cn] nvarchar(100)  NULL,
    [LastName_fr] nvarchar(100)  NULL,
    [LastName_tl] nvarchar(100)  NULL,
    [Sex] bit  NULL,
    [BirthDate] datetime  NULL,
    [CountryOfCitizenship] bigint  NULL,
    [PostalCode] nvarchar(10)  NULL,
    [IsJapanese] bit  NULL,
    [LivingCountryID] bigint  NULL,
    [CityOfOverseas_en] nvarchar(50)  NULL,
    [CityOfOverseas_jp] nvarchar(50)  NULL,
    [CityOfOverseas_kr] nvarchar(50)  NULL,
    [CityOfOverseas_cn] nvarchar(50)  NULL,
    [CityOfOverseas_fr] nvarchar(50)  NULL,
    [CityOfOverseas_tl] nvarchar(50)  NULL,
    [NativeLanguageID] uniqueidentifier  NOT NULL,
    [ForiegnLanguage1ID] uniqueidentifier  NOT NULL,
    [ForiegnLanguage2ID] uniqueidentifier  NULL,
    [ForiegnLanguage3ID] uniqueidentifier  NULL,
    [ForiegnLanguage4ID] uniqueidentifier  NULL,
    [ForeignLang1Level] int  NULL,
    [ForeignLang2Level] int  NULL,
    [ForeignLang3Level] int  NULL,
    [ForeignLang4Level] int  NULL,
    [TranslationExpID] uniqueidentifier  NULL,
    [OtherLanguage] nvarchar(500)  NULL,
    [OtherLangQualification] nvarchar(500)  NULL,
    [VisaTypeID] uniqueidentifier  NULL,
    [VisaDeadLine] datetime  NULL,
    [District_en] nvarchar(50)  NULL,
    [District_jp] nvarchar(50)  NULL,
    [District_kr] nvarchar(50)  NULL,
    [District_cn] nvarchar(50)  NULL,
    [District_fr] nvarchar(50)  NULL,
    [District_tl] nvarchar(50)  NULL,
    [TownName_en] nvarchar(50)  NULL,
    [TownName_jp] nvarchar(50)  NULL,
    [TownName_kr] nvarchar(50)  NULL,
    [TownName_cn] nvarchar(50)  NULL,
    [TownName_fr] nvarchar(50)  NULL,
    [TownName_tl] nvarchar(50)  NULL,
    [Address_en] nvarchar(250)  NULL,
    [Address_jp] nvarchar(250)  NULL,
    [Address_kr] nvarchar(250)  NULL,
    [Address_cn] nvarchar(250)  NULL,
    [Address_fr] nvarchar(250)  NULL,
    [Address_tl] nvarchar(250)  NULL,
    [ApartmentName_en] nvarchar(100)  NULL,
    [ApartmentName_jp] nvarchar(100)  NULL,
    [ApartmentName_kr] nvarchar(100)  NULL,
    [ApartmentName_cn] nvarchar(100)  NULL,
    [ApartmentName_fr] nvarchar(100)  NULL,
    [ApartmentName_tl] nvarchar(100)  NULL,
    [ApartmentNo] nvarchar(50)  NULL,
    [TelephoneNo] nvarchar(25)  NULL,
    [MobileNo] nvarchar(20)  NULL,
    [HomeCountryPhone] nvarchar(250)  NULL,
    [Fax] nvarchar(20)  NULL,
    [HomeCountryAddress_en] nvarchar(250)  NULL,
    [HomeCountryAddress_jp] nvarchar(250)  NULL,
    [HomeCountryAddress_kr] nvarchar(250)  NULL,
    [HomeCountryAddress_cn] nvarchar(250)  NULL,
    [HomeCountryAddress_fr] nvarchar(250)  NULL,
    [HomeCountryAddress_tl] nvarchar(250)  NULL,
    [HasSocialExperienceJapan] bit  NULL,
    [HasSocialExperienceOtherCountry] bit  NULL,
    [IntroductionVideoURL] nvarchar(50)  NULL,
    [NationalityID] nvarchar(50)  NULL,
    [Street_en] nvarchar(250)  NULL,
    [Street_jp] nvarchar(250)  NULL,
    [Street_kr] nvarchar(250)  NULL,
    [Street_cn] nvarchar(250)  NULL,
    [Street_fr] nvarchar(250)  NULL,
    [Street_tl] nvarchar(250)  NULL,
    [EducationalDegree1] uniqueidentifier  NULL,
    [EducationalDegree2] uniqueidentifier  NULL,
    [EducationalDegree3] uniqueidentifier  NULL,
    [MainCareer_en] nvarchar(300)  NULL,
    [MainCareer_jp] nvarchar(300)  NULL,
    [MainCareer_kr] nvarchar(300)  NULL,
    [MainCareer_cn] nvarchar(300)  NULL,
    [MainCareer_fr] nvarchar(300)  NULL,
    [MainCareer_tl] nvarchar(300)  NULL,
    [SelfPR_en] nvarchar(300)  NULL,
    [SelfPR_jp] nvarchar(300)  NULL,
    [SelfPR_kr] nvarchar(300)  NULL,
    [SelfPR_cn] nvarchar(300)  NULL,
    [SelfPR_fr] nvarchar(300)  NULL,
    [SelfPR_tl] nvarchar(300)  NULL,
    [BankName] nvarchar(250)  NULL,
    [BankBranchName] nvarchar(250)  NULL,
    [BankAccountNumber] nvarchar(250)  NULL,
    [BankAccountName] nvarchar(250)  NULL,
    [BankAccountType] nvarchar(250)  NULL,
    [IntroducedBy] nvarchar(50)  NULL,
    [LastLoginDate] datetime  NULL,
    [CreatedDate] datetime  NULL,
    [CreatedBy] bigint  NULL,
    [UpdatedDate] datetime  NULL,
    [UpdatedBy] bigint  NULL,
    [Image] nvarchar(max)  NULL,
    [Expr1] uniqueidentifier  NULL,
    [Code] varchar(5)  NULL,
    [Name_en] nvarchar(100)  NULL,
    [Name_jp] nvarchar(100)  NULL,
    [Name_kr] nvarchar(100)  NULL,
    [Name_cn] nvarchar(100)  NULL,
    [Name_fr] nvarchar(100)  NULL,
    [Name_tl] nvarchar(100)  NULL,
    [IsActive] bit  NULL,
    [IsDeleted] bit  NULL,
    [Expr2] bigint  NULL,
    [Expr3] datetime  NULL,
    [Expr4] bigint  NULL,
    [Expr5] datetime  NULL,
    [Expr6] uniqueidentifier  NULL,
    [Expr7] varchar(5)  NULL,
    [Expr8] nvarchar(100)  NULL,
    [Expr9] nvarchar(100)  NULL,
    [Expr10] nvarchar(100)  NULL,
    [Expr11] nvarchar(100)  NULL,
    [Expr12] nvarchar(100)  NULL,
    [Expr13] nvarchar(100)  NULL,
    [Expr14] bit  NULL,
    [Expr15] bit  NULL,
    [Expr16] bigint  NULL,
    [Expr17] datetime  NULL,
    [Expr18] bigint  NULL,
    [Expr19] datetime  NULL,
    [Expr20] uniqueidentifier  NULL,
    [Expr21] varchar(5)  NULL,
    [Expr22] nvarchar(100)  NULL,
    [Expr23] nvarchar(100)  NULL,
    [Expr24] nvarchar(100)  NULL,
    [Expr25] nvarchar(100)  NULL,
    [Expr26] nvarchar(100)  NULL,
    [Expr27] nvarchar(100)  NULL,
    [Expr28] bit  NULL,
    [Expr29] bit  NULL,
    [Expr30] bigint  NULL,
    [Expr31] datetime  NULL,
    [Expr32] bigint  NULL,
    [Expr33] datetime  NULL,
    [Expr34] uniqueidentifier  NULL,
    [Expr35] varchar(5)  NULL,
    [Expr36] nvarchar(100)  NULL,
    [Expr37] nvarchar(100)  NULL,
    [Expr38] nvarchar(100)  NULL,
    [Expr39] nvarchar(100)  NULL,
    [Expr40] nvarchar(100)  NULL,
    [Expr41] nvarchar(100)  NULL,
    [Expr42] bit  NULL,
    [Expr43] bit  NULL,
    [Expr44] bigint  NULL,
    [Expr45] datetime  NULL,
    [Expr46] bigint  NULL,
    [Expr47] datetime  NULL,
    [Expr48] bigint  NULL,
    [Expr49] nvarchar(5)  NULL,
    [CurrencyID] bigint  NULL,
    [Expr50] nvarchar(50)  NULL,
    [Expr51] nvarchar(50)  NULL,
    [Expr52] nvarchar(50)  NULL,
    [Expr53] nvarchar(50)  NULL,
    [Expr54] nvarchar(50)  NULL,
    [Expr55] nvarchar(50)  NULL,
    [IsTrading] bit  NULL,
    [SortBy] int  NULL,
    [Expr56] datetime  NULL,
    [Expr57] datetime  NULL,
    [Expr58] bigint  NULL,
    [Expr59] bit  NULL,
    [Expr60] bit  NULL,
    [Expr61] bigint  NULL,
    [Expr62] bigint  NULL,
    [Expr63] nvarchar(5)  NULL,
    [Expr64] bigint  NULL,
    [Expr65] nvarchar(50)  NULL,
    [Expr66] nvarchar(50)  NULL,
    [Expr67] nvarchar(50)  NULL,
    [Expr68] nvarchar(50)  NULL,
    [Expr69] nvarchar(50)  NULL,
    [Expr70] nvarchar(50)  NULL,
    [Expr71] bit  NULL,
    [Expr72] int  NULL,
    [Expr73] datetime  NULL,
    [Expr74] datetime  NULL,
    [Expr75] bigint  NULL,
    [Expr76] bit  NULL,
    [Expr77] bit  NULL,
    [Expr78] bigint  NULL,
    [Expr79] uniqueidentifier  NULL,
    [Expr80] nvarchar(100)  NULL,
    [Expr81] nvarchar(100)  NULL,
    [Expr82] nvarchar(100)  NULL,
    [Expr83] nvarchar(100)  NULL,
    [Expr84] nvarchar(100)  NULL,
    [Expr85] nvarchar(100)  NULL,
    [Description_en] nvarchar(500)  NULL,
    [Description_jp] nvarchar(500)  NULL,
    [Description_kr] nvarchar(500)  NULL,
    [Description_cn] nvarchar(500)  NULL,
    [Description_fr] nvarchar(500)  NULL,
    [Description_tl] nvarchar(500)  NULL,
    [Expr86] int  NULL,
    [Expr87] bit  NULL,
    [Expr88] bit  NULL,
    [Expr89] datetime  NULL,
    [Expr90] bigint  NULL,
    [Expr91] datetime  NULL,
    [Expr92] bigint  NULL,
    [Expr93] bigint  NULL,
    [Name] nvarchar(250)  NULL,
    [Expr94] nvarchar(5)  NULL,
    [Description] nvarchar(500)  NULL,
    [Logo] nvarchar(max)  NULL,
    [Expr95] bit  NULL,
    [Expr96] bit  NULL,
    [Expr97] datetime  NULL,
    [Expr98] bigint  NULL,
    [Expr99] datetime  NULL,
    [Expr100] bigint  NULL,
    [StaffID] uniqueidentifier  NULL,
    [Expr101] int  NULL,
    [Expr102] varchar(5)  NULL,
    [Expr103] nvarchar(150)  NULL,
    [Expr104] nvarchar(150)  NULL,
    [Expr105] nvarchar(150)  NULL,
    [Expr106] nvarchar(150)  NULL,
    [Expr107] nvarchar(150)  NULL,
    [Expr108] nvarchar(150)  NULL,
    [Expr109] bit  NULL,
    [Expr110] bit  NULL,
    [Expr111] int  NULL,
    [Expr112] bigint  NULL,
    [Expr113] datetime  NULL,
    [Expr114] bigint  NULL,
    [Expr115] datetime  NULL,
    [EstimationID] uniqueidentifier  NULL,
    [SourceLanguageID] uniqueidentifier  NULL,
    [TargetLanguageID] uniqueidentifier  NULL,
    [ServiceType] uniqueidentifier  NULL,
    [UnitPrice1] decimal(18,2)  NULL,
    [PageCount1] int  NULL,
    [Discount1] decimal(18,2)  NULL,
    [UnitPrice2] decimal(18,2)  NULL,
    [PageCount2] int  NULL,
    [Discount2] decimal(18,2)  NULL,
    [UnitPrice3] decimal(18,2)  NULL,
    [PageCount3] int  NULL,
    [Discount3] decimal(18,2)  NULL,
    [UnitPrice4] decimal(18,2)  NULL,
    [PageCount4] int  NULL,
    [Discount4] decimal(18,2)  NULL,
    [UnitPrice5] decimal(18,2)  NULL,
    [PageCount5] int  NULL,
    [Discount5] decimal(18,2)  NULL,
    [BasicTime] int  NULL,
    [AdditionalBasicAmount] decimal(18,2)  NULL,
    [ExtraTime] int  NULL,
    [LastnightTime] int  NULL,
    [MovingTime] int  NULL,
    [BasicAmount] decimal(18,2)  NULL,
    [ExtensionAmount] decimal(18,2)  NULL,
    [ExtraAmount] decimal(18,2)  NULL,
    [LateAtNightAmount] decimal(18,2)  NULL,
    [MovingAmount] decimal(18,2)  NULL,
    [NumberOfDays] int  NULL,
    [NumberOfPeople] int  NULL,
    [OtherAmount] decimal(18,2)  NULL,
    [CertificateAmount] decimal(18,2)  NULL,
    [ExcludeTax] bit  NULL,
    [Contents] nvarchar(max)  NULL,
    [LengthMinute] decimal(18,2)  NULL,
    [WithTranslation] bit  NULL,
    [UnitPriceTime] decimal(18,2)  NULL,
    [UnitPriceSubTotal] decimal(18,2)  NULL,
    [DiscountRate] decimal(18,2)  NULL,
    [DiscountedPrice] decimal(18,2)  NULL,
    [EstimationPrice] decimal(18,2)  NULL,
    [StudioPrice] decimal(18,2)  NULL,
    [StudioPriceTime] decimal(18,2)  NULL,
    [EditPrice] decimal(18,2)  NULL,
    [EditPriceTime] decimal(18,2)  NULL,
    [StudioPriceSubTotal] decimal(18,2)  NULL,
    [StudioPriceDiscountRate] decimal(18,2)  NULL,
    [StudioDiscountedPrice] decimal(18,2)  NULL,
    [TotalAfterDiscount] decimal(18,2)  NULL,
    [Total] decimal(18,2)  NULL,
    [PaymentRate] decimal(18,2)  NULL,
    [ExpectedPayment] decimal(18,2)  NULL,
    [ed_ServiceType] uniqueidentifier  NULL,
    [ed_Code] varchar(5)  NULL,
    [est_Name_cn] nvarchar(150)  NULL,
    [est_Name_en] nvarchar(150)  NULL,
    [est_Name_fr] nvarchar(150)  NULL,
    [est_Name_jp] nvarchar(150)  NULL,
    [est_Name_kr] nvarchar(150)  NULL,
    [est_Name_tl] nvarchar(150)  NULL,
    [Type] int  NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id] in table 'AccessLogs'
ALTER TABLE [dbo].[AccessLogs]
ADD CONSTRAINT [PK_AccessLogs]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'AdditionalOperationPermissions'
ALTER TABLE [dbo].[AdditionalOperationPermissions]
ADD CONSTRAINT [PK_AdditionalOperationPermissions]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'AdditionalScreenPermissions'
ALTER TABLE [dbo].[AdditionalScreenPermissions]
ADD CONSTRAINT [PK_AdditionalScreenPermissions]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [ID] in table 'AdvertizementSettings'
ALTER TABLE [dbo].[AdvertizementSettings]
ADD CONSTRAINT [PK_AdvertizementSettings]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [Id] in table 'Applications'
ALTER TABLE [dbo].[Applications]
ADD CONSTRAINT [PK_Applications]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [ID] in table 'Companies'
ALTER TABLE [dbo].[Companies]
ADD CONSTRAINT [PK_Companies]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'Company_AgencyPrice'
ALTER TABLE [dbo].[Company_AgencyPrice]
ADD CONSTRAINT [PK_Company_AgencyPrice]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'Company_Department'
ALTER TABLE [dbo].[Company_Department]
ADD CONSTRAINT [PK_Company_Department]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'Company_TransproPartner'
ALTER TABLE [dbo].[Company_TransproPartner]
ADD CONSTRAINT [PK_Company_TransproPartner]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'CompanyAgentBusinesses'
ALTER TABLE [dbo].[CompanyAgentBusinesses]
ADD CONSTRAINT [PK_CompanyAgentBusinesses]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'CompanyAgentCharacterstics'
ALTER TABLE [dbo].[CompanyAgentCharacterstics]
ADD CONSTRAINT [PK_CompanyAgentCharacterstics]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'CompanyAgentDesignations'
ALTER TABLE [dbo].[CompanyAgentDesignations]
ADD CONSTRAINT [PK_CompanyAgentDesignations]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'CompanyBusinessHistories'
ALTER TABLE [dbo].[CompanyBusinessHistories]
ADD CONSTRAINT [PK_CompanyBusinessHistories]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'CompanyBusinessInformations'
ALTER TABLE [dbo].[CompanyBusinessInformations]
ADD CONSTRAINT [PK_CompanyBusinessInformations]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'CompanyCooperativeInfoes'
ALTER TABLE [dbo].[CompanyCooperativeInfoes]
ADD CONSTRAINT [PK_CompanyCooperativeInfoes]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'CompanyIndustryClassifications'
ALTER TABLE [dbo].[CompanyIndustryClassifications]
ADD CONSTRAINT [PK_CompanyIndustryClassifications]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'CompanyRFMAnalysis'
ALTER TABLE [dbo].[CompanyRFMAnalysis]
ADD CONSTRAINT [PK_CompanyRFMAnalysis]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'CompanyShares'
ALTER TABLE [dbo].[CompanyShares]
ADD CONSTRAINT [PK_CompanyShares]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'CompanyTradingCategories'
ALTER TABLE [dbo].[CompanyTradingCategories]
ADD CONSTRAINT [PK_CompanyTradingCategories]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'ContactUs'
ALTER TABLE [dbo].[ContactUs]
ADD CONSTRAINT [PK_ContactUs]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'EmailDeliverySettings'
ALTER TABLE [dbo].[EmailDeliverySettings]
ADD CONSTRAINT [PK_EmailDeliverySettings]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'EmailHistories'
ALTER TABLE [dbo].[EmailHistories]
ADD CONSTRAINT [PK_EmailHistories]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'EmailTemplates'
ALTER TABLE [dbo].[EmailTemplates]
ADD CONSTRAINT [PK_EmailTemplates]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'Employees'
ALTER TABLE [dbo].[Employees]
ADD CONSTRAINT [PK_Employees]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'ErrorLogs'
ALTER TABLE [dbo].[ErrorLogs]
ADD CONSTRAINT [PK_ErrorLogs]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'ErrorReportWebs'
ALTER TABLE [dbo].[ErrorReportWebs]
ADD CONSTRAINT [PK_ErrorReportWebs]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'Estimations'
ALTER TABLE [dbo].[Estimations]
ADD CONSTRAINT [PK_Estimations]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'EstimationActions'
ALTER TABLE [dbo].[EstimationActions]
ADD CONSTRAINT [PK_EstimationActions]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'EstimationActionTypes'
ALTER TABLE [dbo].[EstimationActionTypes]
ADD CONSTRAINT [PK_EstimationActionTypes]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'EstimationApprovals'
ALTER TABLE [dbo].[EstimationApprovals]
ADD CONSTRAINT [PK_EstimationApprovals]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'EstimationCompetencies'
ALTER TABLE [dbo].[EstimationCompetencies]
ADD CONSTRAINT [PK_EstimationCompetencies]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'EstimationDeliveryFileTypes'
ALTER TABLE [dbo].[EstimationDeliveryFileTypes]
ADD CONSTRAINT [PK_EstimationDeliveryFileTypes]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'EstimationDetails'
ALTER TABLE [dbo].[EstimationDetails]
ADD CONSTRAINT [PK_EstimationDetails]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'EstimationFiles'
ALTER TABLE [dbo].[EstimationFiles]
ADD CONSTRAINT [PK_EstimationFiles]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'EstimationNarrationExpenses'
ALTER TABLE [dbo].[EstimationNarrationExpenses]
ADD CONSTRAINT [PK_EstimationNarrationExpenses]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'EstimationProjects'
ALTER TABLE [dbo].[EstimationProjects]
ADD CONSTRAINT [PK_EstimationProjects]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'EstimationRequestHistories'
ALTER TABLE [dbo].[EstimationRequestHistories]
ADD CONSTRAINT [PK_EstimationRequestHistories]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'EstimationUserAccesses'
ALTER TABLE [dbo].[EstimationUserAccesses]
ADD CONSTRAINT [PK_EstimationUserAccesses]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'EstimationWorkContents'
ALTER TABLE [dbo].[EstimationWorkContents]
ADD CONSTRAINT [PK_EstimationWorkContents]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'HiworkLanguagePrices'
ALTER TABLE [dbo].[HiworkLanguagePrices]
ADD CONSTRAINT [PK_HiworkLanguagePrices]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'Master_Address'
ALTER TABLE [dbo].[Master_Address]
ADD CONSTRAINT [PK_Master_Address]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'Master_AgentBusiness'
ALTER TABLE [dbo].[Master_AgentBusiness]
ADD CONSTRAINT [PK_Master_AgentBusiness]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'Master_AgentCharacterstics'
ALTER TABLE [dbo].[Master_AgentCharacterstics]
ADD CONSTRAINT [PK_Master_AgentCharacterstics]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'Master_AgentFreeDesignation'
ALTER TABLE [dbo].[Master_AgentFreeDesignation]
ADD CONSTRAINT [PK_Master_AgentFreeDesignation]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'Master_Bank'
ALTER TABLE [dbo].[Master_Bank]
ADD CONSTRAINT [PK_Master_Bank]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'Master_BankAccount'
ALTER TABLE [dbo].[Master_BankAccount]
ADD CONSTRAINT [PK_Master_BankAccount]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'Master_BankAccountType'
ALTER TABLE [dbo].[Master_BankAccountType]
ADD CONSTRAINT [PK_Master_BankAccountType]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'Master_BankBranch'
ALTER TABLE [dbo].[Master_BankBranch]
ADD CONSTRAINT [PK_Master_BankBranch]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'Master_BranchOffice'
ALTER TABLE [dbo].[Master_BranchOffice]
ADD CONSTRAINT [PK_Master_BranchOffice]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'Master_CompanyBusinessService'
ALTER TABLE [dbo].[Master_CompanyBusinessService]
ADD CONSTRAINT [PK_Master_CompanyBusinessService]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'Master_CompanyBusinessSpeciality'
ALTER TABLE [dbo].[Master_CompanyBusinessSpeciality]
ADD CONSTRAINT [PK_Master_CompanyBusinessSpeciality]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'Master_CompanyIndustryClassification'
ALTER TABLE [dbo].[Master_CompanyIndustryClassification]
ADD CONSTRAINT [PK_Master_CompanyIndustryClassification]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'Master_CompanyIndustryClassificationItem'
ALTER TABLE [dbo].[Master_CompanyIndustryClassificationItem]
ADD CONSTRAINT [PK_Master_CompanyIndustryClassificationItem]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'Master_CompanyTradingCategory'
ALTER TABLE [dbo].[Master_CompanyTradingCategory]
ADD CONSTRAINT [PK_Master_CompanyTradingCategory]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'Master_CompanyTradingCategoryItem'
ALTER TABLE [dbo].[Master_CompanyTradingCategoryItem]
ADD CONSTRAINT [PK_Master_CompanyTradingCategoryItem]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'Master_CompanyTradingDivision'
ALTER TABLE [dbo].[Master_CompanyTradingDivision]
ADD CONSTRAINT [PK_Master_CompanyTradingDivision]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'Master_Country'
ALTER TABLE [dbo].[Master_Country]
ADD CONSTRAINT [PK_Master_Country]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'Master_Culture'
ALTER TABLE [dbo].[Master_Culture]
ADD CONSTRAINT [PK_Master_Culture]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'Master_Currency'
ALTER TABLE [dbo].[Master_Currency]
ADD CONSTRAINT [PK_Master_Currency]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'Master_CurrencyRate'
ALTER TABLE [dbo].[Master_CurrencyRate]
ADD CONSTRAINT [PK_Master_CurrencyRate]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'Master_DeliveryMethod'
ALTER TABLE [dbo].[Master_DeliveryMethod]
ADD CONSTRAINT [PK_Master_DeliveryMethod]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'Master_Department'
ALTER TABLE [dbo].[Master_Department]
ADD CONSTRAINT [PK_Master_Department]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'Master_Designation'
ALTER TABLE [dbo].[Master_Designation]
ADD CONSTRAINT [PK_Master_Designation]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'Master_Division'
ALTER TABLE [dbo].[Master_Division]
ADD CONSTRAINT [PK_Master_Division]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'Master_EmailCategorySettings'
ALTER TABLE [dbo].[Master_EmailCategorySettings]
ADD CONSTRAINT [PK_Master_EmailCategorySettings]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'Master_EmailGroupSettings'
ALTER TABLE [dbo].[Master_EmailGroupSettings]
ADD CONSTRAINT [PK_Master_EmailGroupSettings]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'Master_EstimationRoutes'
ALTER TABLE [dbo].[Master_EstimationRoutes]
ADD CONSTRAINT [PK_Master_EstimationRoutes]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'Master_EstimationServiceType'
ALTER TABLE [dbo].[Master_EstimationServiceType]
ADD CONSTRAINT [PK_Master_EstimationServiceType]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'Master_EstimationSpecializedField'
ALTER TABLE [dbo].[Master_EstimationSpecializedField]
ADD CONSTRAINT [PK_Master_EstimationSpecializedField]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'Master_EstimationStatus'
ALTER TABLE [dbo].[Master_EstimationStatus]
ADD CONSTRAINT [PK_Master_EstimationStatus]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'Master_EstimationSubSpecializedField'
ALTER TABLE [dbo].[Master_EstimationSubSpecializedField]
ADD CONSTRAINT [PK_Master_EstimationSubSpecializedField]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'Master_EstimationType'
ALTER TABLE [dbo].[Master_EstimationType]
ADD CONSTRAINT [PK_Master_EstimationType]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'Master_Language'
ALTER TABLE [dbo].[Master_Language]
ADD CONSTRAINT [PK_Master_Language]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'Master_Market'
ALTER TABLE [dbo].[Master_Market]
ADD CONSTRAINT [PK_Master_Market]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'Master_PartnerServiceType'
ALTER TABLE [dbo].[Master_PartnerServiceType]
ADD CONSTRAINT [PK_Master_PartnerServiceType]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'Master_PaymentType'
ALTER TABLE [dbo].[Master_PaymentType]
ADD CONSTRAINT [PK_Master_PaymentType]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'Master_Penalty'
ALTER TABLE [dbo].[Master_Penalty]
ADD CONSTRAINT [PK_Master_Penalty]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'Master_StaffBusinessCategory'
ALTER TABLE [dbo].[Master_StaffBusinessCategory]
ADD CONSTRAINT [PK_Master_StaffBusinessCategory]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'Master_StaffBusinessCategoryDetails'
ALTER TABLE [dbo].[Master_StaffBusinessCategoryDetails]
ADD CONSTRAINT [PK_Master_StaffBusinessCategoryDetails]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'Master_StaffCategory'
ALTER TABLE [dbo].[Master_StaffCategory]
ADD CONSTRAINT [PK_Master_StaffCategory]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'Master_StaffCurrentState'
ALTER TABLE [dbo].[Master_StaffCurrentState]
ADD CONSTRAINT [PK_Master_StaffCurrentState]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'Master_StaffDevelopmentSkill'
ALTER TABLE [dbo].[Master_StaffDevelopmentSkill]
ADD CONSTRAINT [PK_Master_StaffDevelopmentSkill]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'Master_StaffDevelopmentSkillItem'
ALTER TABLE [dbo].[Master_StaffDevelopmentSkillItem]
ADD CONSTRAINT [PK_Master_StaffDevelopmentSkillItem]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'Master_StaffEducationalDegree'
ALTER TABLE [dbo].[Master_StaffEducationalDegree]
ADD CONSTRAINT [PK_Master_StaffEducationalDegree]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'Master_StaffEmploymentType'
ALTER TABLE [dbo].[Master_StaffEmploymentType]
ADD CONSTRAINT [PK_Master_StaffEmploymentType]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'Master_StaffInterpretationFields'
ALTER TABLE [dbo].[Master_StaffInterpretationFields]
ADD CONSTRAINT [PK_Master_StaffInterpretationFields]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'Master_StaffJobCategory'
ALTER TABLE [dbo].[Master_StaffJobCategory]
ADD CONSTRAINT [PK_Master_StaffJobCategory]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'Master_StaffJobCategoryDetails'
ALTER TABLE [dbo].[Master_StaffJobCategoryDetails]
ADD CONSTRAINT [PK_Master_StaffJobCategoryDetails]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'Master_StaffKnowledgeField'
ALTER TABLE [dbo].[Master_StaffKnowledgeField]
ADD CONSTRAINT [PK_Master_StaffKnowledgeField]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'Master_StaffKnowledgeFieldItem'
ALTER TABLE [dbo].[Master_StaffKnowledgeFieldItem]
ADD CONSTRAINT [PK_Master_StaffKnowledgeFieldItem]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'Master_StaffLanguageQualifications'
ALTER TABLE [dbo].[Master_StaffLanguageQualifications]
ADD CONSTRAINT [PK_Master_StaffLanguageQualifications]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'Master_StaffMajorSubject'
ALTER TABLE [dbo].[Master_StaffMajorSubject]
ADD CONSTRAINT [PK_Master_StaffMajorSubject]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'Master_StaffMajorSubjectDetails'
ALTER TABLE [dbo].[Master_StaffMajorSubjectDetails]
ADD CONSTRAINT [PK_Master_StaffMajorSubjectDetails]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'Master_StaffMedicalField'
ALTER TABLE [dbo].[Master_StaffMedicalField]
ADD CONSTRAINT [PK_Master_StaffMedicalField]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'Master_StaffNarrationType'
ALTER TABLE [dbo].[Master_StaffNarrationType]
ADD CONSTRAINT [PK_Master_StaffNarrationType]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'Master_StaffPatentField'
ALTER TABLE [dbo].[Master_StaffPatentField]
ADD CONSTRAINT [PK_Master_StaffPatentField]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'Master_StaffProfession'
ALTER TABLE [dbo].[Master_StaffProfession]
ADD CONSTRAINT [PK_Master_StaffProfession]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'Master_StaffResearchField'
ALTER TABLE [dbo].[Master_StaffResearchField]
ADD CONSTRAINT [PK_Master_StaffResearchField]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'Master_StaffSoftwareSkill'
ALTER TABLE [dbo].[Master_StaffSoftwareSkill]
ADD CONSTRAINT [PK_Master_StaffSoftwareSkill]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'Master_StaffSpecialField'
ALTER TABLE [dbo].[Master_StaffSpecialField]
ADD CONSTRAINT [PK_Master_StaffSpecialField]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'Master_StaffTechnicalSkillCategory'
ALTER TABLE [dbo].[Master_StaffTechnicalSkillCategory]
ADD CONSTRAINT [PK_Master_StaffTechnicalSkillCategory]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'Master_StaffTechnicalSkillItems'
ALTER TABLE [dbo].[Master_StaffTechnicalSkillItems]
ADD CONSTRAINT [PK_Master_StaffTechnicalSkillItems]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'Master_StaffTranslationFields'
ALTER TABLE [dbo].[Master_StaffTranslationFields]
ADD CONSTRAINT [PK_Master_StaffTranslationFields]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'Master_StaffType'
ALTER TABLE [dbo].[Master_StaffType]
ADD CONSTRAINT [PK_Master_StaffType]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'Master_StaffVisaType'
ALTER TABLE [dbo].[Master_StaffVisaType]
ADD CONSTRAINT [PK_Master_StaffVisaType]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'Master_Team'
ALTER TABLE [dbo].[Master_Team]
ADD CONSTRAINT [PK_Master_Team]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'Master_TeamToMarket'
ALTER TABLE [dbo].[Master_TeamToMarket]
ADD CONSTRAINT [PK_Master_TeamToMarket]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'Master_Unit'
ALTER TABLE [dbo].[Master_Unit]
ADD CONSTRAINT [PK_Master_Unit]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'Master_UnitPriceSetting'
ALTER TABLE [dbo].[Master_UnitPriceSetting]
ADD CONSTRAINT [PK_Master_UnitPriceSetting]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'Master_WebOrderStatus'
ALTER TABLE [dbo].[Master_WebOrderStatus]
ADD CONSTRAINT [PK_Master_WebOrderStatus]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'Master_WorkingStatus'
ALTER TABLE [dbo].[Master_WorkingStatus]
ADD CONSTRAINT [PK_Master_WorkingStatus]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [Id] in table 'Menus'
ALTER TABLE [dbo].[Menus]
ADD CONSTRAINT [PK_Menus]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [ID] in table 'Messages'
ALTER TABLE [dbo].[Messages]
ADD CONSTRAINT [PK_Messages]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [Id] in table 'Modules'
ALTER TABLE [dbo].[Modules]
ADD CONSTRAINT [PK_Modules]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [ID] in table 'Notices'
ALTER TABLE [dbo].[Notices]
ADD CONSTRAINT [PK_Notices]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'Orders'
ALTER TABLE [dbo].[Orders]
ADD CONSTRAINT [PK_Orders]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'Order_DeliveryDocuments'
ALTER TABLE [dbo].[Order_DeliveryDocuments]
ADD CONSTRAINT [PK_Order_DeliveryDocuments]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'Order_StaffAllowance'
ALTER TABLE [dbo].[Order_StaffAllowance]
ADD CONSTRAINT [PK_Order_StaffAllowance]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'Order_Web'
ALTER TABLE [dbo].[Order_Web]
ADD CONSTRAINT [PK_Order_Web]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'Order_WebDocuments'
ALTER TABLE [dbo].[Order_WebDocuments]
ADD CONSTRAINT [PK_Order_WebDocuments]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'OrderAppointedToStaff_Web'
ALTER TABLE [dbo].[OrderAppointedToStaff_Web]
ADD CONSTRAINT [PK_OrderAppointedToStaff_Web]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'OrderDetails'
ALTER TABLE [dbo].[OrderDetails]
ADD CONSTRAINT [PK_OrderDetails]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'OrderEvaluationByCustomers'
ALTER TABLE [dbo].[OrderEvaluationByCustomers]
ADD CONSTRAINT [PK_OrderEvaluationByCustomers]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'OrderRequestedToStaff_Web'
ALTER TABLE [dbo].[OrderRequestedToStaff_Web]
ADD CONSTRAINT [PK_OrderRequestedToStaff_Web]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'ProfitShareSettings'
ALTER TABLE [dbo].[ProfitShareSettings]
ADD CONSTRAINT [PK_ProfitShareSettings]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [Id] in table 'Roles'
ALTER TABLE [dbo].[Roles]
ADD CONSTRAINT [PK_Roles]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'RoleAudits'
ALTER TABLE [dbo].[RoleAudits]
ADD CONSTRAINT [PK_RoleAudits]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [RoleId], [ScreenOperationId] in table 'RoleWiseOperationPermissions'
ALTER TABLE [dbo].[RoleWiseOperationPermissions]
ADD CONSTRAINT [PK_RoleWiseOperationPermissions]
    PRIMARY KEY CLUSTERED ([RoleId], [ScreenOperationId] ASC);
GO

-- Creating primary key on [RoleId], [ScreenId] in table 'RoleWiseScreenPermissions'
ALTER TABLE [dbo].[RoleWiseScreenPermissions]
ADD CONSTRAINT [PK_RoleWiseScreenPermissions]
    PRIMARY KEY CLUSTERED ([RoleId], [ScreenId] ASC);
GO

-- Creating primary key on [Id] in table 'Screens'
ALTER TABLE [dbo].[Screens]
ADD CONSTRAINT [PK_Screens]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'ScreenOperations'
ALTER TABLE [dbo].[ScreenOperations]
ADD CONSTRAINT [PK_ScreenOperations]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [ID] in table 'Staffs'
ALTER TABLE [dbo].[Staffs]
ADD CONSTRAINT [PK_Staffs]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'Staff_BankAccountInfo'
ALTER TABLE [dbo].[Staff_BankAccountInfo]
ADD CONSTRAINT [PK_Staff_BankAccountInfo]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'Staff_CurrentStates'
ALTER TABLE [dbo].[Staff_CurrentStates]
ADD CONSTRAINT [PK_Staff_CurrentStates]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'Staff_DevelopmentSkill'
ALTER TABLE [dbo].[Staff_DevelopmentSkill]
ADD CONSTRAINT [PK_Staff_DevelopmentSkill]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'Staff_EditingproInformation'
ALTER TABLE [dbo].[Staff_EditingproInformation]
ADD CONSTRAINT [PK_Staff_EditingproInformation]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'Staff_EducationalHistory'
ALTER TABLE [dbo].[Staff_EducationalHistory]
ADD CONSTRAINT [PK_Staff_EducationalHistory]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'Staff_InterpretationSpecialFields'
ALTER TABLE [dbo].[Staff_InterpretationSpecialFields]
ADD CONSTRAINT [PK_Staff_InterpretationSpecialFields]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'Staff_JobCategories'
ALTER TABLE [dbo].[Staff_JobCategories]
ADD CONSTRAINT [PK_Staff_JobCategories]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'Staff_JobHistory'
ALTER TABLE [dbo].[Staff_JobHistory]
ADD CONSTRAINT [PK_Staff_JobHistory]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'Staff_KnowledgeFields'
ALTER TABLE [dbo].[Staff_KnowledgeFields]
ADD CONSTRAINT [PK_Staff_KnowledgeFields]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'Staff_ManagementExperience'
ALTER TABLE [dbo].[Staff_ManagementExperience]
ADD CONSTRAINT [PK_Staff_ManagementExperience]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'Staff_NarrationInformation'
ALTER TABLE [dbo].[Staff_NarrationInformation]
ADD CONSTRAINT [PK_Staff_NarrationInformation]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'Staff_NarrationVoiceFiles'
ALTER TABLE [dbo].[Staff_NarrationVoiceFiles]
ADD CONSTRAINT [PK_Staff_NarrationVoiceFiles]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'Staff_ProfessionalSpeciality'
ALTER TABLE [dbo].[Staff_ProfessionalSpeciality]
ADD CONSTRAINT [PK_Staff_ProfessionalSpeciality]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'Staff_ServiceTypes'
ALTER TABLE [dbo].[Staff_ServiceTypes]
ADD CONSTRAINT [PK_Staff_ServiceTypes]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'Staff_SkillCertificate'
ALTER TABLE [dbo].[Staff_SkillCertificate]
ADD CONSTRAINT [PK_Staff_SkillCertificate]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'Staff_SoftwareSkill'
ALTER TABLE [dbo].[Staff_SoftwareSkill]
ADD CONSTRAINT [PK_Staff_SoftwareSkill]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'Staff_TechnicalCertificate'
ALTER TABLE [dbo].[Staff_TechnicalCertificate]
ADD CONSTRAINT [PK_Staff_TechnicalCertificate]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'Staff_TranslateInterpretExperience'
ALTER TABLE [dbo].[Staff_TranslateInterpretExperience]
ADD CONSTRAINT [PK_Staff_TranslateInterpretExperience]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'Staff_TranslationSpecialFields'
ALTER TABLE [dbo].[Staff_TranslationSpecialFields]
ADD CONSTRAINT [PK_Staff_TranslationSpecialFields]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'Staff_TransproInformation'
ALTER TABLE [dbo].[Staff_TransproInformation]
ADD CONSTRAINT [PK_Staff_TransproInformation]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [diagram_id] in table 'sysdiagrams'
ALTER TABLE [dbo].[sysdiagrams]
ADD CONSTRAINT [PK_sysdiagrams]
    PRIMARY KEY CLUSTERED ([diagram_id] ASC);
GO

-- Creating primary key on [ID] in table 'TranslationCertificateSettings'
ALTER TABLE [dbo].[TranslationCertificateSettings]
ADD CONSTRAINT [PK_TranslationCertificateSettings]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'TranslationLevels'
ALTER TABLE [dbo].[TranslationLevels]
ADD CONSTRAINT [PK_TranslationLevels]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'TranslatorBlackLists'
ALTER TABLE [dbo].[TranslatorBlackLists]
ADD CONSTRAINT [PK_TranslatorBlackLists]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'TranslatorFavouriteLists'
ALTER TABLE [dbo].[TranslatorFavouriteLists]
ADD CONSTRAINT [PK_TranslatorFavouriteLists]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'TransproDeliveryPlanSettings'
ALTER TABLE [dbo].[TransproDeliveryPlanSettings]
ADD CONSTRAINT [PK_TransproDeliveryPlanSettings]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'TransproLanguagePriceCategories'
ALTER TABLE [dbo].[TransproLanguagePriceCategories]
ADD CONSTRAINT [PK_TransproLanguagePriceCategories]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [Id] in table 'UserInformations'
ALTER TABLE [dbo].[UserInformations]
ADD CONSTRAINT [PK_UserInformations]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [UserId], [RoleId] in table 'UserInRoles'
ALTER TABLE [dbo].[UserInRoles]
ADD CONSTRAINT [PK_UserInRoles]
    PRIMARY KEY CLUSTERED ([UserId], [RoleId] ASC);
GO

-- Creating primary key on [Id] in table 'UserTypes'
ALTER TABLE [dbo].[UserTypes]
ADD CONSTRAINT [PK_UserTypes]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [ApplicationId], [ApplicationIdLength], [ModuleId], [ModuleIdLength], [ScreenId], [ScreenIdLength], [MenuId], [MenuIdLength], [UserTypeId], [UserTypeIdLength], [RoleId], [RoleIdLength], [PersonId], [PersonIdLength], [ScreenOperationId], [ScreenOperationIdLength], [ApplicationPolicyId], [ApplicationPolicyIdLength] in table 'IdentityInformations'
ALTER TABLE [dbo].[IdentityInformations]
ADD CONSTRAINT [PK_IdentityInformations]
    PRIMARY KEY CLUSTERED ([ApplicationId], [ApplicationIdLength], [ModuleId], [ModuleIdLength], [ScreenId], [ScreenIdLength], [MenuId], [MenuIdLength], [UserTypeId], [UserTypeIdLength], [RoleId], [RoleIdLength], [PersonId], [PersonIdLength], [ScreenOperationId], [ScreenOperationIdLength], [ApplicationPolicyId], [ApplicationPolicyIdLength] ASC);
GO

-- Creating primary key on [ID], [Guid], [PaymentID], [ApplicationID], [CreatedDate] in table 'PayPalTransactions'
ALTER TABLE [dbo].[PayPalTransactions]
ADD CONSTRAINT [PK_PayPalTransactions]
    PRIMARY KEY CLUSTERED ([ID], [Guid], [PaymentID], [ApplicationID], [CreatedDate] ASC);
GO

-- Creating primary key on [ID], [PriceCategoryID], [DeliveryPlanID], [IsDefaultForView] in table 'TransproLanguagePriceDetails'
ALTER TABLE [dbo].[TransproLanguagePriceDetails]
ADD CONSTRAINT [PK_TransproLanguagePriceDetails]
    PRIMARY KEY CLUSTERED ([ID], [PriceCategoryID], [DeliveryPlanID], [IsDefaultForView] ASC);
GO

-- Creating primary key on [UserId] in table 'RoleManagements'
ALTER TABLE [dbo].[RoleManagements]
ADD CONSTRAINT [PK_RoleManagements]
    PRIMARY KEY CLUSTERED ([UserId] ASC);
GO

-- Creating primary key on [RegistrationID], [StaffEmailID], [NickName_en], [FirstName_en], [LastName_en], [ForiegnLanguage1ID], [Expr39], [Expr40], [Expr46], [Expr1], [Expr2], [Expr8], [Expr9], [Expr10], [Expr16], [Expr17], [Expr18], [Expr24], [Sex], [BirthDate], [CountryOfCitizenship], [Expr26], [IsActive], [Name_en], [Expr34], [VisaTypeID], [Expr35], [Expr50] in table 'staff_tbd'
ALTER TABLE [dbo].[staff_tbd]
ADD CONSTRAINT [PK_staff_tbd]
    PRIMARY KEY CLUSTERED ([RegistrationID], [StaffEmailID], [NickName_en], [FirstName_en], [LastName_en], [ForiegnLanguage1ID], [Expr39], [Expr40], [Expr46], [Expr1], [Expr2], [Expr8], [Expr9], [Expr10], [Expr16], [Expr17], [Expr18], [Expr24], [Sex], [BirthDate], [CountryOfCitizenship], [Expr26], [IsActive], [Name_en], [Expr34], [VisaTypeID], [Expr35], [Expr50] ASC);
GO

-- Creating primary key on [ID], [RegistrationID], [StaffEmailID], [AchievementSearch], [SNSAccount], [DtpExpCount], [TRExpCount], [INExpCount], [IsSpecialistNarator], [NarrationPerformance] in table 'VW_GetAdvancedSearch'
ALTER TABLE [dbo].[VW_GetAdvancedSearch]
ADD CONSTRAINT [PK_VW_GetAdvancedSearch]
    PRIMARY KEY CLUSTERED ([ID], [RegistrationID], [StaffEmailID], [AchievementSearch], [SNSAccount], [DtpExpCount], [TRExpCount], [INExpCount], [IsSpecialistNarator], [NarrationPerformance] ASC);
GO

-- Creating primary key on [ID], [RegistrationID], [StaffEmailID], [Password], [FirstName_en], [NativeLanguageID], [ForiegnLanguage1ID] in table 'VW_GetAdvancedSearch_OLD'
ALTER TABLE [dbo].[VW_GetAdvancedSearch_OLD]
ADD CONSTRAINT [PK_VW_GetAdvancedSearch_OLD]
    PRIMARY KEY CLUSTERED ([ID], [RegistrationID], [StaffEmailID], [Password], [FirstName_en], [NativeLanguageID], [ForiegnLanguage1ID] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [ScreenOperationId] in table 'AdditionalOperationPermissions'
ALTER TABLE [dbo].[AdditionalOperationPermissions]
ADD CONSTRAINT [FK_AdditionalOperationPermissions_ScreenOperations]
    FOREIGN KEY ([ScreenOperationId])
    REFERENCES [dbo].[ScreenOperations]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_AdditionalOperationPermissions_ScreenOperations'
CREATE INDEX [IX_FK_AdditionalOperationPermissions_ScreenOperations]
ON [dbo].[AdditionalOperationPermissions]
    ([ScreenOperationId]);
GO

-- Creating foreign key on [UserId] in table 'AdditionalOperationPermissions'
ALTER TABLE [dbo].[AdditionalOperationPermissions]
ADD CONSTRAINT [FK_AdditionalOperationPermissions_UserInformation]
    FOREIGN KEY ([UserId])
    REFERENCES [dbo].[UserInformations]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_AdditionalOperationPermissions_UserInformation'
CREATE INDEX [IX_FK_AdditionalOperationPermissions_UserInformation]
ON [dbo].[AdditionalOperationPermissions]
    ([UserId]);
GO

-- Creating foreign key on [UserId] in table 'AdditionalScreenPermissions'
ALTER TABLE [dbo].[AdditionalScreenPermissions]
ADD CONSTRAINT [FK_AdditionalScreenPermissions_UserInformation]
    FOREIGN KEY ([UserId])
    REFERENCES [dbo].[UserInformations]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_AdditionalScreenPermissions_UserInformation'
CREATE INDEX [IX_FK_AdditionalScreenPermissions_UserInformation]
ON [dbo].[AdditionalScreenPermissions]
    ([UserId]);
GO

-- Creating foreign key on [ApplicationId] in table 'Master_Penalty'
ALTER TABLE [dbo].[Master_Penalty]
ADD CONSTRAINT [FK_Master_Penalty_Application]
    FOREIGN KEY ([ApplicationId])
    REFERENCES [dbo].[Applications]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Master_Penalty_Application'
CREATE INDEX [IX_FK_Master_Penalty_Application]
ON [dbo].[Master_Penalty]
    ([ApplicationId]);
GO

-- Creating foreign key on [CompanyID] in table 'EstimationRequestHistories'
ALTER TABLE [dbo].[EstimationRequestHistories]
ADD CONSTRAINT [FK_Company]
    FOREIGN KEY ([CompanyID])
    REFERENCES [dbo].[Companies]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Company'
CREATE INDEX [IX_FK_Company]
ON [dbo].[EstimationRequestHistories]
    ([CompanyID]);
GO

-- Creating foreign key on [CompanyID] in table 'Company_AgencyPrice'
ALTER TABLE [dbo].[Company_AgencyPrice]
ADD CONSTRAINT [FK_Company_AgencyPrice_Company]
    FOREIGN KEY ([CompanyID])
    REFERENCES [dbo].[Companies]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Company_AgencyPrice_Company'
CREATE INDEX [IX_FK_Company_AgencyPrice_Company]
ON [dbo].[Company_AgencyPrice]
    ([CompanyID]);
GO

-- Creating foreign key on [CompanyID] in table 'Company_Department'
ALTER TABLE [dbo].[Company_Department]
ADD CONSTRAINT [FK_Company_Department_Company]
    FOREIGN KEY ([CompanyID])
    REFERENCES [dbo].[Companies]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Company_Department_Company'
CREATE INDEX [IX_FK_Company_Department_Company]
ON [dbo].[Company_Department]
    ([CompanyID]);
GO

-- Creating foreign key on [CompanyID] in table 'Company_TransproPartner'
ALTER TABLE [dbo].[Company_TransproPartner]
ADD CONSTRAINT [FK_Company_TransproPartner_Company]
    FOREIGN KEY ([CompanyID])
    REFERENCES [dbo].[Companies]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Company_TransproPartner_Company'
CREATE INDEX [IX_FK_Company_TransproPartner_Company]
ON [dbo].[Company_TransproPartner]
    ([CompanyID]);
GO

-- Creating foreign key on [CompanyTradingOfficeID] in table 'Companies'
ALTER TABLE [dbo].[Companies]
ADD CONSTRAINT [FK_Company_Company]
    FOREIGN KEY ([CompanyTradingOfficeID])
    REFERENCES [dbo].[Master_BranchOffice]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Company_Company'
CREATE INDEX [IX_FK_Company_Company]
ON [dbo].[Companies]
    ([CompanyTradingOfficeID]);
GO

-- Creating foreign key on [NoteDeliveryTypeID] in table 'Companies'
ALTER TABLE [dbo].[Companies]
ADD CONSTRAINT [FK_Company_Master_DeliveryMethod]
    FOREIGN KEY ([NoteDeliveryTypeID])
    REFERENCES [dbo].[Master_DeliveryMethod]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Company_Master_DeliveryMethod'
CREATE INDEX [IX_FK_Company_Master_DeliveryMethod]
ON [dbo].[Companies]
    ([NoteDeliveryTypeID]);
GO

-- Creating foreign key on [InvoiceDeliveryTypeID] in table 'Companies'
ALTER TABLE [dbo].[Companies]
ADD CONSTRAINT [FK_Company_Master_DeliveryMethod1]
    FOREIGN KEY ([InvoiceDeliveryTypeID])
    REFERENCES [dbo].[Master_DeliveryMethod]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Company_Master_DeliveryMethod1'
CREATE INDEX [IX_FK_Company_Master_DeliveryMethod1]
ON [dbo].[Companies]
    ([InvoiceDeliveryTypeID]);
GO

-- Creating foreign key on [RecieptDeliveryTypeID] in table 'Companies'
ALTER TABLE [dbo].[Companies]
ADD CONSTRAINT [FK_Company_Master_DeliveryMethod2]
    FOREIGN KEY ([RecieptDeliveryTypeID])
    REFERENCES [dbo].[Master_DeliveryMethod]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Company_Master_DeliveryMethod2'
CREATE INDEX [IX_FK_Company_Master_DeliveryMethod2]
ON [dbo].[Companies]
    ([RecieptDeliveryTypeID]);
GO

-- Creating foreign key on [PartnerServiceTypeID] in table 'Companies'
ALTER TABLE [dbo].[Companies]
ADD CONSTRAINT [FK_Company_Master_PartnerServiceType]
    FOREIGN KEY ([PartnerServiceTypeID])
    REFERENCES [dbo].[Master_PartnerServiceType]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Company_Master_PartnerServiceType'
CREATE INDEX [IX_FK_Company_Master_PartnerServiceType]
ON [dbo].[Companies]
    ([PartnerServiceTypeID]);
GO

-- Creating foreign key on [CompanyID] in table 'CompanyIndustryClassifications'
ALTER TABLE [dbo].[CompanyIndustryClassifications]
ADD CONSTRAINT [FK_CompanyIndustryClassification_Company]
    FOREIGN KEY ([CompanyID])
    REFERENCES [dbo].[Companies]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_CompanyIndustryClassification_Company'
CREATE INDEX [IX_FK_CompanyIndustryClassification_Company]
ON [dbo].[CompanyIndustryClassifications]
    ([CompanyID]);
GO

-- Creating foreign key on [ClientID] in table 'OrderEvaluationByCustomers'
ALTER TABLE [dbo].[OrderEvaluationByCustomers]
ADD CONSTRAINT [FK_CustomerEvaluation_Web_Company]
    FOREIGN KEY ([ClientID])
    REFERENCES [dbo].[Companies]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_CustomerEvaluation_Web_Company'
CREATE INDEX [IX_FK_CustomerEvaluation_Web_Company]
ON [dbo].[OrderEvaluationByCustomers]
    ([ClientID]);
GO

-- Creating foreign key on [CustomerID] in table 'EmailDeliverySettings'
ALTER TABLE [dbo].[EmailDeliverySettings]
ADD CONSTRAINT [FK_EmailDeliverySettings_Company]
    FOREIGN KEY ([CustomerID])
    REFERENCES [dbo].[Companies]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_EmailDeliverySettings_Company'
CREATE INDEX [IX_FK_EmailDeliverySettings_Company]
ON [dbo].[EmailDeliverySettings]
    ([CustomerID]);
GO

-- Creating foreign key on [ClientID] in table 'Estimations'
ALTER TABLE [dbo].[Estimations]
ADD CONSTRAINT [FK_Estimation_Company]
    FOREIGN KEY ([ClientID])
    REFERENCES [dbo].[Companies]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Estimation_Company'
CREATE INDEX [IX_FK_Estimation_Company]
ON [dbo].[Estimations]
    ([ClientID]);
GO

-- Creating foreign key on [ClientID] in table 'Order_Web'
ALTER TABLE [dbo].[Order_Web]
ADD CONSTRAINT [FK_Order_Web_Company]
    FOREIGN KEY ([ClientID])
    REFERENCES [dbo].[Companies]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Order_Web_Company'
CREATE INDEX [IX_FK_Order_Web_Company]
ON [dbo].[Order_Web]
    ([ClientID]);
GO

-- Creating foreign key on [CompanyID] in table 'Orders'
ALTER TABLE [dbo].[Orders]
ADD CONSTRAINT [FK_Order_Company]
    FOREIGN KEY ([CompanyID])
    REFERENCES [dbo].[Companies]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Order_Company'
CREATE INDEX [IX_FK_Order_Company]
ON [dbo].[Orders]
    ([CompanyID]);
GO

-- Creating foreign key on [ClientID] in table 'OrderAppointedToStaff_Web'
ALTER TABLE [dbo].[OrderAppointedToStaff_Web]
ADD CONSTRAINT [FK_OrderAppointed_Web_Company]
    FOREIGN KEY ([ClientID])
    REFERENCES [dbo].[Companies]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_OrderAppointed_Web_Company'
CREATE INDEX [IX_FK_OrderAppointed_Web_Company]
ON [dbo].[OrderAppointedToStaff_Web]
    ([ClientID]);
GO

-- Creating foreign key on [ClientID] in table 'OrderRequestedToStaff_Web'
ALTER TABLE [dbo].[OrderRequestedToStaff_Web]
ADD CONSTRAINT [FK_OrderRequestedToStaff_Web_Company]
    FOREIGN KEY ([ClientID])
    REFERENCES [dbo].[Companies]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_OrderRequestedToStaff_Web_Company'
CREATE INDEX [IX_FK_OrderRequestedToStaff_Web_Company]
ON [dbo].[OrderRequestedToStaff_Web]
    ([ClientID]);
GO

-- Creating foreign key on [SpecializedFieldID] in table 'Company_AgencyPrice'
ALTER TABLE [dbo].[Company_AgencyPrice]
ADD CONSTRAINT [FK_Company_AgencyPrice_Master_EstimationSpecializedField]
    FOREIGN KEY ([SpecializedFieldID])
    REFERENCES [dbo].[Master_EstimationSpecializedField]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Company_AgencyPrice_Master_EstimationSpecializedField'
CREATE INDEX [IX_FK_Company_AgencyPrice_Master_EstimationSpecializedField]
ON [dbo].[Company_AgencyPrice]
    ([SpecializedFieldID]);
GO

-- Creating foreign key on [EstimationTypeID] in table 'Company_AgencyPrice'
ALTER TABLE [dbo].[Company_AgencyPrice]
ADD CONSTRAINT [FK_Company_AgencyPrice_Master_EstimationType]
    FOREIGN KEY ([EstimationTypeID])
    REFERENCES [dbo].[Master_EstimationType]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Company_AgencyPrice_Master_EstimationType'
CREATE INDEX [IX_FK_Company_AgencyPrice_Master_EstimationType]
ON [dbo].[Company_AgencyPrice]
    ([EstimationTypeID]);
GO

-- Creating foreign key on [SourceLanguageID] in table 'Company_AgencyPrice'
ALTER TABLE [dbo].[Company_AgencyPrice]
ADD CONSTRAINT [FK_Company_AgencyPrice_Master_Language]
    FOREIGN KEY ([SourceLanguageID])
    REFERENCES [dbo].[Master_Language]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Company_AgencyPrice_Master_Language'
CREATE INDEX [IX_FK_Company_AgencyPrice_Master_Language]
ON [dbo].[Company_AgencyPrice]
    ([SourceLanguageID]);
GO

-- Creating foreign key on [DestinationLanguageID] in table 'Company_AgencyPrice'
ALTER TABLE [dbo].[Company_AgencyPrice]
ADD CONSTRAINT [FK_Company_AgencyPrice_Master_Language1]
    FOREIGN KEY ([DestinationLanguageID])
    REFERENCES [dbo].[Master_Language]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Company_AgencyPrice_Master_Language1'
CREATE INDEX [IX_FK_Company_AgencyPrice_Master_Language1]
ON [dbo].[Company_AgencyPrice]
    ([DestinationLanguageID]);
GO

-- Creating foreign key on [DepartmentID] in table 'Company_Department'
ALTER TABLE [dbo].[Company_Department]
ADD CONSTRAINT [FK_Company_Department_Master_Department]
    FOREIGN KEY ([DepartmentID])
    REFERENCES [dbo].[Master_Department]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Company_Department_Master_Department'
CREATE INDEX [IX_FK_Company_Department_Master_Department]
ON [dbo].[Company_Department]
    ([DepartmentID]);
GO

-- Creating foreign key on [BankID] in table 'Company_TransproPartner'
ALTER TABLE [dbo].[Company_TransproPartner]
ADD CONSTRAINT [FK_Company_TransproPartner_Master_Bank]
    FOREIGN KEY ([BankID])
    REFERENCES [dbo].[Master_Bank]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Company_TransproPartner_Master_Bank'
CREATE INDEX [IX_FK_Company_TransproPartner_Master_Bank]
ON [dbo].[Company_TransproPartner]
    ([BankID]);
GO

-- Creating foreign key on [BankAccountTypeID] in table 'Company_TransproPartner'
ALTER TABLE [dbo].[Company_TransproPartner]
ADD CONSTRAINT [FK_Company_TransproPartner_Master_BankAccountType]
    FOREIGN KEY ([BankAccountTypeID])
    REFERENCES [dbo].[Master_BankAccountType]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Company_TransproPartner_Master_BankAccountType'
CREATE INDEX [IX_FK_Company_TransproPartner_Master_BankAccountType]
ON [dbo].[Company_TransproPartner]
    ([BankAccountTypeID]);
GO

-- Creating foreign key on [BankBranchID] in table 'Company_TransproPartner'
ALTER TABLE [dbo].[Company_TransproPartner]
ADD CONSTRAINT [FK_Company_TransproPartner_Master_BankBranch]
    FOREIGN KEY ([BankBranchID])
    REFERENCES [dbo].[Master_BankBranch]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Company_TransproPartner_Master_BankBranch'
CREATE INDEX [IX_FK_Company_TransproPartner_Master_BankBranch]
ON [dbo].[Company_TransproPartner]
    ([BankBranchID]);
GO

-- Creating foreign key on [AgentBusinessID] in table 'CompanyAgentBusinesses'
ALTER TABLE [dbo].[CompanyAgentBusinesses]
ADD CONSTRAINT [FK_CompanyAgentBusiness_Master_AgentBusiness]
    FOREIGN KEY ([AgentBusinessID])
    REFERENCES [dbo].[Master_AgentBusiness]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_CompanyAgentBusiness_Master_AgentBusiness'
CREATE INDEX [IX_FK_CompanyAgentBusiness_Master_AgentBusiness]
ON [dbo].[CompanyAgentBusinesses]
    ([AgentBusinessID]);
GO

-- Creating foreign key on [AgentCharactersticID] in table 'CompanyAgentCharacterstics'
ALTER TABLE [dbo].[CompanyAgentCharacterstics]
ADD CONSTRAINT [FK_CompanyAgentCharacterstics_Master_AgentCharacterstics]
    FOREIGN KEY ([AgentCharactersticID])
    REFERENCES [dbo].[Master_AgentCharacterstics]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_CompanyAgentCharacterstics_Master_AgentCharacterstics'
CREATE INDEX [IX_FK_CompanyAgentCharacterstics_Master_AgentCharacterstics]
ON [dbo].[CompanyAgentCharacterstics]
    ([AgentCharactersticID]);
GO

-- Creating foreign key on [AgentDesignationID] in table 'CompanyAgentDesignations'
ALTER TABLE [dbo].[CompanyAgentDesignations]
ADD CONSTRAINT [FK_CompanyAgentDesignation_Master_AgentFreeDesignation]
    FOREIGN KEY ([AgentDesignationID])
    REFERENCES [dbo].[Master_AgentFreeDesignation]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_CompanyAgentDesignation_Master_AgentFreeDesignation'
CREATE INDEX [IX_FK_CompanyAgentDesignation_Master_AgentFreeDesignation]
ON [dbo].[CompanyAgentDesignations]
    ([AgentDesignationID]);
GO

-- Creating foreign key on [ServiceID] in table 'CompanyBusinessInformations'
ALTER TABLE [dbo].[CompanyBusinessInformations]
ADD CONSTRAINT [FK_CompanyBusinessInformation_Master_CompanyBusinessService]
    FOREIGN KEY ([ServiceID])
    REFERENCES [dbo].[Master_CompanyBusinessService]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_CompanyBusinessInformation_Master_CompanyBusinessService'
CREATE INDEX [IX_FK_CompanyBusinessInformation_Master_CompanyBusinessService]
ON [dbo].[CompanyBusinessInformations]
    ([ServiceID]);
GO

-- Creating foreign key on [SpecialityID] in table 'CompanyBusinessInformations'
ALTER TABLE [dbo].[CompanyBusinessInformations]
ADD CONSTRAINT [FK_CompanyBusinessInformation_Master_CompanyBusinessSpeciality]
    FOREIGN KEY ([SpecialityID])
    REFERENCES [dbo].[Master_CompanyBusinessSpeciality]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_CompanyBusinessInformation_Master_CompanyBusinessSpeciality'
CREATE INDEX [IX_FK_CompanyBusinessInformation_Master_CompanyBusinessSpeciality]
ON [dbo].[CompanyBusinessInformations]
    ([SpecialityID]);
GO

-- Creating foreign key on [Language1ID] in table 'CompanyBusinessInformations'
ALTER TABLE [dbo].[CompanyBusinessInformations]
ADD CONSTRAINT [FK_CompanyBusinessInformation_Master_Language1]
    FOREIGN KEY ([Language1ID])
    REFERENCES [dbo].[Master_Language]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_CompanyBusinessInformation_Master_Language1'
CREATE INDEX [IX_FK_CompanyBusinessInformation_Master_Language1]
ON [dbo].[CompanyBusinessInformations]
    ([Language1ID]);
GO

-- Creating foreign key on [Language2ID] in table 'CompanyBusinessInformations'
ALTER TABLE [dbo].[CompanyBusinessInformations]
ADD CONSTRAINT [FK_CompanyBusinessInformation_Master_Language2]
    FOREIGN KEY ([Language2ID])
    REFERENCES [dbo].[Master_Language]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_CompanyBusinessInformation_Master_Language2'
CREATE INDEX [IX_FK_CompanyBusinessInformation_Master_Language2]
ON [dbo].[CompanyBusinessInformations]
    ([Language2ID]);
GO

-- Creating foreign key on [IndustryClassificationID] in table 'CompanyIndustryClassifications'
ALTER TABLE [dbo].[CompanyIndustryClassifications]
ADD CONSTRAINT [FK_CompanyIndustryClassification_Master_CompanyIndustryClassification]
    FOREIGN KEY ([IndustryClassificationID])
    REFERENCES [dbo].[Master_CompanyIndustryClassification]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_CompanyIndustryClassification_Master_CompanyIndustryClassification'
CREATE INDEX [IX_FK_CompanyIndustryClassification_Master_CompanyIndustryClassification]
ON [dbo].[CompanyIndustryClassifications]
    ([IndustryClassificationID]);
GO

-- Creating foreign key on [IndustryClassificationItemID] in table 'CompanyIndustryClassifications'
ALTER TABLE [dbo].[CompanyIndustryClassifications]
ADD CONSTRAINT [FK_CompanyIndustryClassification_Master_CompanyIndustryClassificationItem]
    FOREIGN KEY ([IndustryClassificationItemID])
    REFERENCES [dbo].[Master_CompanyIndustryClassificationItem]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_CompanyIndustryClassification_Master_CompanyIndustryClassificationItem'
CREATE INDEX [IX_FK_CompanyIndustryClassification_Master_CompanyIndustryClassificationItem]
ON [dbo].[CompanyIndustryClassifications]
    ([IndustryClassificationItemID]);
GO

-- Creating foreign key on [AvgOrderedAsCompanyCurrencyID] in table 'CompanyRFMAnalysis'
ALTER TABLE [dbo].[CompanyRFMAnalysis]
ADD CONSTRAINT [FK_CompanyRFMAnalysis_AvgOrderedCompanyCurrency]
    FOREIGN KEY ([AvgOrderedAsCompanyCurrencyID])
    REFERENCES [dbo].[Master_Currency]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_CompanyRFMAnalysis_AvgOrderedCompanyCurrency'
CREATE INDEX [IX_FK_CompanyRFMAnalysis_AvgOrderedCompanyCurrency]
ON [dbo].[CompanyRFMAnalysis]
    ([AvgOrderedAsCompanyCurrencyID]);
GO

-- Creating foreign key on [AvgOrderedAsPersonCurrencyID] in table 'CompanyRFMAnalysis'
ALTER TABLE [dbo].[CompanyRFMAnalysis]
ADD CONSTRAINT [FK_CompanyRFMAnalysis_AvgOrderedPersonCurrency]
    FOREIGN KEY ([AvgOrderedAsPersonCurrencyID])
    REFERENCES [dbo].[Master_Currency]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_CompanyRFMAnalysis_AvgOrderedPersonCurrency'
CREATE INDEX [IX_FK_CompanyRFMAnalysis_AvgOrderedPersonCurrency]
ON [dbo].[CompanyRFMAnalysis]
    ([AvgOrderedAsPersonCurrencyID]);
GO

-- Creating foreign key on [AvgQuotAsCompanyCurrencyID] in table 'CompanyRFMAnalysis'
ALTER TABLE [dbo].[CompanyRFMAnalysis]
ADD CONSTRAINT [FK_CompanyRFMAnalysis_AvgQuotCompanyCurrency]
    FOREIGN KEY ([AvgQuotAsCompanyCurrencyID])
    REFERENCES [dbo].[Master_Currency]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_CompanyRFMAnalysis_AvgQuotCompanyCurrency'
CREATE INDEX [IX_FK_CompanyRFMAnalysis_AvgQuotCompanyCurrency]
ON [dbo].[CompanyRFMAnalysis]
    ([AvgQuotAsCompanyCurrencyID]);
GO

-- Creating foreign key on [AvgQuotAsPersonCurrencyID] in table 'CompanyRFMAnalysis'
ALTER TABLE [dbo].[CompanyRFMAnalysis]
ADD CONSTRAINT [FK_CompanyRFMAnalysis_AvgQuotPersonCurrency]
    FOREIGN KEY ([AvgQuotAsPersonCurrencyID])
    REFERENCES [dbo].[Master_Currency]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_CompanyRFMAnalysis_AvgQuotPersonCurrency'
CREATE INDEX [IX_FK_CompanyRFMAnalysis_AvgQuotPersonCurrency]
ON [dbo].[CompanyRFMAnalysis]
    ([AvgQuotAsPersonCurrencyID]);
GO

-- Creating foreign key on [TradingCategoryID] in table 'CompanyTradingCategories'
ALTER TABLE [dbo].[CompanyTradingCategories]
ADD CONSTRAINT [FK_CompanyTradingCategory_Master_CompanyTradingCategory]
    FOREIGN KEY ([TradingCategoryID])
    REFERENCES [dbo].[Master_CompanyTradingCategory]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_CompanyTradingCategory_Master_CompanyTradingCategory'
CREATE INDEX [IX_FK_CompanyTradingCategory_Master_CompanyTradingCategory]
ON [dbo].[CompanyTradingCategories]
    ([TradingCategoryID]);
GO

-- Creating foreign key on [TradingCategoryItemID] in table 'CompanyTradingCategories'
ALTER TABLE [dbo].[CompanyTradingCategories]
ADD CONSTRAINT [FK_CompanyTradingCategory_Master_CompanyTradingCategoryItem]
    FOREIGN KEY ([TradingCategoryItemID])
    REFERENCES [dbo].[Master_CompanyTradingCategoryItem]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_CompanyTradingCategory_Master_CompanyTradingCategoryItem'
CREATE INDEX [IX_FK_CompanyTradingCategory_Master_CompanyTradingCategoryItem]
ON [dbo].[CompanyTradingCategories]
    ([TradingCategoryItemID]);
GO

-- Creating foreign key on [RepliedBy] in table 'ContactUs'
ALTER TABLE [dbo].[ContactUs]
ADD CONSTRAINT [FK_ContactUs_UserInformation]
    FOREIGN KEY ([RepliedBy])
    REFERENCES [dbo].[UserInformations]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ContactUs_UserInformation'
CREATE INDEX [IX_FK_ContactUs_UserInformation]
ON [dbo].[ContactUs]
    ([RepliedBy]);
GO

-- Creating foreign key on [StaffID] in table 'EmailDeliverySettings'
ALTER TABLE [dbo].[EmailDeliverySettings]
ADD CONSTRAINT [FK_EmailDeliverySettings_Staff]
    FOREIGN KEY ([StaffID])
    REFERENCES [dbo].[Staffs]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_EmailDeliverySettings_Staff'
CREATE INDEX [IX_FK_EmailDeliverySettings_Staff]
ON [dbo].[EmailDeliverySettings]
    ([StaffID]);
GO

-- Creating foreign key on [BranchOfficeID] in table 'Employees'
ALTER TABLE [dbo].[Employees]
ADD CONSTRAINT [FK_Employee_Master_BranchOffice]
    FOREIGN KEY ([BranchOfficeID])
    REFERENCES [dbo].[Master_BranchOffice]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Employee_Master_BranchOffice'
CREATE INDEX [IX_FK_Employee_Master_BranchOffice]
ON [dbo].[Employees]
    ([BranchOfficeID]);
GO

-- Creating foreign key on [BranchOfficeID] in table 'Employees'
ALTER TABLE [dbo].[Employees]
ADD CONSTRAINT [FK_Employee_Master_BranchOffice1]
    FOREIGN KEY ([BranchOfficeID])
    REFERENCES [dbo].[Master_BranchOffice]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Employee_Master_BranchOffice1'
CREATE INDEX [IX_FK_Employee_Master_BranchOffice1]
ON [dbo].[Employees]
    ([BranchOfficeID]);
GO

-- Creating foreign key on [CountryID] in table 'Employees'
ALTER TABLE [dbo].[Employees]
ADD CONSTRAINT [FK_Employee_Master_Country]
    FOREIGN KEY ([CountryID])
    REFERENCES [dbo].[Master_Country]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Employee_Master_Country'
CREATE INDEX [IX_FK_Employee_Master_Country]
ON [dbo].[Employees]
    ([CountryID]);
GO

-- Creating foreign key on [DepartmentID] in table 'Employees'
ALTER TABLE [dbo].[Employees]
ADD CONSTRAINT [FK_Employee_Master_Department]
    FOREIGN KEY ([DepartmentID])
    REFERENCES [dbo].[Master_Department]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Employee_Master_Department'
CREATE INDEX [IX_FK_Employee_Master_Department]
ON [dbo].[Employees]
    ([DepartmentID]);
GO

-- Creating foreign key on [ApprovalID] in table 'Estimations'
ALTER TABLE [dbo].[Estimations]
ADD CONSTRAINT [FK_Estimation_Approver]
    FOREIGN KEY ([ApprovalID])
    REFERENCES [dbo].[Employees]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Estimation_Approver'
CREATE INDEX [IX_FK_Estimation_Approver]
ON [dbo].[Estimations]
    ([ApprovalID]);
GO

-- Creating foreign key on [AssistantID] in table 'Estimations'
ALTER TABLE [dbo].[Estimations]
ADD CONSTRAINT [FK_Estimation_Assistant]
    FOREIGN KEY ([AssistantID])
    REFERENCES [dbo].[Employees]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Estimation_Assistant'
CREATE INDEX [IX_FK_Estimation_Assistant]
ON [dbo].[Estimations]
    ([AssistantID]);
GO

-- Creating foreign key on [CoordinatorID] in table 'Estimations'
ALTER TABLE [dbo].[Estimations]
ADD CONSTRAINT [FK_Estimation_Coordinator]
    FOREIGN KEY ([CoordinatorID])
    REFERENCES [dbo].[Employees]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Estimation_Coordinator'
CREATE INDEX [IX_FK_Estimation_Coordinator]
ON [dbo].[Estimations]
    ([CoordinatorID]);
GO

-- Creating foreign key on [LargeSalesID] in table 'Estimations'
ALTER TABLE [dbo].[Estimations]
ADD CONSTRAINT [FK_Estimation_LargeSales]
    FOREIGN KEY ([LargeSalesID])
    REFERENCES [dbo].[Employees]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Estimation_LargeSales'
CREATE INDEX [IX_FK_Estimation_LargeSales]
ON [dbo].[Estimations]
    ([LargeSalesID]);
GO

-- Creating foreign key on [OutwardSalesID] in table 'Estimations'
ALTER TABLE [dbo].[Estimations]
ADD CONSTRAINT [FK_Estimation_OutwardSales]
    FOREIGN KEY ([OutwardSalesID])
    REFERENCES [dbo].[Employees]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Estimation_OutwardSales'
CREATE INDEX [IX_FK_Estimation_OutwardSales]
ON [dbo].[Estimations]
    ([OutwardSalesID]);
GO

-- Creating foreign key on [SalesPersonID] in table 'Estimations'
ALTER TABLE [dbo].[Estimations]
ADD CONSTRAINT [FK_Estimation_SalesPerson]
    FOREIGN KEY ([SalesPersonID])
    REFERENCES [dbo].[Employees]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Estimation_SalesPerson'
CREATE INDEX [IX_FK_Estimation_SalesPerson]
ON [dbo].[Estimations]
    ([SalesPersonID]);
GO

-- Creating foreign key on [ApproverID] in table 'EstimationApprovals'
ALTER TABLE [dbo].[EstimationApprovals]
ADD CONSTRAINT [FK_EstimationApproval_Employee]
    FOREIGN KEY ([ApproverID])
    REFERENCES [dbo].[Employees]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_EstimationApproval_Employee'
CREATE INDEX [IX_FK_EstimationApproval_Employee]
ON [dbo].[EstimationApprovals]
    ([ApproverID]);
GO

-- Creating foreign key on [UserID] in table 'ErrorLogs'
ALTER TABLE [dbo].[ErrorLogs]
ADD CONSTRAINT [FK_ErrorLog_UserInformation]
    FOREIGN KEY ([UserID])
    REFERENCES [dbo].[UserInformations]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ErrorLog_UserInformation'
CREATE INDEX [IX_FK_ErrorLog_UserInformation]
ON [dbo].[ErrorLogs]
    ([UserID]);
GO

-- Creating foreign key on [CurrencyID] in table 'Estimations'
ALTER TABLE [dbo].[Estimations]
ADD CONSTRAINT [FK_Estimation_Master_Currency]
    FOREIGN KEY ([CurrencyID])
    REFERENCES [dbo].[Master_Currency]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Estimation_Master_Currency'
CREATE INDEX [IX_FK_Estimation_Master_Currency]
ON [dbo].[Estimations]
    ([CurrencyID]);
GO

-- Creating foreign key on [EstimateRouteID] in table 'Estimations'
ALTER TABLE [dbo].[Estimations]
ADD CONSTRAINT [FK_Estimation_Master_EstimationRoutes]
    FOREIGN KEY ([EstimateRouteID])
    REFERENCES [dbo].[Master_EstimationRoutes]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Estimation_Master_EstimationRoutes'
CREATE INDEX [IX_FK_Estimation_Master_EstimationRoutes]
ON [dbo].[Estimations]
    ([EstimateRouteID]);
GO

-- Creating foreign key on [EstimationType] in table 'Estimations'
ALTER TABLE [dbo].[Estimations]
ADD CONSTRAINT [FK_Estimation_Master_EstimationType]
    FOREIGN KEY ([EstimationType])
    REFERENCES [dbo].[Master_EstimationType]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Estimation_Master_EstimationType'
CREATE INDEX [IX_FK_Estimation_Master_EstimationType]
ON [dbo].[Estimations]
    ([EstimationType]);
GO

-- Creating foreign key on [EstimationID] in table 'EstimationActions'
ALTER TABLE [dbo].[EstimationActions]
ADD CONSTRAINT [FK_EstimationActions_Estimation]
    FOREIGN KEY ([EstimationID])
    REFERENCES [dbo].[Estimations]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_EstimationActions_Estimation'
CREATE INDEX [IX_FK_EstimationActions_Estimation]
ON [dbo].[EstimationActions]
    ([EstimationID]);
GO

-- Creating foreign key on [EstimationID] in table 'EstimationApprovals'
ALTER TABLE [dbo].[EstimationApprovals]
ADD CONSTRAINT [FK_EstimationApproval_Estimation]
    FOREIGN KEY ([EstimationID])
    REFERENCES [dbo].[Estimations]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_EstimationApproval_Estimation'
CREATE INDEX [IX_FK_EstimationApproval_Estimation]
ON [dbo].[EstimationApprovals]
    ([EstimationID]);
GO

-- Creating foreign key on [EstimationID] in table 'EstimationCompetencies'
ALTER TABLE [dbo].[EstimationCompetencies]
ADD CONSTRAINT [FK_EstimationCompetency_Estimation]
    FOREIGN KEY ([EstimationID])
    REFERENCES [dbo].[Estimations]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_EstimationCompetency_Estimation'
CREATE INDEX [IX_FK_EstimationCompetency_Estimation]
ON [dbo].[EstimationCompetencies]
    ([EstimationID]);
GO

-- Creating foreign key on [EstimationID] in table 'EstimationDeliveryFileTypes'
ALTER TABLE [dbo].[EstimationDeliveryFileTypes]
ADD CONSTRAINT [FK_EstimationDeliveryFileType_Estimation]
    FOREIGN KEY ([EstimationID])
    REFERENCES [dbo].[Estimations]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_EstimationDeliveryFileType_Estimation'
CREATE INDEX [IX_FK_EstimationDeliveryFileType_Estimation]
ON [dbo].[EstimationDeliveryFileTypes]
    ([EstimationID]);
GO

-- Creating foreign key on [EstimationID] in table 'EstimationDetails'
ALTER TABLE [dbo].[EstimationDetails]
ADD CONSTRAINT [FK_EstimationDetails_Estimation]
    FOREIGN KEY ([EstimationID])
    REFERENCES [dbo].[Estimations]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_EstimationDetails_Estimation'
CREATE INDEX [IX_FK_EstimationDetails_Estimation]
ON [dbo].[EstimationDetails]
    ([EstimationID]);
GO

-- Creating foreign key on [EstimateID] in table 'EstimationFiles'
ALTER TABLE [dbo].[EstimationFiles]
ADD CONSTRAINT [FK_EstimationFiles_Estimation]
    FOREIGN KEY ([EstimateID])
    REFERENCES [dbo].[Estimations]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_EstimationFiles_Estimation'
CREATE INDEX [IX_FK_EstimationFiles_Estimation]
ON [dbo].[EstimationFiles]
    ([EstimateID]);
GO

-- Creating foreign key on [EstimationID] in table 'EstimationWorkContents'
ALTER TABLE [dbo].[EstimationWorkContents]
ADD CONSTRAINT [FK_EstimationWorkContent_Estimation]
    FOREIGN KEY ([EstimationID])
    REFERENCES [dbo].[Estimations]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_EstimationWorkContent_Estimation'
CREATE INDEX [IX_FK_EstimationWorkContent_Estimation]
ON [dbo].[EstimationWorkContents]
    ([EstimationID]);
GO

-- Creating foreign key on [EstimationID] in table 'EstimationNarrationExpenses'
ALTER TABLE [dbo].[EstimationNarrationExpenses]
ADD CONSTRAINT [FK_EstmationNarrationExpense_Estimation]
    FOREIGN KEY ([EstimationID])
    REFERENCES [dbo].[Estimations]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_EstmationNarrationExpense_Estimation'
CREATE INDEX [IX_FK_EstmationNarrationExpense_Estimation]
ON [dbo].[EstimationNarrationExpenses]
    ([EstimationID]);
GO

-- Creating foreign key on [EstimationID] in table 'Order_StaffAllowance'
ALTER TABLE [dbo].[Order_StaffAllowance]
ADD CONSTRAINT [FK_Order_StaffAllowance_Order]
    FOREIGN KEY ([EstimationID])
    REFERENCES [dbo].[Estimations]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Order_StaffAllowance_Order'
CREATE INDEX [IX_FK_Order_StaffAllowance_Order]
ON [dbo].[Order_StaffAllowance]
    ([EstimationID]);
GO

-- Creating foreign key on [EstimationID] in table 'Orders'
ALTER TABLE [dbo].[Orders]
ADD CONSTRAINT [FK_Order_Estimation]
    FOREIGN KEY ([EstimationID])
    REFERENCES [dbo].[Estimations]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Order_Estimation'
CREATE INDEX [IX_FK_Order_Estimation]
ON [dbo].[Orders]
    ([EstimationID]);
GO

-- Creating foreign key on [SourceLanguageID] in table 'EstimationDetails'
ALTER TABLE [dbo].[EstimationDetails]
ADD CONSTRAINT [FK_EstimationDetails_SourceLanguage]
    FOREIGN KEY ([SourceLanguageID])
    REFERENCES [dbo].[Master_Language]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_EstimationDetails_SourceLanguage'
CREATE INDEX [IX_FK_EstimationDetails_SourceLanguage]
ON [dbo].[EstimationDetails]
    ([SourceLanguageID]);
GO

-- Creating foreign key on [TargetLanguageID] in table 'EstimationDetails'
ALTER TABLE [dbo].[EstimationDetails]
ADD CONSTRAINT [FK_EstimationDetails_TargetLanguage]
    FOREIGN KEY ([TargetLanguageID])
    REFERENCES [dbo].[Master_Language]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_EstimationDetails_TargetLanguage'
CREATE INDEX [IX_FK_EstimationDetails_TargetLanguage]
ON [dbo].[EstimationDetails]
    ([TargetLanguageID]);
GO

-- Creating foreign key on [EstimateDetailsID] in table 'EstimationFiles'
ALTER TABLE [dbo].[EstimationFiles]
ADD CONSTRAINT [FK_EstimationFiles_EstimationDetails]
    FOREIGN KEY ([EstimateDetailsID])
    REFERENCES [dbo].[EstimationDetails]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_EstimationFiles_EstimationDetails'
CREATE INDEX [IX_FK_EstimationFiles_EstimationDetails]
ON [dbo].[EstimationFiles]
    ([EstimateDetailsID]);
GO

-- Creating foreign key on [EstimationDetailsID] in table 'OrderDetails'
ALTER TABLE [dbo].[OrderDetails]
ADD CONSTRAINT [FK_OrderDetails_EstimationDetails]
    FOREIGN KEY ([EstimationDetailsID])
    REFERENCES [dbo].[EstimationDetails]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_OrderDetails_EstimationDetails'
CREATE INDEX [IX_FK_OrderDetails_EstimationDetails]
ON [dbo].[OrderDetails]
    ([EstimationDetailsID]);
GO

-- Creating foreign key on [CurrencyID] in table 'HiworkLanguagePrices'
ALTER TABLE [dbo].[HiworkLanguagePrices]
ADD CONSTRAINT [FK_HiworkLanguagePrice_Master_Currency]
    FOREIGN KEY ([CurrencyID])
    REFERENCES [dbo].[Master_Currency]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_HiworkLanguagePrice_Master_Currency'
CREATE INDEX [IX_FK_HiworkLanguagePrice_Master_Currency]
ON [dbo].[HiworkLanguagePrices]
    ([CurrencyID]);
GO

-- Creating foreign key on [SourceLanguageID] in table 'HiworkLanguagePrices'
ALTER TABLE [dbo].[HiworkLanguagePrices]
ADD CONSTRAINT [FK_HiworkLanguagePrice_SourceLanguage]
    FOREIGN KEY ([SourceLanguageID])
    REFERENCES [dbo].[Master_Language]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_HiworkLanguagePrice_SourceLanguage'
CREATE INDEX [IX_FK_HiworkLanguagePrice_SourceLanguage]
ON [dbo].[HiworkLanguagePrices]
    ([SourceLanguageID]);
GO

-- Creating foreign key on [TargetLanguageID] in table 'HiworkLanguagePrices'
ALTER TABLE [dbo].[HiworkLanguagePrices]
ADD CONSTRAINT [FK_HiworkLanguagePrice_TargetLanguage]
    FOREIGN KEY ([TargetLanguageID])
    REFERENCES [dbo].[Master_Language]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_HiworkLanguagePrice_TargetLanguage'
CREATE INDEX [IX_FK_HiworkLanguagePrice_TargetLanguage]
ON [dbo].[HiworkLanguagePrices]
    ([TargetLanguageID]);
GO

-- Creating foreign key on [CountryID] in table 'Master_Address'
ALTER TABLE [dbo].[Master_Address]
ADD CONSTRAINT [FK_Master_Address_Master_Country]
    FOREIGN KEY ([CountryID])
    REFERENCES [dbo].[Master_Country]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Master_Address_Master_Country'
CREATE INDEX [IX_FK_Master_Address_Master_Country]
ON [dbo].[Master_Address]
    ([CountryID]);
GO

-- Creating foreign key on [CountryID] in table 'Master_Bank'
ALTER TABLE [dbo].[Master_Bank]
ADD CONSTRAINT [FK_Master_Bank_Master_Country]
    FOREIGN KEY ([CountryID])
    REFERENCES [dbo].[Master_Country]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Master_Bank_Master_Country'
CREATE INDEX [IX_FK_Master_Bank_Master_Country]
ON [dbo].[Master_Bank]
    ([CountryID]);
GO

-- Creating foreign key on [CurrencyID] in table 'Master_Bank'
ALTER TABLE [dbo].[Master_Bank]
ADD CONSTRAINT [FK_Master_Bank_Master_Currency]
    FOREIGN KEY ([CurrencyID])
    REFERENCES [dbo].[Master_Currency]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Master_Bank_Master_Currency'
CREATE INDEX [IX_FK_Master_Bank_Master_Currency]
ON [dbo].[Master_Bank]
    ([CurrencyID]);
GO

-- Creating foreign key on [BankID] in table 'Master_BankAccount'
ALTER TABLE [dbo].[Master_BankAccount]
ADD CONSTRAINT [FK_Master_BankAccount_Master_Bank]
    FOREIGN KEY ([BankID])
    REFERENCES [dbo].[Master_Bank]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Master_BankAccount_Master_Bank'
CREATE INDEX [IX_FK_Master_BankAccount_Master_Bank]
ON [dbo].[Master_BankAccount]
    ([BankID]);
GO

-- Creating foreign key on [BankID] in table 'Master_BankBranch'
ALTER TABLE [dbo].[Master_BankBranch]
ADD CONSTRAINT [FK_Master_BankBranch_Master_Bank]
    FOREIGN KEY ([BankID])
    REFERENCES [dbo].[Master_Bank]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Master_BankBranch_Master_Bank'
CREATE INDEX [IX_FK_Master_BankBranch_Master_Bank]
ON [dbo].[Master_BankBranch]
    ([BankID]);
GO

-- Creating foreign key on [BankID] in table 'Staff_BankAccountInfo'
ALTER TABLE [dbo].[Staff_BankAccountInfo]
ADD CONSTRAINT [FK_Staff_BankAccountInfo_Master_Bank]
    FOREIGN KEY ([BankID])
    REFERENCES [dbo].[Master_Bank]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Staff_BankAccountInfo_Master_Bank'
CREATE INDEX [IX_FK_Staff_BankAccountInfo_Master_Bank]
ON [dbo].[Staff_BankAccountInfo]
    ([BankID]);
GO

-- Creating foreign key on [AccountTypeID] in table 'Master_BankAccount'
ALTER TABLE [dbo].[Master_BankAccount]
ADD CONSTRAINT [FK_Master_BankAccount_Master_BankAccountType]
    FOREIGN KEY ([AccountTypeID])
    REFERENCES [dbo].[Master_BankAccountType]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Master_BankAccount_Master_BankAccountType'
CREATE INDEX [IX_FK_Master_BankAccount_Master_BankAccountType]
ON [dbo].[Master_BankAccount]
    ([AccountTypeID]);
GO

-- Creating foreign key on [BankBranchID] in table 'Master_BankAccount'
ALTER TABLE [dbo].[Master_BankAccount]
ADD CONSTRAINT [FK_Master_BankAccount_Master_BankBranch]
    FOREIGN KEY ([BankBranchID])
    REFERENCES [dbo].[Master_BankBranch]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Master_BankAccount_Master_BankBranch'
CREATE INDEX [IX_FK_Master_BankAccount_Master_BankBranch]
ON [dbo].[Master_BankAccount]
    ([BankBranchID]);
GO

-- Creating foreign key on [AccountTypeID] in table 'Staff_BankAccountInfo'
ALTER TABLE [dbo].[Staff_BankAccountInfo]
ADD CONSTRAINT [FK_Staff_BankAccountInfo_Master_BankAccountType]
    FOREIGN KEY ([AccountTypeID])
    REFERENCES [dbo].[Master_BankAccountType]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Staff_BankAccountInfo_Master_BankAccountType'
CREATE INDEX [IX_FK_Staff_BankAccountInfo_Master_BankAccountType]
ON [dbo].[Staff_BankAccountInfo]
    ([AccountTypeID]);
GO

-- Creating foreign key on [BankBranchID] in table 'Staff_BankAccountInfo'
ALTER TABLE [dbo].[Staff_BankAccountInfo]
ADD CONSTRAINT [FK_Staff_BankAccountInfo_Master_BankBranch]
    FOREIGN KEY ([BankBranchID])
    REFERENCES [dbo].[Master_BankBranch]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Staff_BankAccountInfo_Master_BankBranch'
CREATE INDEX [IX_FK_Staff_BankAccountInfo_Master_BankBranch]
ON [dbo].[Staff_BankAccountInfo]
    ([BankBranchID]);
GO

-- Creating foreign key on [CountryID] in table 'Master_BranchOffice'
ALTER TABLE [dbo].[Master_BranchOffice]
ADD CONSTRAINT [FK_Company_Branch_Master_Country]
    FOREIGN KEY ([CountryID])
    REFERENCES [dbo].[Master_Country]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Company_Branch_Master_Country'
CREATE INDEX [IX_FK_Company_Branch_Master_Country]
ON [dbo].[Master_BranchOffice]
    ([CountryID]);
GO

-- Creating foreign key on [BranchID] in table 'Master_Department'
ALTER TABLE [dbo].[Master_Department]
ADD CONSTRAINT [FK_Company_Department_Company_Branch]
    FOREIGN KEY ([BranchID])
    REFERENCES [dbo].[Master_BranchOffice]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Company_Department_Company_Branch'
CREATE INDEX [IX_FK_Company_Department_Company_Branch]
ON [dbo].[Master_Department]
    ([BranchID]);
GO

-- Creating foreign key on [BranchID] in table 'Master_Designation'
ALTER TABLE [dbo].[Master_Designation]
ADD CONSTRAINT [FK_Company_Designation_Company_Branch]
    FOREIGN KEY ([BranchID])
    REFERENCES [dbo].[Master_BranchOffice]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Company_Designation_Company_Branch'
CREATE INDEX [IX_FK_Company_Designation_Company_Branch]
ON [dbo].[Master_Designation]
    ([BranchID]);
GO

-- Creating foreign key on [BranchID] in table 'Master_Team'
ALTER TABLE [dbo].[Master_Team]
ADD CONSTRAINT [FK_Company_Team_Company_Branch]
    FOREIGN KEY ([BranchID])
    REFERENCES [dbo].[Master_BranchOffice]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Company_Team_Company_Branch'
CREATE INDEX [IX_FK_Company_Team_Company_Branch]
ON [dbo].[Master_Team]
    ([BranchID]);
GO

-- Creating foreign key on [IndustryClassificationID] in table 'Master_CompanyIndustryClassificationItem'
ALTER TABLE [dbo].[Master_CompanyIndustryClassificationItem]
ADD CONSTRAINT [FK_Master_CompanyIndustryClassificationItem_Master_CompanyIndustryClassification]
    FOREIGN KEY ([IndustryClassificationID])
    REFERENCES [dbo].[Master_CompanyIndustryClassification]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Master_CompanyIndustryClassificationItem_Master_CompanyIndustryClassification'
CREATE INDEX [IX_FK_Master_CompanyIndustryClassificationItem_Master_CompanyIndustryClassification]
ON [dbo].[Master_CompanyIndustryClassificationItem]
    ([IndustryClassificationID]);
GO

-- Creating foreign key on [TradingCategoryID] in table 'Master_CompanyTradingCategoryItem'
ALTER TABLE [dbo].[Master_CompanyTradingCategoryItem]
ADD CONSTRAINT [FK_Master_CompanyTradingCategoryItem_Master_CompanyTradingCategory]
    FOREIGN KEY ([TradingCategoryID])
    REFERENCES [dbo].[Master_CompanyTradingCategory]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Master_CompanyTradingCategoryItem_Master_CompanyTradingCategory'
CREATE INDEX [IX_FK_Master_CompanyTradingCategoryItem_Master_CompanyTradingCategory]
ON [dbo].[Master_CompanyTradingCategoryItem]
    ([TradingCategoryID]);
GO

-- Creating foreign key on [CountryID] in table 'Master_Department'
ALTER TABLE [dbo].[Master_Department]
ADD CONSTRAINT [FK_Company_Department_Master_Country]
    FOREIGN KEY ([CountryID])
    REFERENCES [dbo].[Master_Country]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Company_Department_Master_Country'
CREATE INDEX [IX_FK_Company_Department_Master_Country]
ON [dbo].[Master_Department]
    ([CountryID]);
GO

-- Creating foreign key on [CountryID] in table 'Master_Designation'
ALTER TABLE [dbo].[Master_Designation]
ADD CONSTRAINT [FK_Company_Designation_Master_Country]
    FOREIGN KEY ([CountryID])
    REFERENCES [dbo].[Master_Country]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Company_Designation_Master_Country'
CREATE INDEX [IX_FK_Company_Designation_Master_Country]
ON [dbo].[Master_Designation]
    ([CountryID]);
GO

-- Creating foreign key on [CountryID] in table 'Master_Team'
ALTER TABLE [dbo].[Master_Team]
ADD CONSTRAINT [FK_Company_Team_Master_Country]
    FOREIGN KEY ([CountryID])
    REFERENCES [dbo].[Master_Country]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Company_Team_Master_Country'
CREATE INDEX [IX_FK_Company_Team_Master_Country]
ON [dbo].[Master_Team]
    ([CountryID]);
GO

-- Creating foreign key on [CurrencyID] in table 'Master_Country'
ALTER TABLE [dbo].[Master_Country]
ADD CONSTRAINT [FK_Master_Country_Master_Currency]
    FOREIGN KEY ([CurrencyID])
    REFERENCES [dbo].[Master_Currency]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Master_Country_Master_Currency'
CREATE INDEX [IX_FK_Master_Country_Master_Currency]
ON [dbo].[Master_Country]
    ([CurrencyID]);
GO

-- Creating foreign key on [CountryID] in table 'Master_Culture'
ALTER TABLE [dbo].[Master_Culture]
ADD CONSTRAINT [FK_Master_Culture_Master_Country]
    FOREIGN KEY ([CountryID])
    REFERENCES [dbo].[Master_Country]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Master_Culture_Master_Country'
CREATE INDEX [IX_FK_Master_Culture_Master_Country]
ON [dbo].[Master_Culture]
    ([CountryID]);
GO

-- Creating foreign key on [CountryID] in table 'Master_Division'
ALTER TABLE [dbo].[Master_Division]
ADD CONSTRAINT [FK_Master_Division_Master_Country]
    FOREIGN KEY ([CountryID])
    REFERENCES [dbo].[Master_Country]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Master_Division_Master_Country'
CREATE INDEX [IX_FK_Master_Division_Master_Country]
ON [dbo].[Master_Division]
    ([CountryID]);
GO

-- Creating foreign key on [CountryID] in table 'Staff_EducationalHistory'
ALTER TABLE [dbo].[Staff_EducationalHistory]
ADD CONSTRAINT [FK_Staff_EducationalHistory_Master_Country]
    FOREIGN KEY ([CountryID])
    REFERENCES [dbo].[Master_Country]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Staff_EducationalHistory_Master_Country'
CREATE INDEX [IX_FK_Staff_EducationalHistory_Master_Country]
ON [dbo].[Staff_EducationalHistory]
    ([CountryID]);
GO

-- Creating foreign key on [CountryOfCitizenship] in table 'Staffs'
ALTER TABLE [dbo].[Staffs]
ADD CONSTRAINT [FK_Staff_Master_Country]
    FOREIGN KEY ([CountryOfCitizenship])
    REFERENCES [dbo].[Master_Country]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Staff_Master_Country'
CREATE INDEX [IX_FK_Staff_Master_Country]
ON [dbo].[Staffs]
    ([CountryOfCitizenship]);
GO

-- Creating foreign key on [CurrencyID] in table 'Master_CurrencyRate'
ALTER TABLE [dbo].[Master_CurrencyRate]
ADD CONSTRAINT [FK_Master_CurrencyRate_Master_Currency]
    FOREIGN KEY ([CurrencyID])
    REFERENCES [dbo].[Master_Currency]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Master_CurrencyRate_Master_Currency'
CREATE INDEX [IX_FK_Master_CurrencyRate_Master_Currency]
ON [dbo].[Master_CurrencyRate]
    ([CurrencyID]);
GO

-- Creating foreign key on [CurrencyID] in table 'Master_UnitPriceSetting'
ALTER TABLE [dbo].[Master_UnitPriceSetting]
ADD CONSTRAINT [FK_Master_UnitPrice_Master_Currency]
    FOREIGN KEY ([CurrencyID])
    REFERENCES [dbo].[Master_Currency]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Master_UnitPrice_Master_Currency'
CREATE INDEX [IX_FK_Master_UnitPrice_Master_Currency]
ON [dbo].[Master_UnitPriceSetting]
    ([CurrencyID]);
GO

-- Creating foreign key on [CurrencyID] in table 'Order_Web'
ALTER TABLE [dbo].[Order_Web]
ADD CONSTRAINT [FK_Order_Web_Master_Currency]
    FOREIGN KEY ([CurrencyID])
    REFERENCES [dbo].[Master_Currency]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Order_Web_Master_Currency'
CREATE INDEX [IX_FK_Order_Web_Master_Currency]
ON [dbo].[Order_Web]
    ([CurrencyID]);
GO

-- Creating foreign key on [CurrencyID] in table 'TranslationLevels'
ALTER TABLE [dbo].[TranslationLevels]
ADD CONSTRAINT [FK_TranslationLevel_Master_Currency]
    FOREIGN KEY ([CurrencyID])
    REFERENCES [dbo].[Master_Currency]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_TranslationLevel_Master_Currency'
CREATE INDEX [IX_FK_TranslationLevel_Master_Currency]
ON [dbo].[TranslationLevels]
    ([CurrencyID]);
GO

-- Creating foreign key on [CurrencyID] in table 'TransproLanguagePriceCategories'
ALTER TABLE [dbo].[TransproLanguagePriceCategories]
ADD CONSTRAINT [FK_TransproLanguagePriceCategory_Master_Currency]
    FOREIGN KEY ([CurrencyID])
    REFERENCES [dbo].[Master_Currency]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_TransproLanguagePriceCategory_Master_Currency'
CREATE INDEX [IX_FK_TransproLanguagePriceCategory_Master_Currency]
ON [dbo].[TransproLanguagePriceCategories]
    ([CurrencyID]);
GO

-- Creating foreign key on [DepartmentID] in table 'Master_Designation'
ALTER TABLE [dbo].[Master_Designation]
ADD CONSTRAINT [FK_Company_Designation_Company_Department]
    FOREIGN KEY ([DepartmentID])
    REFERENCES [dbo].[Master_Department]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Company_Designation_Company_Department'
CREATE INDEX [IX_FK_Company_Designation_Company_Department]
ON [dbo].[Master_Designation]
    ([DepartmentID]);
GO

-- Creating foreign key on [DepartmentID] in table 'Master_Team'
ALTER TABLE [dbo].[Master_Team]
ADD CONSTRAINT [FK_Company_Team_Company_Department]
    FOREIGN KEY ([DepartmentID])
    REFERENCES [dbo].[Master_Department]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Company_Team_Company_Department'
CREATE INDEX [IX_FK_Company_Team_Company_Department]
ON [dbo].[Master_Team]
    ([DepartmentID]);
GO

-- Creating foreign key on [DivisionID] in table 'Master_Designation'
ALTER TABLE [dbo].[Master_Designation]
ADD CONSTRAINT [FK_Company_Designation_Company_Division]
    FOREIGN KEY ([DivisionID])
    REFERENCES [dbo].[Master_Division]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Company_Designation_Company_Division'
CREATE INDEX [IX_FK_Company_Designation_Company_Division]
ON [dbo].[Master_Designation]
    ([DivisionID]);
GO

-- Creating foreign key on [TeamID] in table 'Master_Designation'
ALTER TABLE [dbo].[Master_Designation]
ADD CONSTRAINT [FK_Company_Designation_Company_Team]
    FOREIGN KEY ([TeamID])
    REFERENCES [dbo].[Master_Team]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Company_Designation_Company_Team'
CREATE INDEX [IX_FK_Company_Designation_Company_Team]
ON [dbo].[Master_Designation]
    ([TeamID]);
GO

-- Creating foreign key on [DivisionID] in table 'Master_Team'
ALTER TABLE [dbo].[Master_Team]
ADD CONSTRAINT [FK_Company_Team_Company_Division]
    FOREIGN KEY ([DivisionID])
    REFERENCES [dbo].[Master_Division]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Company_Team_Company_Division'
CREATE INDEX [IX_FK_Company_Team_Company_Division]
ON [dbo].[Master_Team]
    ([DivisionID]);
GO

-- Creating foreign key on [Type] in table 'Master_EstimationServiceType'
ALTER TABLE [dbo].[Master_EstimationServiceType]
ADD CONSTRAINT [FK_Master_EstimationServiceType_Master_EstimationType]
    FOREIGN KEY ([Type])
    REFERENCES [dbo].[Master_EstimationType]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Master_EstimationServiceType_Master_EstimationType'
CREATE INDEX [IX_FK_Master_EstimationServiceType_Master_EstimationType]
ON [dbo].[Master_EstimationServiceType]
    ([Type]);
GO

-- Creating foreign key on [SpecializedField] in table 'Master_EstimationSubSpecializedField'
ALTER TABLE [dbo].[Master_EstimationSubSpecializedField]
ADD CONSTRAINT [FK_Master_EstimationSubSpecializedField_Master_EstimationSpecializedField]
    FOREIGN KEY ([SpecializedField])
    REFERENCES [dbo].[Master_EstimationSpecializedField]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Master_EstimationSubSpecializedField_Master_EstimationSpecializedField'
CREATE INDEX [IX_FK_Master_EstimationSubSpecializedField_Master_EstimationSpecializedField]
ON [dbo].[Master_EstimationSubSpecializedField]
    ([SpecializedField]);
GO

-- Creating foreign key on [TranslationFieldID] in table 'Order_Web'
ALTER TABLE [dbo].[Order_Web]
ADD CONSTRAINT [FK_Order_Web_Master_EstimationSpecializedField]
    FOREIGN KEY ([TranslationFieldID])
    REFERENCES [dbo].[Master_EstimationSpecializedField]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Order_Web_Master_EstimationSpecializedField'
CREATE INDEX [IX_FK_Order_Web_Master_EstimationSpecializedField]
ON [dbo].[Order_Web]
    ([TranslationFieldID]);
GO

-- Creating foreign key on [ProfessionalID] in table 'Staff_ProfessionalSpeciality'
ALTER TABLE [dbo].[Staff_ProfessionalSpeciality]
ADD CONSTRAINT [FK_Staff_ProfessionalSpeciality_Master_StaffProfession]
    FOREIGN KEY ([ProfessionalID])
    REFERENCES [dbo].[Master_EstimationSpecializedField]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Staff_ProfessionalSpeciality_Master_StaffProfession'
CREATE INDEX [IX_FK_Staff_ProfessionalSpeciality_Master_StaffProfession]
ON [dbo].[Staff_ProfessionalSpeciality]
    ([ProfessionalID]);
GO

-- Creating foreign key on [SpecialityFieldID] in table 'TransproLanguagePriceCategories'
ALTER TABLE [dbo].[TransproLanguagePriceCategories]
ADD CONSTRAINT [FK_TransproLanguagePriceCategory_Master_EstimationSpecializedField]
    FOREIGN KEY ([SpecialityFieldID])
    REFERENCES [dbo].[Master_EstimationSpecializedField]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_TransproLanguagePriceCategory_Master_EstimationSpecializedField'
CREATE INDEX [IX_FK_TransproLanguagePriceCategory_Master_EstimationSpecializedField]
ON [dbo].[TransproLanguagePriceCategories]
    ([SpecialityFieldID]);
GO

-- Creating foreign key on [SubSpecialityFieldID] in table 'TransproLanguagePriceCategories'
ALTER TABLE [dbo].[TransproLanguagePriceCategories]
ADD CONSTRAINT [FK_TransproLanguagePriceCategory_Master_EstimationSubSpecializedField]
    FOREIGN KEY ([SubSpecialityFieldID])
    REFERENCES [dbo].[Master_EstimationSubSpecializedField]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_TransproLanguagePriceCategory_Master_EstimationSubSpecializedField'
CREATE INDEX [IX_FK_TransproLanguagePriceCategory_Master_EstimationSubSpecializedField]
ON [dbo].[TransproLanguagePriceCategories]
    ([SubSpecialityFieldID]);
GO

-- Creating foreign key on [EstimationTypeID] in table 'Master_UnitPriceSetting'
ALTER TABLE [dbo].[Master_UnitPriceSetting]
ADD CONSTRAINT [FK_Master_UnitPriceSetting_Master_UnitPriceSetting]
    FOREIGN KEY ([EstimationTypeID])
    REFERENCES [dbo].[Master_EstimationType]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Master_UnitPriceSetting_Master_UnitPriceSetting'
CREATE INDEX [IX_FK_Master_UnitPriceSetting_Master_UnitPriceSetting]
ON [dbo].[Master_UnitPriceSetting]
    ([EstimationTypeID]);
GO

-- Creating foreign key on [ServiceTypeID] in table 'Staff_ServiceTypes'
ALTER TABLE [dbo].[Staff_ServiceTypes]
ADD CONSTRAINT [FK_Staff_ServiceTypes_Staff_ServiceTypes]
    FOREIGN KEY ([ServiceTypeID])
    REFERENCES [dbo].[Master_EstimationType]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Staff_ServiceTypes_Staff_ServiceTypes'
CREATE INDEX [IX_FK_Staff_ServiceTypes_Staff_ServiceTypes]
ON [dbo].[Staff_ServiceTypes]
    ([ServiceTypeID]);
GO

-- Creating foreign key on [SourceLanguageID] in table 'Master_UnitPriceSetting'
ALTER TABLE [dbo].[Master_UnitPriceSetting]
ADD CONSTRAINT [FK_Master_UnitPrice_SourceLanguage]
    FOREIGN KEY ([SourceLanguageID])
    REFERENCES [dbo].[Master_Language]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Master_UnitPrice_SourceLanguage'
CREATE INDEX [IX_FK_Master_UnitPrice_SourceLanguage]
ON [dbo].[Master_UnitPriceSetting]
    ([SourceLanguageID]);
GO

-- Creating foreign key on [TargetLanguageID] in table 'Master_UnitPriceSetting'
ALTER TABLE [dbo].[Master_UnitPriceSetting]
ADD CONSTRAINT [FK_Master_UnitPrice_TargetLanguage]
    FOREIGN KEY ([TargetLanguageID])
    REFERENCES [dbo].[Master_Language]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Master_UnitPrice_TargetLanguage'
CREATE INDEX [IX_FK_Master_UnitPrice_TargetLanguage]
ON [dbo].[Master_UnitPriceSetting]
    ([TargetLanguageID]);
GO

-- Creating foreign key on [SourceLanguageID] in table 'Order_Web'
ALTER TABLE [dbo].[Order_Web]
ADD CONSTRAINT [FK_Order_Web_Master_Language]
    FOREIGN KEY ([SourceLanguageID])
    REFERENCES [dbo].[Master_Language]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Order_Web_Master_Language'
CREATE INDEX [IX_FK_Order_Web_Master_Language]
ON [dbo].[Order_Web]
    ([SourceLanguageID]);
GO

-- Creating foreign key on [TargetLanguageID] in table 'Order_Web'
ALTER TABLE [dbo].[Order_Web]
ADD CONSTRAINT [FK_Order_Web_TargetLanguage]
    FOREIGN KEY ([TargetLanguageID])
    REFERENCES [dbo].[Master_Language]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Order_Web_TargetLanguage'
CREATE INDEX [IX_FK_Order_Web_TargetLanguage]
ON [dbo].[Order_Web]
    ([TargetLanguageID]);
GO

-- Creating foreign key on [FoeignLanguageID1] in table 'Staff_SkillCertificate'
ALTER TABLE [dbo].[Staff_SkillCertificate]
ADD CONSTRAINT [FK_Staff_SkillCertificate_ForeignLanguage1]
    FOREIGN KEY ([FoeignLanguageID1])
    REFERENCES [dbo].[Master_Language]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Staff_SkillCertificate_ForeignLanguage1'
CREATE INDEX [IX_FK_Staff_SkillCertificate_ForeignLanguage1]
ON [dbo].[Staff_SkillCertificate]
    ([FoeignLanguageID1]);
GO

-- Creating foreign key on [FoeignLanguageID2] in table 'Staff_SkillCertificate'
ALTER TABLE [dbo].[Staff_SkillCertificate]
ADD CONSTRAINT [FK_Staff_SkillCertificate_ForeignLanguage2]
    FOREIGN KEY ([FoeignLanguageID2])
    REFERENCES [dbo].[Master_Language]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Staff_SkillCertificate_ForeignLanguage2'
CREATE INDEX [IX_FK_Staff_SkillCertificate_ForeignLanguage2]
ON [dbo].[Staff_SkillCertificate]
    ([FoeignLanguageID2]);
GO

-- Creating foreign key on [FoeignLanguageID3] in table 'Staff_SkillCertificate'
ALTER TABLE [dbo].[Staff_SkillCertificate]
ADD CONSTRAINT [FK_Staff_SkillCertificate_ForeignLanguage3]
    FOREIGN KEY ([FoeignLanguageID3])
    REFERENCES [dbo].[Master_Language]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Staff_SkillCertificate_ForeignLanguage3'
CREATE INDEX [IX_FK_Staff_SkillCertificate_ForeignLanguage3]
ON [dbo].[Staff_SkillCertificate]
    ([FoeignLanguageID3]);
GO

-- Creating foreign key on [MainLanguageID] in table 'Staff_SkillCertificate'
ALTER TABLE [dbo].[Staff_SkillCertificate]
ADD CONSTRAINT [FK_Staff_SkillCertificate_Master_Language]
    FOREIGN KEY ([MainLanguageID])
    REFERENCES [dbo].[Master_Language]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Staff_SkillCertificate_Master_Language'
CREATE INDEX [IX_FK_Staff_SkillCertificate_Master_Language]
ON [dbo].[Staff_SkillCertificate]
    ([MainLanguageID]);
GO

-- Creating foreign key on [NativeLanguageID] in table 'Staffs'
ALTER TABLE [dbo].[Staffs]
ADD CONSTRAINT [FK_Staff_Master_Language]
    FOREIGN KEY ([NativeLanguageID])
    REFERENCES [dbo].[Master_Language]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Staff_Master_Language'
CREATE INDEX [IX_FK_Staff_Master_Language]
ON [dbo].[Staffs]
    ([NativeLanguageID]);
GO

-- Creating foreign key on [ForiegnLanguage1ID] in table 'Staffs'
ALTER TABLE [dbo].[Staffs]
ADD CONSTRAINT [FK_Staff_Master_Language1]
    FOREIGN KEY ([ForiegnLanguage1ID])
    REFERENCES [dbo].[Master_Language]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Staff_Master_Language1'
CREATE INDEX [IX_FK_Staff_Master_Language1]
ON [dbo].[Staffs]
    ([ForiegnLanguage1ID]);
GO

-- Creating foreign key on [ForiegnLanguage2ID] in table 'Staffs'
ALTER TABLE [dbo].[Staffs]
ADD CONSTRAINT [FK_Staff_Master_Language2]
    FOREIGN KEY ([ForiegnLanguage2ID])
    REFERENCES [dbo].[Master_Language]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Staff_Master_Language2'
CREATE INDEX [IX_FK_Staff_Master_Language2]
ON [dbo].[Staffs]
    ([ForiegnLanguage2ID]);
GO

-- Creating foreign key on [ForiegnLanguage3ID] in table 'Staffs'
ALTER TABLE [dbo].[Staffs]
ADD CONSTRAINT [FK_Staff_Master_Language3]
    FOREIGN KEY ([ForiegnLanguage3ID])
    REFERENCES [dbo].[Master_Language]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Staff_Master_Language3'
CREATE INDEX [IX_FK_Staff_Master_Language3]
ON [dbo].[Staffs]
    ([ForiegnLanguage3ID]);
GO

-- Creating foreign key on [ForiegnLanguage4ID] in table 'Staffs'
ALTER TABLE [dbo].[Staffs]
ADD CONSTRAINT [FK_Staff_Master_Language4]
    FOREIGN KEY ([ForiegnLanguage4ID])
    REFERENCES [dbo].[Master_Language]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Staff_Master_Language4'
CREATE INDEX [IX_FK_Staff_Master_Language4]
ON [dbo].[Staffs]
    ([ForiegnLanguage4ID]);
GO

-- Creating foreign key on [SourceLanguageID] in table 'TransproLanguagePriceCategories'
ALTER TABLE [dbo].[TransproLanguagePriceCategories]
ADD CONSTRAINT [FK_TransproLanguagePriceCategory_SourceLanguage]
    FOREIGN KEY ([SourceLanguageID])
    REFERENCES [dbo].[Master_Language]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_TransproLanguagePriceCategory_SourceLanguage'
CREATE INDEX [IX_FK_TransproLanguagePriceCategory_SourceLanguage]
ON [dbo].[TransproLanguagePriceCategories]
    ([SourceLanguageID]);
GO

-- Creating foreign key on [TargetLanguageID] in table 'TransproLanguagePriceCategories'
ALTER TABLE [dbo].[TransproLanguagePriceCategories]
ADD CONSTRAINT [FK_TransproLanguagePriceCategory_TargetLanguage]
    FOREIGN KEY ([TargetLanguageID])
    REFERENCES [dbo].[Master_Language]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_TransproLanguagePriceCategory_TargetLanguage'
CREATE INDEX [IX_FK_TransproLanguagePriceCategory_TargetLanguage]
ON [dbo].[TransproLanguagePriceCategories]
    ([TargetLanguageID]);
GO

-- Creating foreign key on [MarketID] in table 'Master_TeamToMarket'
ALTER TABLE [dbo].[Master_TeamToMarket]
ADD CONSTRAINT [FK_Company_TeamToMarket_Company_Market]
    FOREIGN KEY ([MarketID])
    REFERENCES [dbo].[Master_Market]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Company_TeamToMarket_Company_Market'
CREATE INDEX [IX_FK_Company_TeamToMarket_Company_Market]
ON [dbo].[Master_TeamToMarket]
    ([MarketID]);
GO

-- Creating foreign key on [BusinessCategoryID] in table 'Master_StaffBusinessCategoryDetails'
ALTER TABLE [dbo].[Master_StaffBusinessCategoryDetails]
ADD CONSTRAINT [FK_Master_StaffBusinessCategoryDetails_Master_StaffBusinessCategory]
    FOREIGN KEY ([BusinessCategoryID])
    REFERENCES [dbo].[Master_StaffBusinessCategory]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Master_StaffBusinessCategoryDetails_Master_StaffBusinessCategory'
CREATE INDEX [IX_FK_Master_StaffBusinessCategoryDetails_Master_StaffBusinessCategory]
ON [dbo].[Master_StaffBusinessCategoryDetails]
    ([BusinessCategoryID]);
GO

-- Creating foreign key on [BusinessTypeID] in table 'Staff_JobHistory'
ALTER TABLE [dbo].[Staff_JobHistory]
ADD CONSTRAINT [FK_Staff_JobHistory_Master_StaffBusinessCategory]
    FOREIGN KEY ([BusinessTypeID])
    REFERENCES [dbo].[Master_StaffBusinessCategory]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Staff_JobHistory_Master_StaffBusinessCategory'
CREATE INDEX [IX_FK_Staff_JobHistory_Master_StaffBusinessCategory]
ON [dbo].[Staff_JobHistory]
    ([BusinessTypeID]);
GO

-- Creating foreign key on [BusinessTypeItemID] in table 'Staff_JobHistory'
ALTER TABLE [dbo].[Staff_JobHistory]
ADD CONSTRAINT [FK_Staff_JobHistory_Master_StaffBusinessCategoryDetails]
    FOREIGN KEY ([BusinessTypeItemID])
    REFERENCES [dbo].[Master_StaffBusinessCategoryDetails]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Staff_JobHistory_Master_StaffBusinessCategoryDetails'
CREATE INDEX [IX_FK_Staff_JobHistory_Master_StaffBusinessCategoryDetails]
ON [dbo].[Staff_JobHistory]
    ([BusinessTypeItemID]);
GO

-- Creating foreign key on [CurrentStateID] in table 'Staff_CurrentStates'
ALTER TABLE [dbo].[Staff_CurrentStates]
ADD CONSTRAINT [FK_Staff_CurrentStates_Staff_CurrentStates]
    FOREIGN KEY ([CurrentStateID])
    REFERENCES [dbo].[Master_StaffCurrentState]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Staff_CurrentStates_Staff_CurrentStates'
CREATE INDEX [IX_FK_Staff_CurrentStates_Staff_CurrentStates]
ON [dbo].[Staff_CurrentStates]
    ([CurrentStateID]);
GO

-- Creating foreign key on [DevelopmentSkillID] in table 'Master_StaffDevelopmentSkillItem'
ALTER TABLE [dbo].[Master_StaffDevelopmentSkillItem]
ADD CONSTRAINT [FK_Master_StaffDevelopmentSkillItem_Master_StaffDevelopmentSkill]
    FOREIGN KEY ([DevelopmentSkillID])
    REFERENCES [dbo].[Master_StaffDevelopmentSkill]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Master_StaffDevelopmentSkillItem_Master_StaffDevelopmentSkill'
CREATE INDEX [IX_FK_Master_StaffDevelopmentSkillItem_Master_StaffDevelopmentSkill]
ON [dbo].[Master_StaffDevelopmentSkillItem]
    ([DevelopmentSkillID]);
GO

-- Creating foreign key on [DevelopmentSkillID] in table 'Staff_DevelopmentSkill'
ALTER TABLE [dbo].[Staff_DevelopmentSkill]
ADD CONSTRAINT [FK_Staff_DevelopmentSkill_Master_StaffDevelopmentSkill]
    FOREIGN KEY ([DevelopmentSkillID])
    REFERENCES [dbo].[Master_StaffDevelopmentSkill]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Staff_DevelopmentSkill_Master_StaffDevelopmentSkill'
CREATE INDEX [IX_FK_Staff_DevelopmentSkill_Master_StaffDevelopmentSkill]
ON [dbo].[Staff_DevelopmentSkill]
    ([DevelopmentSkillID]);
GO

-- Creating foreign key on [DevelopmentSkillItemID] in table 'Staff_DevelopmentSkill'
ALTER TABLE [dbo].[Staff_DevelopmentSkill]
ADD CONSTRAINT [FK_Staff_DevelopmentSkill_Master_StaffDevelopmentSkillItem]
    FOREIGN KEY ([DevelopmentSkillItemID])
    REFERENCES [dbo].[Master_StaffDevelopmentSkillItem]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Staff_DevelopmentSkill_Master_StaffDevelopmentSkillItem'
CREATE INDEX [IX_FK_Staff_DevelopmentSkill_Master_StaffDevelopmentSkillItem]
ON [dbo].[Staff_DevelopmentSkill]
    ([DevelopmentSkillItemID]);
GO

-- Creating foreign key on [DegreeID] in table 'Staff_EducationalHistory'
ALTER TABLE [dbo].[Staff_EducationalHistory]
ADD CONSTRAINT [FK_Staff_EducationalHistory_staffeducationalDegree]
    FOREIGN KEY ([DegreeID])
    REFERENCES [dbo].[Master_StaffEducationalDegree]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Staff_EducationalHistory_staffeducationalDegree'
CREATE INDEX [IX_FK_Staff_EducationalHistory_staffeducationalDegree]
ON [dbo].[Staff_EducationalHistory]
    ([DegreeID]);
GO

-- Creating foreign key on [EmploymentTypeID] in table 'Staff_JobHistory'
ALTER TABLE [dbo].[Staff_JobHistory]
ADD CONSTRAINT [FK_Staff_JobHistory_Staff_Master_StaffEmplymentType]
    FOREIGN KEY ([EmploymentTypeID])
    REFERENCES [dbo].[Master_StaffEmploymentType]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Staff_JobHistory_Staff_Master_StaffEmplymentType'
CREATE INDEX [IX_FK_Staff_JobHistory_Staff_Master_StaffEmplymentType]
ON [dbo].[Staff_JobHistory]
    ([EmploymentTypeID]);
GO

-- Creating foreign key on [InterpretationFieldID] in table 'Staff_InterpretationSpecialFields'
ALTER TABLE [dbo].[Staff_InterpretationSpecialFields]
ADD CONSTRAINT [FK_Staff_InterpretationSpecialFields_Master_StaffInterpretationFields]
    FOREIGN KEY ([InterpretationFieldID])
    REFERENCES [dbo].[Master_StaffInterpretationFields]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Staff_InterpretationSpecialFields_Master_StaffInterpretationFields'
CREATE INDEX [IX_FK_Staff_InterpretationSpecialFields_Master_StaffInterpretationFields]
ON [dbo].[Staff_InterpretationSpecialFields]
    ([InterpretationFieldID]);
GO

-- Creating foreign key on [JobCategoryID] in table 'Staff_JobCategories'
ALTER TABLE [dbo].[Staff_JobCategories]
ADD CONSTRAINT [FK_Staff_JobCategories_Master_StaffJobCategory]
    FOREIGN KEY ([JobCategoryID])
    REFERENCES [dbo].[Master_StaffJobCategory]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Staff_JobCategories_Master_StaffJobCategory'
CREATE INDEX [IX_FK_Staff_JobCategories_Master_StaffJobCategory]
ON [dbo].[Staff_JobCategories]
    ([JobCategoryID]);
GO

-- Creating foreign key on [JobCategoryID] in table 'Master_StaffJobCategoryDetails'
ALTER TABLE [dbo].[Master_StaffJobCategoryDetails]
ADD CONSTRAINT [FK_Staff_JobCategoryDetails_Staff_JobCategory]
    FOREIGN KEY ([JobCategoryID])
    REFERENCES [dbo].[Master_StaffJobCategory]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Staff_JobCategoryDetails_Staff_JobCategory'
CREATE INDEX [IX_FK_Staff_JobCategoryDetails_Staff_JobCategory]
ON [dbo].[Master_StaffJobCategoryDetails]
    ([JobCategoryID]);
GO

-- Creating foreign key on [JobType1ID] in table 'Staff_JobHistory'
ALTER TABLE [dbo].[Staff_JobHistory]
ADD CONSTRAINT [FK_Staff_JobHistory_Master_StaffJobCategory]
    FOREIGN KEY ([JobType1ID])
    REFERENCES [dbo].[Master_StaffJobCategory]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Staff_JobHistory_Master_StaffJobCategory'
CREATE INDEX [IX_FK_Staff_JobHistory_Master_StaffJobCategory]
ON [dbo].[Staff_JobHistory]
    ([JobType1ID]);
GO

-- Creating foreign key on [JobType2ID] in table 'Staff_JobHistory'
ALTER TABLE [dbo].[Staff_JobHistory]
ADD CONSTRAINT [FK_Staff_JobHistory_Master_StaffJobCategory1]
    FOREIGN KEY ([JobType2ID])
    REFERENCES [dbo].[Master_StaffJobCategory]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Staff_JobHistory_Master_StaffJobCategory1'
CREATE INDEX [IX_FK_Staff_JobHistory_Master_StaffJobCategory1]
ON [dbo].[Staff_JobHistory]
    ([JobType2ID]);
GO

-- Creating foreign key on [JobType1ItemID] in table 'Staff_JobHistory'
ALTER TABLE [dbo].[Staff_JobHistory]
ADD CONSTRAINT [FK_Staff_JobHistory_Master_StaffJobCategoryDetails]
    FOREIGN KEY ([JobType1ItemID])
    REFERENCES [dbo].[Master_StaffJobCategoryDetails]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Staff_JobHistory_Master_StaffJobCategoryDetails'
CREATE INDEX [IX_FK_Staff_JobHistory_Master_StaffJobCategoryDetails]
ON [dbo].[Staff_JobHistory]
    ([JobType1ItemID]);
GO

-- Creating foreign key on [JobType2ItemID] in table 'Staff_JobHistory'
ALTER TABLE [dbo].[Staff_JobHistory]
ADD CONSTRAINT [FK_Staff_JobHistory_Master_StaffJobCategoryDetails1]
    FOREIGN KEY ([JobType2ItemID])
    REFERENCES [dbo].[Master_StaffJobCategoryDetails]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Staff_JobHistory_Master_StaffJobCategoryDetails1'
CREATE INDEX [IX_FK_Staff_JobHistory_Master_StaffJobCategoryDetails1]
ON [dbo].[Staff_JobHistory]
    ([JobType2ItemID]);
GO

-- Creating foreign key on [KnowledgeFieldID] in table 'Master_StaffKnowledgeFieldItem'
ALTER TABLE [dbo].[Master_StaffKnowledgeFieldItem]
ADD CONSTRAINT [FK_Master_StaffKnowledgeFieldItem_Master_StaffKnowledgeField]
    FOREIGN KEY ([KnowledgeFieldID])
    REFERENCES [dbo].[Master_StaffKnowledgeField]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Master_StaffKnowledgeFieldItem_Master_StaffKnowledgeField'
CREATE INDEX [IX_FK_Master_StaffKnowledgeFieldItem_Master_StaffKnowledgeField]
ON [dbo].[Master_StaffKnowledgeFieldItem]
    ([KnowledgeFieldID]);
GO

-- Creating foreign key on [KnowledgeFieldID] in table 'Staff_KnowledgeFields'
ALTER TABLE [dbo].[Staff_KnowledgeFields]
ADD CONSTRAINT [FK_Staff_KnowledgeFields_Master_StaffKnowledgeField]
    FOREIGN KEY ([KnowledgeFieldID])
    REFERENCES [dbo].[Master_StaffKnowledgeField]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Staff_KnowledgeFields_Master_StaffKnowledgeField'
CREATE INDEX [IX_FK_Staff_KnowledgeFields_Master_StaffKnowledgeField]
ON [dbo].[Staff_KnowledgeFields]
    ([KnowledgeFieldID]);
GO

-- Creating foreign key on [KnowledgeFieldItemID] in table 'Staff_KnowledgeFields'
ALTER TABLE [dbo].[Staff_KnowledgeFields]
ADD CONSTRAINT [FK_Staff_KnowledgeFields_Master_StaffKnowledgeFieldItem]
    FOREIGN KEY ([KnowledgeFieldItemID])
    REFERENCES [dbo].[Master_StaffKnowledgeFieldItem]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Staff_KnowledgeFields_Master_StaffKnowledgeFieldItem'
CREATE INDEX [IX_FK_Staff_KnowledgeFields_Master_StaffKnowledgeFieldItem]
ON [dbo].[Staff_KnowledgeFields]
    ([KnowledgeFieldItemID]);
GO

-- Creating foreign key on [StaffMajorSubjectID] in table 'Master_StaffMajorSubjectDetails'
ALTER TABLE [dbo].[Master_StaffMajorSubjectDetails]
ADD CONSTRAINT [FK_Master_StaffMajorSubjectDetails_Master_StaffMajorSubject]
    FOREIGN KEY ([StaffMajorSubjectID])
    REFERENCES [dbo].[Master_StaffMajorSubject]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Master_StaffMajorSubjectDetails_Master_StaffMajorSubject'
CREATE INDEX [IX_FK_Master_StaffMajorSubjectDetails_Master_StaffMajorSubject]
ON [dbo].[Master_StaffMajorSubjectDetails]
    ([StaffMajorSubjectID]);
GO

-- Creating foreign key on [MajorSubjectID] in table 'Staff_EducationalHistory'
ALTER TABLE [dbo].[Staff_EducationalHistory]
ADD CONSTRAINT [FK_Staff_EducationalHistory_Master_StaffMajorSubject]
    FOREIGN KEY ([MajorSubjectID])
    REFERENCES [dbo].[Master_StaffMajorSubject]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Staff_EducationalHistory_Master_StaffMajorSubject'
CREATE INDEX [IX_FK_Staff_EducationalHistory_Master_StaffMajorSubject]
ON [dbo].[Staff_EducationalHistory]
    ([MajorSubjectID]);
GO

-- Creating foreign key on [StaffSoftwareSkillID] in table 'Staff_SoftwareSkill'
ALTER TABLE [dbo].[Staff_SoftwareSkill]
ADD CONSTRAINT [FK_StaffSoftwareSkill_Master_StaffSoftwareSkill]
    FOREIGN KEY ([StaffSoftwareSkillID])
    REFERENCES [dbo].[Master_StaffSoftwareSkill]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_StaffSoftwareSkill_Master_StaffSoftwareSkill'
CREATE INDEX [IX_FK_StaffSoftwareSkill_Master_StaffSoftwareSkill]
ON [dbo].[Staff_SoftwareSkill]
    ([StaffSoftwareSkillID]);
GO

-- Creating foreign key on [TechnicalSkillCategoryID] in table 'Master_StaffTechnicalSkillItems'
ALTER TABLE [dbo].[Master_StaffTechnicalSkillItems]
ADD CONSTRAINT [FK_Staff_TechnicalSkillItems_Staff_TechnicalSkillCategory]
    FOREIGN KEY ([TechnicalSkillCategoryID])
    REFERENCES [dbo].[Master_StaffTechnicalSkillCategory]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Staff_TechnicalSkillItems_Staff_TechnicalSkillCategory'
CREATE INDEX [IX_FK_Staff_TechnicalSkillItems_Staff_TechnicalSkillCategory]
ON [dbo].[Master_StaffTechnicalSkillItems]
    ([TechnicalSkillCategoryID]);
GO

-- Creating foreign key on [TranslationSpecialFieldID] in table 'Staff_TranslationSpecialFields'
ALTER TABLE [dbo].[Staff_TranslationSpecialFields]
ADD CONSTRAINT [FK_Staff_TranslationSpecialFields_Master_StaffTranslationFields]
    FOREIGN KEY ([TranslationSpecialFieldID])
    REFERENCES [dbo].[Master_StaffTranslationFields]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Staff_TranslationSpecialFields_Master_StaffTranslationFields'
CREATE INDEX [IX_FK_Staff_TranslationSpecialFields_Master_StaffTranslationFields]
ON [dbo].[Staff_TranslationSpecialFields]
    ([TranslationSpecialFieldID]);
GO

-- Creating foreign key on [TeamID] in table 'Master_TeamToMarket'
ALTER TABLE [dbo].[Master_TeamToMarket]
ADD CONSTRAINT [FK_Company_TeamToMarket_Company_Team]
    FOREIGN KEY ([TeamID])
    REFERENCES [dbo].[Master_Team]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Company_TeamToMarket_Company_Team'
CREATE INDEX [IX_FK_Company_TeamToMarket_Company_Team]
ON [dbo].[Master_TeamToMarket]
    ([TeamID]);
GO

-- Creating foreign key on [ID] in table 'Master_TeamToMarket'
ALTER TABLE [dbo].[Master_TeamToMarket]
ADD CONSTRAINT [FK_Company_TeamToMarket_Company_TeamToMarket]
    FOREIGN KEY ([ID])
    REFERENCES [dbo].[Master_TeamToMarket]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [UnitID] in table 'Master_UnitPriceSetting'
ALTER TABLE [dbo].[Master_UnitPriceSetting]
ADD CONSTRAINT [FK_Master_UnitPrice_Master_Unit]
    FOREIGN KEY ([UnitID])
    REFERENCES [dbo].[Master_Unit]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Master_UnitPrice_Master_Unit'
CREATE INDEX [IX_FK_Master_UnitPrice_Master_Unit]
ON [dbo].[Master_UnitPriceSetting]
    ([UnitID]);
GO

-- Creating foreign key on [ParentMenuId] in table 'Menus'
ALTER TABLE [dbo].[Menus]
ADD CONSTRAINT [FK_Menu_Menu]
    FOREIGN KEY ([ParentMenuId])
    REFERENCES [dbo].[Menus]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Menu_Menu'
CREATE INDEX [IX_FK_Menu_Menu]
ON [dbo].[Menus]
    ([ParentMenuId]);
GO

-- Creating foreign key on [ScreenId] in table 'Menus'
ALTER TABLE [dbo].[Menus]
ADD CONSTRAINT [FK_Menu_Screen]
    FOREIGN KEY ([ScreenId])
    REFERENCES [dbo].[Screens]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Menu_Screen'
CREATE INDEX [IX_FK_Menu_Screen]
ON [dbo].[Menus]
    ([ScreenId]);
GO

-- Creating foreign key on [ModuleId] in table 'Screens'
ALTER TABLE [dbo].[Screens]
ADD CONSTRAINT [FK_Screens_Modules]
    FOREIGN KEY ([ModuleId])
    REFERENCES [dbo].[Modules]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Screens_Modules'
CREATE INDEX [IX_FK_Screens_Modules]
ON [dbo].[Screens]
    ([ModuleId]);
GO

-- Creating foreign key on [OrderID] in table 'OrderDetails'
ALTER TABLE [dbo].[OrderDetails]
ADD CONSTRAINT [FK_OrderDetails_Order]
    FOREIGN KEY ([OrderID])
    REFERENCES [dbo].[Orders]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_OrderDetails_Order'
CREATE INDEX [IX_FK_OrderDetails_Order]
ON [dbo].[OrderDetails]
    ([OrderID]);
GO

-- Creating foreign key on [ID] in table 'Order_DeliveryDocuments'
ALTER TABLE [dbo].[Order_DeliveryDocuments]
ADD CONSTRAINT [FK_Order_DeliveryDocuments_Order_DeliveryDocuments]
    FOREIGN KEY ([ID])
    REFERENCES [dbo].[Order_DeliveryDocuments]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [OrderID] in table 'OrderEvaluationByCustomers'
ALTER TABLE [dbo].[OrderEvaluationByCustomers]
ADD CONSTRAINT [FK_CustomerEvaluation_Web_CustomerEvaluation_Web]
    FOREIGN KEY ([OrderID])
    REFERENCES [dbo].[Order_Web]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_CustomerEvaluation_Web_CustomerEvaluation_Web'
CREATE INDEX [IX_FK_CustomerEvaluation_Web_CustomerEvaluation_Web]
ON [dbo].[OrderEvaluationByCustomers]
    ([OrderID]);
GO

-- Creating foreign key on [AssignedTranslatorID] in table 'Order_Web'
ALTER TABLE [dbo].[Order_Web]
ADD CONSTRAINT [FK_Order_Web_Staff]
    FOREIGN KEY ([AssignedTranslatorID])
    REFERENCES [dbo].[Staffs]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Order_Web_Staff'
CREATE INDEX [IX_FK_Order_Web_Staff]
ON [dbo].[Order_Web]
    ([AssignedTranslatorID]);
GO

-- Creating foreign key on [OrderID] in table 'OrderAppointedToStaff_Web'
ALTER TABLE [dbo].[OrderAppointedToStaff_Web]
ADD CONSTRAINT [FK_OrderAppointed_Web_Order_Web]
    FOREIGN KEY ([OrderID])
    REFERENCES [dbo].[Order_Web]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_OrderAppointed_Web_Order_Web'
CREATE INDEX [IX_FK_OrderAppointed_Web_Order_Web]
ON [dbo].[OrderAppointedToStaff_Web]
    ([OrderID]);
GO

-- Creating foreign key on [OrderID] in table 'OrderRequestedToStaff_Web'
ALTER TABLE [dbo].[OrderRequestedToStaff_Web]
ADD CONSTRAINT [FK_OrderRequestedToStaff_Web_Order_Web]
    FOREIGN KEY ([OrderID])
    REFERENCES [dbo].[Order_Web]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_OrderRequestedToStaff_Web_Order_Web'
CREATE INDEX [IX_FK_OrderRequestedToStaff_Web_Order_Web]
ON [dbo].[OrderRequestedToStaff_Web]
    ([OrderID]);
GO

-- Creating foreign key on [TranslatorID] in table 'OrderAppointedToStaff_Web'
ALTER TABLE [dbo].[OrderAppointedToStaff_Web]
ADD CONSTRAINT [FK_OrderAppointed_Web_Staff]
    FOREIGN KEY ([TranslatorID])
    REFERENCES [dbo].[Staffs]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_OrderAppointed_Web_Staff'
CREATE INDEX [IX_FK_OrderAppointed_Web_Staff]
ON [dbo].[OrderAppointedToStaff_Web]
    ([TranslatorID]);
GO

-- Creating foreign key on [StaffID] in table 'OrderDetails'
ALTER TABLE [dbo].[OrderDetails]
ADD CONSTRAINT [FK_OrderDetails_Staff]
    FOREIGN KEY ([StaffID])
    REFERENCES [dbo].[Staffs]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_OrderDetails_Staff'
CREATE INDEX [IX_FK_OrderDetails_Staff]
ON [dbo].[OrderDetails]
    ([StaffID]);
GO

-- Creating foreign key on [TranslatorID] in table 'OrderEvaluationByCustomers'
ALTER TABLE [dbo].[OrderEvaluationByCustomers]
ADD CONSTRAINT [FK_CustomerEvaluation_Web_Staff]
    FOREIGN KEY ([TranslatorID])
    REFERENCES [dbo].[Staffs]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_CustomerEvaluation_Web_Staff'
CREATE INDEX [IX_FK_CustomerEvaluation_Web_Staff]
ON [dbo].[OrderEvaluationByCustomers]
    ([TranslatorID]);
GO

-- Creating foreign key on [TranslatorID] in table 'OrderRequestedToStaff_Web'
ALTER TABLE [dbo].[OrderRequestedToStaff_Web]
ADD CONSTRAINT [FK_OrderRequestedToStaff_Web_Staff]
    FOREIGN KEY ([TranslatorID])
    REFERENCES [dbo].[Staffs]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_OrderRequestedToStaff_Web_Staff'
CREATE INDEX [IX_FK_OrderRequestedToStaff_Web_Staff]
ON [dbo].[OrderRequestedToStaff_Web]
    ([TranslatorID]);
GO

-- Creating foreign key on [CreatedBy] in table 'Roles'
ALTER TABLE [dbo].[Roles]
ADD CONSTRAINT [FK_Role_UserInformation]
    FOREIGN KEY ([CreatedBy])
    REFERENCES [dbo].[UserInformations]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Role_UserInformation'
CREATE INDEX [IX_FK_Role_UserInformation]
ON [dbo].[Roles]
    ([CreatedBy]);
GO

-- Creating foreign key on [RoleId] in table 'RoleWiseOperationPermissions'
ALTER TABLE [dbo].[RoleWiseOperationPermissions]
ADD CONSTRAINT [FK_RoleWiseOperationPermissions_Roles]
    FOREIGN KEY ([RoleId])
    REFERENCES [dbo].[Roles]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [RoleId] in table 'RoleWiseScreenPermissions'
ALTER TABLE [dbo].[RoleWiseScreenPermissions]
ADD CONSTRAINT [FK_RoleWiseScreenPermissions_Roles]
    FOREIGN KEY ([RoleId])
    REFERENCES [dbo].[Roles]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [RoleId] in table 'UserInformations'
ALTER TABLE [dbo].[UserInformations]
ADD CONSTRAINT [FK_UserInformation_Roles]
    FOREIGN KEY ([RoleId])
    REFERENCES [dbo].[Roles]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_UserInformation_Roles'
CREATE INDEX [IX_FK_UserInformation_Roles]
ON [dbo].[UserInformations]
    ([RoleId]);
GO

-- Creating foreign key on [RoleId] in table 'UserInRoles'
ALTER TABLE [dbo].[UserInRoles]
ADD CONSTRAINT [FK_UserInRole_Role]
    FOREIGN KEY ([RoleId])
    REFERENCES [dbo].[Roles]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_UserInRole_Role'
CREATE INDEX [IX_FK_UserInRole_Role]
ON [dbo].[UserInRoles]
    ([RoleId]);
GO

-- Creating foreign key on [ScreenOperationId] in table 'RoleWiseOperationPermissions'
ALTER TABLE [dbo].[RoleWiseOperationPermissions]
ADD CONSTRAINT [FK_RoleWiseOperationPermissions_ScreenOperations]
    FOREIGN KEY ([ScreenOperationId])
    REFERENCES [dbo].[ScreenOperations]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_RoleWiseOperationPermissions_ScreenOperations'
CREATE INDEX [IX_FK_RoleWiseOperationPermissions_ScreenOperations]
ON [dbo].[RoleWiseOperationPermissions]
    ([ScreenOperationId]);
GO

-- Creating foreign key on [ScreenId] in table 'RoleWiseScreenPermissions'
ALTER TABLE [dbo].[RoleWiseScreenPermissions]
ADD CONSTRAINT [FK_RoleWiseScreenPermission_Screen]
    FOREIGN KEY ([ScreenId])
    REFERENCES [dbo].[Screens]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_RoleWiseScreenPermission_Screen'
CREATE INDEX [IX_FK_RoleWiseScreenPermission_Screen]
ON [dbo].[RoleWiseScreenPermissions]
    ([ScreenId]);
GO

-- Creating foreign key on [ScreenId] in table 'ScreenOperations'
ALTER TABLE [dbo].[ScreenOperations]
ADD CONSTRAINT [FK_ScreenOperation_Screen]
    FOREIGN KEY ([ScreenId])
    REFERENCES [dbo].[Screens]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ScreenOperation_Screen'
CREATE INDEX [IX_FK_ScreenOperation_Screen]
ON [dbo].[ScreenOperations]
    ([ScreenId]);
GO

-- Creating foreign key on [StaffID] in table 'Staff_BankAccountInfo'
ALTER TABLE [dbo].[Staff_BankAccountInfo]
ADD CONSTRAINT [FK_Staff_BankAccountInfo_Staff]
    FOREIGN KEY ([StaffID])
    REFERENCES [dbo].[Staffs]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Staff_BankAccountInfo_Staff'
CREATE INDEX [IX_FK_Staff_BankAccountInfo_Staff]
ON [dbo].[Staff_BankAccountInfo]
    ([StaffID]);
GO

-- Creating foreign key on [StaffID] in table 'Staff_CurrentStates'
ALTER TABLE [dbo].[Staff_CurrentStates]
ADD CONSTRAINT [FK_Staff_CurrentStates_Staff]
    FOREIGN KEY ([StaffID])
    REFERENCES [dbo].[Staffs]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Staff_CurrentStates_Staff'
CREATE INDEX [IX_FK_Staff_CurrentStates_Staff]
ON [dbo].[Staff_CurrentStates]
    ([StaffID]);
GO

-- Creating foreign key on [StaffID] in table 'Staff_DevelopmentSkill'
ALTER TABLE [dbo].[Staff_DevelopmentSkill]
ADD CONSTRAINT [FK_Staff_DevelopmentSkill_Staff]
    FOREIGN KEY ([StaffID])
    REFERENCES [dbo].[Staffs]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Staff_DevelopmentSkill_Staff'
CREATE INDEX [IX_FK_Staff_DevelopmentSkill_Staff]
ON [dbo].[Staff_DevelopmentSkill]
    ([StaffID]);
GO

-- Creating foreign key on [StaffID] in table 'Staff_EditingproInformation'
ALTER TABLE [dbo].[Staff_EditingproInformation]
ADD CONSTRAINT [FK_Staff_EditingproInformation_Staff]
    FOREIGN KEY ([StaffID])
    REFERENCES [dbo].[Staffs]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Staff_EditingproInformation_Staff'
CREATE INDEX [IX_FK_Staff_EditingproInformation_Staff]
ON [dbo].[Staff_EditingproInformation]
    ([StaffID]);
GO

-- Creating foreign key on [StaffID] in table 'Staff_EducationalHistory'
ALTER TABLE [dbo].[Staff_EducationalHistory]
ADD CONSTRAINT [FK_Staff_EducationalHistory_Staff]
    FOREIGN KEY ([StaffID])
    REFERENCES [dbo].[Staffs]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Staff_EducationalHistory_Staff'
CREATE INDEX [IX_FK_Staff_EducationalHistory_Staff]
ON [dbo].[Staff_EducationalHistory]
    ([StaffID]);
GO

-- Creating foreign key on [StaffID] in table 'Staff_InterpretationSpecialFields'
ALTER TABLE [dbo].[Staff_InterpretationSpecialFields]
ADD CONSTRAINT [FK_Staff_InterpretationSpecialFields_Staff]
    FOREIGN KEY ([StaffID])
    REFERENCES [dbo].[Staffs]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Staff_InterpretationSpecialFields_Staff'
CREATE INDEX [IX_FK_Staff_InterpretationSpecialFields_Staff]
ON [dbo].[Staff_InterpretationSpecialFields]
    ([StaffID]);
GO

-- Creating foreign key on [StaffID] in table 'Staff_JobCategories'
ALTER TABLE [dbo].[Staff_JobCategories]
ADD CONSTRAINT [FK_Staff_JobCategories_Staff]
    FOREIGN KEY ([StaffID])
    REFERENCES [dbo].[Staffs]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Staff_JobCategories_Staff'
CREATE INDEX [IX_FK_Staff_JobCategories_Staff]
ON [dbo].[Staff_JobCategories]
    ([StaffID]);
GO

-- Creating foreign key on [StaffID] in table 'Staff_JobHistory'
ALTER TABLE [dbo].[Staff_JobHistory]
ADD CONSTRAINT [FK_Staff_JobHistory_Staff]
    FOREIGN KEY ([StaffID])
    REFERENCES [dbo].[Staffs]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Staff_JobHistory_Staff'
CREATE INDEX [IX_FK_Staff_JobHistory_Staff]
ON [dbo].[Staff_JobHistory]
    ([StaffID]);
GO

-- Creating foreign key on [StaffID] in table 'Staff_KnowledgeFields'
ALTER TABLE [dbo].[Staff_KnowledgeFields]
ADD CONSTRAINT [FK_Staff_KnowledgeFields_Staff_KnowledgeFields]
    FOREIGN KEY ([StaffID])
    REFERENCES [dbo].[Staffs]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Staff_KnowledgeFields_Staff_KnowledgeFields'
CREATE INDEX [IX_FK_Staff_KnowledgeFields_Staff_KnowledgeFields]
ON [dbo].[Staff_KnowledgeFields]
    ([StaffID]);
GO

-- Creating foreign key on [StaffID] in table 'Staff_ManagementExperience'
ALTER TABLE [dbo].[Staff_ManagementExperience]
ADD CONSTRAINT [FK_Staff_ManagementExperience_Staff]
    FOREIGN KEY ([StaffID])
    REFERENCES [dbo].[Staffs]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Staff_ManagementExperience_Staff'
CREATE INDEX [IX_FK_Staff_ManagementExperience_Staff]
ON [dbo].[Staff_ManagementExperience]
    ([StaffID]);
GO

-- Creating foreign key on [StaffID] in table 'Staff_NarrationInformation'
ALTER TABLE [dbo].[Staff_NarrationInformation]
ADD CONSTRAINT [FK_Staff_NarrationInformation_Staff]
    FOREIGN KEY ([StaffID])
    REFERENCES [dbo].[Staffs]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Staff_NarrationInformation_Staff'
CREATE INDEX [IX_FK_Staff_NarrationInformation_Staff]
ON [dbo].[Staff_NarrationInformation]
    ([StaffID]);
GO

-- Creating foreign key on [StaffID] in table 'Staff_NarrationVoiceFiles'
ALTER TABLE [dbo].[Staff_NarrationVoiceFiles]
ADD CONSTRAINT [FK_Staff_NarrationVoiceFiles_Staff]
    FOREIGN KEY ([StaffID])
    REFERENCES [dbo].[Staffs]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Staff_NarrationVoiceFiles_Staff'
CREATE INDEX [IX_FK_Staff_NarrationVoiceFiles_Staff]
ON [dbo].[Staff_NarrationVoiceFiles]
    ([StaffID]);
GO

-- Creating foreign key on [StaffID] in table 'Staff_ProfessionalSpeciality'
ALTER TABLE [dbo].[Staff_ProfessionalSpeciality]
ADD CONSTRAINT [FK_Staff_ProfessionalSpeciality_Staff]
    FOREIGN KEY ([StaffID])
    REFERENCES [dbo].[Staffs]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Staff_ProfessionalSpeciality_Staff'
CREATE INDEX [IX_FK_Staff_ProfessionalSpeciality_Staff]
ON [dbo].[Staff_ProfessionalSpeciality]
    ([StaffID]);
GO

-- Creating foreign key on [StaffID] in table 'Staff_ServiceTypes'
ALTER TABLE [dbo].[Staff_ServiceTypes]
ADD CONSTRAINT [FK_Staff_ServiceTypes_Staff]
    FOREIGN KEY ([StaffID])
    REFERENCES [dbo].[Staffs]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Staff_ServiceTypes_Staff'
CREATE INDEX [IX_FK_Staff_ServiceTypes_Staff]
ON [dbo].[Staff_ServiceTypes]
    ([StaffID]);
GO

-- Creating foreign key on [StaffID] in table 'Staff_SkillCertificate'
ALTER TABLE [dbo].[Staff_SkillCertificate]
ADD CONSTRAINT [FK_Staff_SkillCertificate_Staff]
    FOREIGN KEY ([StaffID])
    REFERENCES [dbo].[Staffs]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Staff_SkillCertificate_Staff'
CREATE INDEX [IX_FK_Staff_SkillCertificate_Staff]
ON [dbo].[Staff_SkillCertificate]
    ([StaffID]);
GO

-- Creating foreign key on [StaffID] in table 'Staff_TechnicalCertificate'
ALTER TABLE [dbo].[Staff_TechnicalCertificate]
ADD CONSTRAINT [FK_Staff_TechnicalCertificate_Staff]
    FOREIGN KEY ([StaffID])
    REFERENCES [dbo].[Staffs]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Staff_TechnicalCertificate_Staff'
CREATE INDEX [IX_FK_Staff_TechnicalCertificate_Staff]
ON [dbo].[Staff_TechnicalCertificate]
    ([StaffID]);
GO

-- Creating foreign key on [StaffID] in table 'Staff_TranslateInterpretExperience'
ALTER TABLE [dbo].[Staff_TranslateInterpretExperience]
ADD CONSTRAINT [FK_Staff_TranslateInterpretExpertises_Staff]
    FOREIGN KEY ([StaffID])
    REFERENCES [dbo].[Staffs]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Staff_TranslateInterpretExpertises_Staff'
CREATE INDEX [IX_FK_Staff_TranslateInterpretExpertises_Staff]
ON [dbo].[Staff_TranslateInterpretExperience]
    ([StaffID]);
GO

-- Creating foreign key on [StaffID] in table 'Staff_TranslationSpecialFields'
ALTER TABLE [dbo].[Staff_TranslationSpecialFields]
ADD CONSTRAINT [FK_Staff_TranslationSpecialFields_Staff]
    FOREIGN KEY ([StaffID])
    REFERENCES [dbo].[Staffs]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Staff_TranslationSpecialFields_Staff'
CREATE INDEX [IX_FK_Staff_TranslationSpecialFields_Staff]
ON [dbo].[Staff_TranslationSpecialFields]
    ([StaffID]);
GO

-- Creating foreign key on [StaffID] in table 'Staff_TransproInformation'
ALTER TABLE [dbo].[Staff_TransproInformation]
ADD CONSTRAINT [FK_Staff_TransproInformation_Staff]
    FOREIGN KEY ([StaffID])
    REFERENCES [dbo].[Staffs]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Staff_TransproInformation_Staff'
CREATE INDEX [IX_FK_Staff_TransproInformation_Staff]
ON [dbo].[Staff_TransproInformation]
    ([StaffID]);
GO

-- Creating foreign key on [StaffID] in table 'Staff_SoftwareSkill'
ALTER TABLE [dbo].[Staff_SoftwareSkill]
ADD CONSTRAINT [FK_StaffSoftwareSkill_Staff]
    FOREIGN KEY ([StaffID])
    REFERENCES [dbo].[Staffs]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_StaffSoftwareSkill_Staff'
CREATE INDEX [IX_FK_StaffSoftwareSkill_Staff]
ON [dbo].[Staff_SoftwareSkill]
    ([StaffID]);
GO

-- Creating foreign key on [DeliveryPlanID] in table 'TransproLanguagePriceDetails'
ALTER TABLE [dbo].[TransproLanguagePriceDetails]
ADD CONSTRAINT [FK_TransproLanguagePriceDetails_TransproDeliveryPlanSetting]
    FOREIGN KEY ([DeliveryPlanID])
    REFERENCES [dbo].[TransproDeliveryPlanSettings]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_TransproLanguagePriceDetails_TransproDeliveryPlanSetting'
CREATE INDEX [IX_FK_TransproLanguagePriceDetails_TransproDeliveryPlanSetting]
ON [dbo].[TransproLanguagePriceDetails]
    ([DeliveryPlanID]);
GO

-- Creating foreign key on [PriceCategoryID] in table 'TransproLanguagePriceDetails'
ALTER TABLE [dbo].[TransproLanguagePriceDetails]
ADD CONSTRAINT [FK_TransproLanguagePriceDetails_TransproLanguagePriceCategory]
    FOREIGN KEY ([PriceCategoryID])
    REFERENCES [dbo].[TransproLanguagePriceCategories]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_TransproLanguagePriceDetails_TransproLanguagePriceCategory'
CREATE INDEX [IX_FK_TransproLanguagePriceDetails_TransproLanguagePriceCategory]
ON [dbo].[TransproLanguagePriceDetails]
    ([PriceCategoryID]);
GO

-- Creating foreign key on [UserTypeId] in table 'UserInformations'
ALTER TABLE [dbo].[UserInformations]
ADD CONSTRAINT [FK_UserInformation_UserType]
    FOREIGN KEY ([UserTypeId])
    REFERENCES [dbo].[UserTypes]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_UserInformation_UserType'
CREATE INDEX [IX_FK_UserInformation_UserType]
ON [dbo].[UserInformations]
    ([UserTypeId]);
GO

-- Creating foreign key on [UserId] in table 'UserInRoles'
ALTER TABLE [dbo].[UserInRoles]
ADD CONSTRAINT [FK_UserInRole_UserInformation]
    FOREIGN KEY ([UserId])
    REFERENCES [dbo].[UserInformations]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------