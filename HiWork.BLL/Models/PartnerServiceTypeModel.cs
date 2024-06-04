﻿using HiWork.Utils.Infrastructure;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HiWork.BLL.Models
{
    public class PartnerServiceTypeModel: BaseDomainModel<PartnerServiceTypeModel>
    {
        public long ID { get; set; }
        public string Name { get; set; }

    }
}
