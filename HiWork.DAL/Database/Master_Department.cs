
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
    
public partial class Master_Department
{

    [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
    public Master_Department()
    {

        this.Company_Department = new HashSet<Company_Department>();

        this.Employees = new HashSet<Employee>();

        this.Master_Designation = new HashSet<Master_Designation>();

        this.Master_Team = new HashSet<Master_Team>();

    }


    public System.Guid ID { get; set; }

    public long CountryID { get; set; }

    public System.Guid BranchID { get; set; }

    public string Code { get; set; }

    public string Name_en { get; set; }

    public string Name_jp { get; set; }

    public string Name_kr { get; set; }

    public string Name_cn { get; set; }

    public string Name_fr { get; set; }

    public string Name_tl { get; set; }

    public string Description_en { get; set; }

    public string Description_jp { get; set; }

    public string Description_kr { get; set; }

    public string Description_cn { get; set; }

    public string Description_fr { get; set; }

    public string Description_tl { get; set; }

    public Nullable<long> CreatedBy { get; set; }

    public Nullable<bool> IsDeleted { get; set; }

    public Nullable<long> UpdatedBy { get; set; }

    public Nullable<System.DateTime> CreatedDate { get; set; }

    public Nullable<System.DateTime> UpdatedDate { get; set; }

    public bool IsActive { get; set; }



    [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]

    public virtual ICollection<Company_Department> Company_Department { get; set; }

    [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]

    public virtual ICollection<Employee> Employees { get; set; }

    public virtual Master_BranchOffice Master_BranchOffice { get; set; }

    public virtual Master_Country Master_Country { get; set; }

    [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]

    public virtual ICollection<Master_Designation> Master_Designation { get; set; }

    [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]

    public virtual ICollection<Master_Team> Master_Team { get; set; }

}

}
