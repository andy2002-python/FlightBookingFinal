using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Configuration;
using System.Data.SqlClient;

namespace FlightBooking
{
    public partial class Register : System.Web.UI.Page
    {
        String dt;
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (!IsPostBack)
            {
                calender.Visible = false;
            }
             
        }

        protected void submit_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                con.Open();
 
                string frm, t, cls, nm;
                int adults, childs;

                nm = name.Text;
                frm = from.Text;
                t = to.Text;
                cls = classtxt.Text;
                adults = Convert.ToInt32(adult.Text);
                childs = Convert.ToInt32(child.Text);
                dt = date.Text;

                // one more column of date and time of registration is required...
                SqlCommand cmd = new SqlCommand("insert into MyProjectTB values('"+ nm + "','" + frm + "', '" + t + "', '" + dt + "', '" + cls + "', " + adults + ", " + childs + ")", con);
                cmd.ExecuteNonQuery();
                con.Close();
            }

            catch (Exception ex)
            {
                    Response.Write("Error : " + ex);
            }
            printing.Text = " Your response is submitted. ";
            clear_input();
        }

        void clear_input()
        {
            name.Text = "";
            from.Text = "";   
            to.Text = "";
            classtxt.Text = "";
            adult.Text = "";
            child.Text = "";
            date.Text = "";
            from.Focus();
        }

        
        protected void Button2_Click(object sender, EventArgs e)
        {
            clear_input();
        }

        protected void calender_SelectionChanged1(object sender, EventArgs e)
        {
            date.Text = calender.SelectedDate.ToString();
        }

        protected void ImageButton1_Click1(object sender, ImageClickEventArgs e)
        {
            calender.Visible = true;
        }
         
  
    }
}