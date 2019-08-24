using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Taskk
{

    public partial class WebForm1 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|Database1.mdf;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (con.State == ConnectionState.Open)
            {
                con.Close();
            }
            con.Open();
        }

        protected void btn1_Click(object sender, EventArgs e)
        {
            int qt1 = Convert.ToInt32(q1.SelectedItem.Value);
            qt1 = qt1 * 80;
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "update bill set QUANTITY='" + q1.SelectedItem.Value + "' ,Price='" + qt1 + "' where ITEMS='Vanilla'";
            cmd.ExecuteNonQuery();
            //Response.Write("<script>alert('Data Inserted');</script>");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            int qt2 = Convert.ToInt32(q2.SelectedItem.Value);
            qt2 = qt2 * 50;
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "update bill set QUANTITY='" + q2.SelectedItem.Value + "' ,Price='" + qt2 + "' where ITEMS='Chocolate'";
            cmd.ExecuteNonQuery();
            //Response.Write("<script>alert('Data Inserted');</script>");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            int qt3 = Convert.ToInt32(q3.SelectedItem.Value);
            qt3 = qt3 * 20;
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "update bill set QUANTITY='" + q3.SelectedItem.Value + "' ,Price='" + qt3 + "' where ITEMS='BlackCurrent'";
            cmd.ExecuteNonQuery();
            ;
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            int qt4 = Convert.ToInt32(q4.SelectedItem.Value);
            qt4 = qt4 * 100;
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "update bill set QUANTITY='" + q4.SelectedItem.Value + "', Price='" + qt4 + "' where ITEMS='Mango'";
            cmd.ExecuteNonQuery();

        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            int qt1 = Convert.ToInt32(q1.SelectedItem.Value);
            int qt2 = Convert.ToInt32(q2.SelectedItem.Value);
            int qt3 = Convert.ToInt32(q3.SelectedItem.Value);
            int qt4 = Convert.ToInt32(q4.SelectedItem.Value);
            int q = qt1 + qt2 + qt3 + qt4;
            int tot = (qt1 * 30) + (qt2 * 40) + (qt3 * 40) + (qt4 * 30);
            total.Text = tot.ToString();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "update bill set QUANTITY='" + q + "' ,Price='" + tot + "' where ITEMS='Total'";
            cmd.ExecuteNonQuery();
            Session["name"] = Name.Text;
            Session["contact"] = Contact.Text;
            Response.Redirect("WebForm2.aspx");


        }
    }
}