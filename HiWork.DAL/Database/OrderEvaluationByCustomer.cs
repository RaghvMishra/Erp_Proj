
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
    
public partial class OrderEvaluationByCustomer
{

    public System.Guid ID { get; set; }

    public System.Guid TranslatorID { get; set; }

    public System.Guid OrderID { get; set; }

    public Nullable<System.Guid> ClientID { get; set; }

    public Nullable<int> Q1Score { get; set; }

    public Nullable<int> Q2Score { get; set; }

    public Nullable<int> Q3Score { get; set; }

    public Nullable<int> Q4Score { get; set; }

    public Nullable<decimal> AvgScore { get; set; }

    public string Comment { get; set; }

    public Nullable<System.DateTime> EvaluationDate { get; set; }

    public Nullable<int> ServiceEvaluationScore { get; set; }



    public virtual Company Company { get; set; }

    public virtual Order_Web Order_Web { get; set; }

    public virtual Staff Staff { get; set; }

}

}
