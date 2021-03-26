using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
namespace Team_11
{
    public partial class Order : System.Web.UI.Page
    {
        Controller ControllerObj;
        bool iswritten = false;
        protected void Page_Load(object sender, EventArgs e)
        {
            ControllerObj = new Controller();
            if (!Page.IsPostBack)
            {
                DataTable dt = ControllerObj.GetAllServicesNames();
                
                OrderDDL.DataSource = dt;
                OrderDDL.DataTextField = "ServiceName";
                OrderDDL.DataBind();
            }

        }
        protected void UpdateRoomNumber()
        {
          

        }
        protected void OccDur_TextChanged(object sender, EventArgs e)
        {

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void OrderButt_Click(object sender, EventArgs e)
        {
            if (GuestIDOrd.Text.Trim(' ') == "")
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + " Please Enter a valid National ID" + "');", true);
                return;
            }
            if(ControllerObj.GetExistingCurrentGuest(GuestIDOrd.Text) == 0)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + " Please Enter a valid National ID" + "');", true);
                return;
            }
            int roomnum = ControllerObj.GetRoomNoFromID(int.Parse(GuestIDOrd.Text));
            int R = ControllerObj.insertServReq(roomnum, OrderDDL.Text, GuestIDOrd.Text);
           
            if (R == 0)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + " Failed to Add request" + "');", true);
                return;
            }
            else 
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + " your request will be be checked" + "');", true);
                return;
            }

        }

        protected void GuestIDOrd_TextChanged(object sender, EventArgs e)
        {
            //if (GuestIDOrd.Text.Trim(' ') != "")
            //{
            //    int roomnum = ControllerObj.GetRoomNoFromID(int.Parse(GuestIDOrd.Text));
            //    if (roomnum == 0)
            //    {
            //        ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + " Please Enter a valid National ID" + "');", true);
            //        return;
            //    }
            //    else
            //    {
            //        RoomNoOrd.Text = roomnum.ToString();
            //    }
            //}
           //RoomNoOrd.Text=GuestIDOrd.Text;


            //RoomNoOrd.Text = "sff";
        }

        protected void RoomNoOrd_TextChanged(object sender, EventArgs e)
        {
           
        }

        protected void ViewRoomNumButton_Click(object sender, EventArgs e)
        {
            if (GuestIDOrd.Text.Trim(' ') != "")
            {
                if (ControllerObj.GetExistingCurrentGuest(GuestIDOrd.Text) == 0)
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + " Please Enter a valid National ID" + "');", true);
                    return;
                }
                int roomnum = ControllerObj.GetRoomNoFromID(int.Parse(GuestIDOrd.Text));
                if (roomnum == 0)
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + " Please Enter a valid National ID" + "');", true);
                    return;
                }
                else
                {
                    RoomNoOrd.Text = roomnum.ToString();
                }
            }
            else
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + " Please Enter a National ID" + "');", true);

            }
        }
    }
}
