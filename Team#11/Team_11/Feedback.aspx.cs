using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Team_11
{
    public partial class Complaints : System.Web.UI.Page
    {
        Controller ControllerObj;
        protected void Page_Load(object sender, EventArgs e)
        {
            ControllerObj = new Controller();
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            int r = ControllerObj.GiveFeedBack(IDtxt.Text, FeedbackContent.Text);
            if (r == 0)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + "Wrong ID OR You already made a feedback before, so you can edit your feedback in the edit section" + "');", true);
            }
            else
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + " Feedback inserted successfully" + "');", true);
            }
        }

        protected void EditFeedback_Click(object sender, EventArgs e)
        {
            if(IDEditTxt.Text.Trim(' ')=="")
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + "Please Enter Your National ID" + "');", true);
                return;

            }

            int r = ControllerObj.UpdateFeedback(IDEditTxt.Text, EditedFeedback.Text);
            if (r==0)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + "Wrong ID OR You haven't given your feedback before, you can add your feedback in the above section " + "');", true);
            }
            else
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + " Feedback updated successfully" + "');", true);
            }
        }
    }
}