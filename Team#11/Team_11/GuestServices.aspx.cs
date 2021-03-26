using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
namespace Team_11
{
    public partial class GuestServices : System.Web.UI.Page
    {
        Controller ControllerObj;
        protected void Page_Load(object sender, EventArgs e)
        {
            ControllerObj = new Controller();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            //DataTable DT = controllerObj.GetServices();
            //GridView1.DataSource = DT;
            //GridView1.Refre
        }

        protected void orderButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Order.aspx");
        }

        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void ReqRoomSerCleaning_Click(object sender, EventArgs e)
        {
            if (cleaningRoom.Text == "")
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + " Please enter a room number" + "');", true);
                return;
            }
            int r = ControllerObj.ReqCleaning(int.Parse(cleaningRoom.Text));
            if (r == 0)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + " Please enter a correct room number" + "');", true);
                //return;
            }
            else
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + "Your request will be checked" + "');", true);
            }

        }
    }
}
