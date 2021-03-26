using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace Team_11
{
    public partial class RoomService : System.Web.UI.Page
    {
        Controller ControllerObj;
        protected void Page_Load(object sender, EventArgs e)
        {
            ControllerObj = new Controller();
        }

        protected void NumberCleaningTxt_TextChanged(object sender, EventArgs e)
        {

        }

        protected void CleaningReq_Click(object sender, EventArgs e)
        {
            NumberCleaningTxt.Text=ControllerObj.GetNumberCleaning().ToString();
        }

        protected void ViewClReq_Click(object sender, EventArgs e)
        {
            DataTable DT = ControllerObj.GetCleaningRooms();
            if (DT == null)
            {
                return;
            }
            RequestsAndService.DataSource = DT;
            RequestsAndService.DataBind();
        }




        protected void ViewRequests_Click(object sender, EventArgs e)
        {
            DataTable DT = ControllerObj.ViewRoomServiceReq();
            if (DT == null)
            {
                return;
            }
            RequestsAndService.DataSource = DT;
            RequestsAndService.DataBind();
        }

        protected void Fulfill_Click1(object sender, EventArgs e)
        {
            if (ReqTxt.Text == "")
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + " Please enter a Request ID" + "');", true);
                return;
            }
            int r = ControllerObj.UpdateRequestState(int.Parse(ReqTxt.Text));
            if (r == 0)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + "The Order isn't ready yet or has been already deliverd or Kindly, enter an existing Request ID" + "');", true);
            }
            else
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + " Request delivered successfully" + "');", true);
            }
        }

        protected void DoneByChef_Click1(object sender, EventArgs e)
        {
            if (RequestChefTxt.Text == "")
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + " Please enter a Request ID" + "');", true);
                return;
            }
            int r = ControllerObj.DoneByChef(int.Parse(RequestChefTxt.Text));
            if (r == 0)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + "The Order has been already delivered or picked up or Kindly, enter an existing Request ID" + "');", true);
            }
            else
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + " Request picked up successfully" + "');", true);
            }
        }
    }
}