﻿using HiWork.Utils.Infrastructure;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HiWork.BLL.Models
{
    public class CompanyTradingCategoryItemModel:BaseDomainModel<CompanyTradingCategoryItemModel>
    {
        public Guid ID { get; set; }
		public Guid TradingCategoryID { get; set; }
        public string Name { get; set; }
        public string Description { get; set; }
        public CompanyTradingCategoryModel CompanyTradingCategory { get; set; }
        public bool IsNew()
        {

            bool IsNew;
            if (this.ID.ToString().Contains("00000"))
                IsNew = true;
            else
                IsNew = false;
            return IsNew;


        }
    }
}
