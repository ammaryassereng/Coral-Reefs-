using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Team_11
{
    

    public partial class Guest : System.Web.UI.Page
    {
        Controller controllerObj;

        protected void Page_Load(object sender, EventArgs e)
        {
            controllerObj = new Controller();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            controllerObj.insertintoAdministrators();
        }
    }
}