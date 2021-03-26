using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace Team_11
{
    public partial class ViewFeedBack1 : System.Web.UI.Page
    {
        Controller ControllerObj;
        protected void Page_Load(object sender, EventArgs e)
        {
            ControllerObj = new Controller();
        }

        protected void ViewFeedBackButton_Click(object sender, EventArgs e)
        {
            DataTable dt = ControllerObj.ViewAllFeedBacks();
            FeedBackGrid.DataSource = dt;
            FeedBackGrid.DataBind();
        }
    
    }
}