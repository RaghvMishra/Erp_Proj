
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
    
public partial class Master_Culture
{

    public System.Guid ID { get; set; }

    public Nullable<long> CountryID { get; set; }

    public string Code { get; set; }

    public string SystemCode { get; set; }

    public string Description { get; set; }

    public Nullable<int> SortBy { get; set; }

    public Nullable<System.DateTime> CreatedDate { get; set; }

    public Nullable<System.DateTime> UpdatedDate { get; set; }

    public bool IsActive { get; set; }

    public Nullable<bool> IsDeleted { get; set; }

    public Nullable<long> CreatedBy { get; set; }

    public Nullable<long> UpdatedBy { get; set; }



    public virtual Master_Country Master_Country { get; set; }

}

}
