
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------


namespace HiWork.DAL.Database
{

using System;
    using System.Collections.Generic;
    
public partial class Company_TransproPartner
{

    public System.Guid ID { get; set; }

    public System.Guid CompanyID { get; set; }

    public Nullable<long> AffiliateCode { get; set; }

    public string AffiliateCodeUpperID { get; set; }

    public Nullable<long> PartnerTypeID { get; set; }

    public string Name_en { get; set; }

    public string Name_jp { get; set; }

    public string Name_kr { get; set; }

    public string Name_cn { get; set; }

    public string Name_fr { get; set; }

    public string Name_tl { get; set; }

    public string CompanyNumber { get; set; }

    public string TransPro_URL { get; set; }

    public string EstimationSending_URL { get; set; }

    public Nullable<decimal> MaintenanceFee { get; set; }

    public Nullable<int> MagnificationPrice { get; set; }

    public Nullable<int> TranslatorPrice { get; set; }

    public Nullable<int> PartnerCompanyPrice { get; set; }

    public Nullable<int> AgentPrice { get; set; }

    public Nullable<int> BcausePrice { get; set; }

    public string CompanyName_en { get; set; }

    public string CompanyName_jp { get; set; }

    public string CompanyName_kr { get; set; }

    public string CompanyName_cn { get; set; }

    public string CompanyName_fr { get; set; }

    public string CompanyName_tl { get; set; }

    public string PostCode { get; set; }

    public string Address_en { get; set; }

    public string Address_jp { get; set; }

    public string Address_kr { get; set; }

    public string Address_cn { get; set; }

    public string Address_fr { get; set; }

    public string Address_tl { get; set; }

    public string Email { get; set; }

    public string ContactNumber { get; set; }

    public string CEOName_en { get; set; }

    public string CEOName_jp { get; set; }

    public string CEOName_kr { get; set; }

    public string CEOName_cn { get; set; }

    public string CEOName_fr { get; set; }

    public string CEOName_tl { get; set; }

    public string URL { get; set; }

    public string Logo { get; set; }

    public string Image { get; set; }

    public string BackgroundImage { get; set; }

    public string ButtonImage { get; set; }

    public string InqueryImageFile { get; set; }

    public string Inquery_URL { get; set; }

    public string BannarImage1 { get; set; }

    public string BannarImage1_URL { get; set; }

    public string BannarImage2 { get; set; }

    public string BannarImage2_URL { get; set; }

    public string FacebookID { get; set; }

    public string Title_en { get; set; }

    public string Title_jp { get; set; }

    public string Title_kr { get; set; }

    public string Title_cn { get; set; }

    public string Title_fr { get; set; }

    public string Title_tl { get; set; }

    public string Description_en { get; set; }

    public string Description_jp { get; set; }

    public string Description_kr { get; set; }

    public string Description_cn { get; set; }

    public string Description_fr { get; set; }

    public string Description_tl { get; set; }

    public string ServiceName_en { get; set; }

    public string ServiceName_jp { get; set; }

    public string ServiceName_kr { get; set; }

    public string ServiceName_cn { get; set; }

    public string ServiceName_fr { get; set; }

    public string ServiceName_tl { get; set; }

    public bool IsInvoicePartner { get; set; }

    public bool IsEmailTemplatepartner { get; set; }

    public bool IsAllowInqueryEmail { get; set; }

    public Nullable<System.Guid> BankID { get; set; }

    public Nullable<System.Guid> BankBranchID { get; set; }

    public Nullable<long> BankAccountTypeID { get; set; }

    public string AccountNumber { get; set; }

    public string AccountHolder { get; set; }

    public string InvoiceCompanyName_en { get; set; }

    public string InvoiceCompanyName_jp { get; set; }

    public string InvoiceCompanyName_kr { get; set; }

    public string InvoiceCompanyName_cn { get; set; }

    public string InvoiceCompanyName_fr { get; set; }

    public string InvoiceCompanyName_tl { get; set; }

    public string InvoicePostCode { get; set; }

    public string InvoiceAddress1_en { get; set; }

    public string InvoiceAddress1_jp { get; set; }

    public string InvoiceAddress1_kr { get; set; }

    public string InvoiceAddress1_cn { get; set; }

    public string InvoiceAddress1_fr { get; set; }

    public string InvoiceAddress1_tl { get; set; }

    public string InvoiceAddress2_en { get; set; }

    public string InvoiceAddress2_jp { get; set; }

    public string InvoiceAddress2_kr { get; set; }

    public string InvoiceAddress2_cn { get; set; }

    public string InvoiceAddress2_fr { get; set; }

    public string InvoiceAddress2_tl { get; set; }

    public string InvoiveEmail { get; set; }

    public string InvoiceContactNumber { get; set; }

    public string InchagreName_en { get; set; }

    public string InchagreName_jp { get; set; }

    public string InchagreName_kr { get; set; }

    public string InchagreName_cn { get; set; }

    public string InchagreName_fr { get; set; }

    public string InchagreName_tl { get; set; }

    public Nullable<System.Guid> InchargeDesignationID { get; set; }

    public string ComapanySealImage { get; set; }

    public string AddressedPersonName_en { get; set; }

    public string AddressedPersonName_jp { get; set; }

    public string AddressedPersonName_kr { get; set; }

    public string AddressedPersonName_cn { get; set; }

    public string AddressedPersonName_fr { get; set; }

    public string AddressedPersonName_tl { get; set; }



    public virtual Company Company { get; set; }

    public virtual Master_Bank Master_Bank { get; set; }

    public virtual Master_BankAccountType Master_BankAccountType { get; set; }

    public virtual Master_BankBranch Master_BankBranch { get; set; }

}

}
