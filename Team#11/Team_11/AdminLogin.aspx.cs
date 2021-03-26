using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services.Description;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Team_11
{
    public partial class AdminLogin : System.Web.UI.Page
    {
        Controller controllerObj;
        protected void Page_Load(object sender, EventArgs e)
        {
            controllerObj = new Controller();

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int FoundMember = controllerObj.Get_Email_Password(TextBox1.Text, TextBox2.Text, DropDownList1.Text);
            if (FoundMember == 0)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + " Invalid Email or Password " + "');", true);
            }
            else
            {
                Response.Redirect("/Guest.aspx");
            }
        }
    }
}