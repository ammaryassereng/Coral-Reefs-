using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Team_11
{
    public partial class FeedBack : System.Web.UI.Page
    {
        Controller ControllerObj;
        protected void Page_Load(object sender, EventArgs e)
        {
            ControllerObj = new Controller();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (ComplaintText.Text == "")
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + " Please enter your complaint" + "');", true);
                return;
            }
            int r = ControllerObj.Complain(ComplaintText.Text , IDtxt.Text);
            if(r==0)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + " Wrong ID" + "');", true);
            }
            else
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + " Complaint inserted successfully" + "');", true);
            }
        }

        protected void TextBox1_TextChanged1(object sender, EventArgs e)
        {

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }
    }
}