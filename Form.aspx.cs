﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebFormApp_ASPNET2
{
    public partial class Form : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Page load logic here (if any)
        }

        protected void ValidateControls(object source, ServerValidateEventArgs args)
        {
            if (args.Value.Length < 2)
            {
                args.IsValid = false;
                return;
            }
        }

        protected void submit_Click(object sender, EventArgs e)
        {

        }
    }
}