
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
    
public partial class Staff_TechnicalCertificate
{

    public System.Guid ID { get; set; }

    public System.Guid StaffID { get; set; }

    public string Name_en { get; set; }

    public string Name_jp { get; set; }

    public string Name_kr { get; set; }

    public string Name_cn { get; set; }

    public string Name_fr { get; set; }

    public string Name_tl { get; set; }

    public string IssuedPlace { get; set; }

    public Nullable<System.DateTime> IssuedDate { get; set; }

    public string UploadLink { get; set; }

    public Nullable<System.DateTime> CreatedDate { get; set; }

    public Nullable<long> CreatedBy { get; set; }

    public Nullable<System.DateTime> UpdatedDate { get; set; }

    public Nullable<long> UpdatedBy { get; set; }



    public virtual Staff Staff { get; set; }

}

}
