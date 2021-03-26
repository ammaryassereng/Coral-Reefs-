using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Web.UI.DataVisualization.Charting;
using System.Data;


namespace Team_11
{
    public partial class ClientsCharts : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GetChartData();
                GetChartTypes();
            }
        }
        private void GetChartTypes()
        {
            foreach (int chartType in Enum.GetValues(typeof(SeriesChartType)))
            {
                ListItem li = new ListItem(Enum.GetName(typeof(SeriesChartType), chartType), chartType.ToString());
                ddlChart.Items.Add(li);
            }
        }
        private void GetChartData()
        {

            String DB_Connection_String = ConfigurationManager.ConnectionStrings["DBapplication.Properties.Settings.ConnectionString"].ConnectionString;

            using (SqlConnection con = new SqlConnection(DB_Connection_String))
            {
                SqlCommand cmd = new SqlCommand("SELECT  OrderType,count(*) as 'Number of Occurences'    FROM     RoomServiceRequest    GROUP BY OrderType    ORDER BY COUNT(*) DESC; ", con);
                //cmd.CommandType = CommandType.StoredProcedure;

                con.Open();
                SqlDataReader rdr = cmd.ExecuteReader();
                // Retrieve the Series to which we want to add DataPoints  
                Series series = Chart1.Series["Series1"];
                // Loop thru each Student record  
                while (rdr.Read())
                {
                    // Add X and Y values using AddXY() method  
                    series.Points.AddXY(rdr["OrderType"].ToString(), rdr["Number of Occurences"]);
                }
            }
        }

        protected void ddlChart_SelectedIndexChanged(object sender, EventArgs e)
        {
            // Call Get ChartData() method when the user select a different chart type  
            GetChartData();
            this.Chart1.Series["Series1"].ChartType = (SeriesChartType)Enum.Parse(typeof(SeriesChartType), ddlChart.SelectedValue);
        }
        protected void Chart1_Load(object sender, EventArgs e)
        {

        }
    }
}