
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
    
public partial class CompanyRFMAnalysi
{

    public System.Guid ID { get; set; }

    public System.Guid CompanyID { get; set; }

    public Nullable<long> NoOfDaysLastQuotAsPerson { get; set; }

    public Nullable<long> TotalQuotAsPerson { get; set; }

    public Nullable<long> RatioOfOrderAsPerson { get; set; }

    public Nullable<long> AvgQuotPriceAsPerson { get; set; }

    public Nullable<long> AvgQuotAsPersonCurrencyID { get; set; }

    public Nullable<long> AvgOrderedPriceAsPerson { get; set; }

    public Nullable<long> AvgOrderedAsPersonCurrencyID { get; set; }

    public Nullable<long> NoOfDaysLastQuotAsCompany { get; set; }

    public Nullable<long> TotalQuotACompany { get; set; }

    public Nullable<long> RatioOfOrderAsCompany { get; set; }

    public Nullable<long> AvgQuotPriceAsCompany { get; set; }

    public Nullable<long> AvgQuotAsCompanyCurrencyID { get; set; }

    public Nullable<long> AvgOrderedPriceAsCompany { get; set; }

    public Nullable<long> AvgOrderedAsCompanyCurrencyID { get; set; }



    public virtual Master_Currency Master_Currency { get; set; }

    public virtual Master_Currency Master_Currency1 { get; set; }

    public virtual Master_Currency Master_Currency2 { get; set; }

    public virtual Master_Currency Master_Currency3 { get; set; }

}

}
