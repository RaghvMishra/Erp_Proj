
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
    
public partial class Notice
{

    public System.Guid ID { get; set; }

    public long NoticeNo { get; set; }

    public System.DateTime RegisteredDate { get; set; }

    public int Priority { get; set; }

    public string NoticeURL { get; set; }

    public Nullable<int> ClientDisplayStatus { get; set; }

    public Nullable<int> StaffDisplayStatus { get; set; }

    public Nullable<int> PartnerDisplayStatus { get; set; }

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

    public Nullable<long> CreatedBy { get; set; }

    public Nullable<System.DateTime> CreatedDate { get; set; }

    public Nullable<long> UpdatedBy { get; set; }

    public Nullable<System.DateTime> UpdatedDate { get; set; }

    public bool IsActive { get; set; }

    public Nullable<bool> IsDeleted { get; set; }

}

}
