
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
    
public partial class TransproLanguagePriceCategory
{

    [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
    public TransproLanguagePriceCategory()
    {

        this.TransproLanguagePriceDetails = new HashSet<TransproLanguagePriceDetail>();

    }


    public System.Guid ID { get; set; }

    public System.Guid SourceLanguageID { get; set; }

    public System.Guid TargetLanguageID { get; set; }

    public System.Guid SpecialityFieldID { get; set; }

    public System.Guid SubSpecialityFieldID { get; set; }

    public string Description_en { get; set; }

    public string Description_jp { get; set; }

    public string Description_kr { get; set; }

    public string Description_cn { get; set; }

    public string Description_fr { get; set; }

    public string Description_tl { get; set; }

    public Nullable<long> WordPerPage { get; set; }

    public long CurrencyID { get; set; }

    public bool IsLightPrice { get; set; }

    public bool IsBusinessPrice { get; set; }

    public bool IsExpertPrice { get; set; }

    public bool IsActive { get; set; }

    public bool IsDeleted { get; set; }



    public virtual Master_Currency Master_Currency { get; set; }

    public virtual Master_EstimationSpecializedField Master_EstimationSpecializedField { get; set; }

    public virtual Master_EstimationSubSpecializedField Master_EstimationSubSpecializedField { get; set; }

    public virtual Master_Language Master_Language { get; set; }

    public virtual Master_Language Master_Language1 { get; set; }

    [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]

    public virtual ICollection<TransproLanguagePriceDetail> TransproLanguagePriceDetails { get; set; }

}

}
