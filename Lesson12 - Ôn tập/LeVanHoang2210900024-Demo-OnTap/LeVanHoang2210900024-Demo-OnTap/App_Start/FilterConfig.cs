﻿using System.Web;
using System.Web.Mvc;

namespace LeVanHoang2210900024_Demo_OnTap
{
    public class FilterConfig
    {
        public static void RegisterGlobalFilters(GlobalFilterCollection filters)
        {
            filters.Add(new HandleErrorAttribute());
        }
    }
}
