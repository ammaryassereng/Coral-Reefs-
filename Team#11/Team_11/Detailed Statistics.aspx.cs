using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
namespace Team_11
{
    public partial class Detailed_Statistics : System.Web.UI.Page
    {
        Controller ControllerObj;
        protected void Page_Load(object sender, EventArgs e)
        {
            NumberofRoomsTextBox.Enabled = false;
            NumRoomsTextBox.Enabled = false;

            ControllerObj = new Controller();
            if (!Page.IsPostBack)
            {

                DataTable dt = ControllerObj.GetRoomsView();
                RoomViewDropDownList.DataSource = dt;
                RoomViewDropDownList.DataTextField = "RoomView";
                RoomViewDropDownList.DataBind();
            }
        }

        protected void NumRoomsButton_Click(object sender, EventArgs e)
        {
            NumRoomsTextBox.Text = ControllerObj.GetNumRoomFromView(RoomViewDropDownList.Text).ToString();

        }

        protected void NumberofRoomsButton_Click(object sender, EventArgs e)
        {
            NumberofRoomsTextBox.Text = ControllerObj.GetNummberofVacantandOccupiedRooms(RoomStateDropDownList.Text).ToString();

        }

        protected void OrderedServicedButton_Click(object sender, EventArgs e)
        {
            DataTable dt = ControllerObj.GetMostService();
            GridView.DataSource = dt;
            GridView.DataBind();
        }

        protected void ReservedRoomsButton_Click(object sender, EventArgs e)
        {
            DataTable dt = ControllerObj.GetMostRoom();
            GridView.DataSource = dt;
            GridView.DataBind();

        }

        protected void ViewReviewsButton_Click(object sender, EventArgs e)
        {
            

            DataTable dt = ControllerObj.GetMostFeedback();
            GridView.DataSource = dt;
            GridView.DataBind();

        }

        protected void ReservedOccButton_Click(object sender, EventArgs e)
        {
            DataTable dt = ControllerObj.GetMostOccasion();
            GridView.DataSource = dt;
            GridView.DataBind();
        }
    }
}