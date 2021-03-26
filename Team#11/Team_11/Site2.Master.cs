using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Team_11
{
    public partial class Site2 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Book.aspx");
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("/ReservationInfo.aspx");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Feedback.aspx");
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Complaints.aspx");
        }

        protected void LinkButton7_Click(object sender, EventArgs e)
        {
            Response.Redirect("/GuestServices.aspx");
        }

        //protected void LinkButton6_Click(object sender, EventArgs e)
        //{
        //    Response.Redirect("/LogInPage.aspx");
        //}

        protected void LinkButton6_Click1(object sender, EventArgs e)
        {
            Response.Redirect("/LogInPage.aspx");
        }

        protected void LinkButton11_Click(object sender, EventArgs e)
        {
            Response.Redirect("/HomePage.aspx");
        }

        protected void LinkButton12_Click(object sender, EventArgs e)
        {

        }

        protected void LinkButton5_Click(object sender, EventArgs e)
        {
            Response.Redirect("/ClientsCharts.aspx");

        }

        protected void LinkButton12_Click1(object sender, EventArgs e)
        {
            Response.Redirect("/FeedBackCharts.aspx");

        }

        protected void LinkButton8_Click(object sender, EventArgs e)
        {
            Response.Redirect("/RoomsChart.aspx");
        }

        protected void LinkButton9_Click(object sender, EventArgs e)
        {
            Response.Redirect("/RoomsStateChart.aspx");
        }

        protected void LinkButton10_Click(object sender, EventArgs e)
        {
            Response.Redirect("/RoomsTypeCharts.aspx");

        }

        protected void LinkButton13_Click(object sender, EventArgs e)
        {
            Response.Redirect("/RoomViewChart.aspx");

        }

        protected void LinkButton14_Click(object sender, EventArgs e)
        {
            Response.Redirect("/SpecOccChart.aspx");

        }

        protected void LinkButton15_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Detailed Statistics.aspx");

        }

        //protected void LinkButton11_Click(object sender, EventArgs e)
        //{
        //    Response.Redirect("/HomePage.aspx");
        //}



    }
}