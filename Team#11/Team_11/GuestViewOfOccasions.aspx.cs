using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace Team_11
{
    public partial class GuestViewOfOccasions : System.Web.UI.Page
    {
        Controller ControllerObj;
        protected void Page_Load(object sender, EventArgs e)
        {
            ControllerObj = new Controller();
        }
            protected void ViewAllOccButton_Click(object sender, EventArgs e)
        {
            DataTable dt = ControllerObj.ViewAllOccasions();
            OccasionsGridView.DataSource = dt;
            OccasionsGridView.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Reserve Occasion.aspx");
        }
    }
}