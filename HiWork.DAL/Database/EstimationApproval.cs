
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
    
public partial class EstimationApproval
{

    public System.Guid ID { get; set; }

    public long ApplicationID { get; set; }

    public Nullable<System.Guid> ApproverID { get; set; }

    public Nullable<System.Guid> EstimationID { get; set; }

    public Nullable<System.Guid> OrderID { get; set; }

    public string Description { get; set; }

    public Nullable<int> Status { get; set; }

    public Nullable<long> CreatedBy { get; set; }

    public Nullable<System.DateTime> CreatedDate { get; set; }



    public virtual Employee Employee { get; set; }

    public virtual Estimation Estimation { get; set; }

}

}
