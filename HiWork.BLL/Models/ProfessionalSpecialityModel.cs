﻿
using System;
using HiWork.Utils.Infrastructure;

namespace HiWork.BLL.Models
{
    public class ProfessionalSpecialityModel : BaseDomainModel<ProfessionalSpecialityModel>
    {
        public Guid Id { get; set; }
        public string Name { get; set; }
        public string Description { get; set; }
    }
}
