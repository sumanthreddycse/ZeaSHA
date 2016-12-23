using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;


public partial class SignInEmp : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        String CS = ConfigurationManager.ConnectionStrings["DBMSConnectionString1"].ConnectionString;
        using (SqlConnection con = new SqlConnection(CS))
        {
            SqlCommand cmd = new SqlCommand("select * from Usersemp where Username='" + UserName.Text + "' and Password='" + Password.Text + "'", con);
            con.Open();
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            sda.Fill(ds);
            int empid = int.Parse(ds.Tables[0].Rows[0]["EmpId"].ToString());
            if (ds.Tables[0].Rows.Count != 0)
            {

                Session["USERNAME"] = UserName.Text;
                Session["newid"] = empid;
                Response.Redirect("~/HomeEmp.aspx");
            }
            else
            {
                Label3.Text = "Invalid Username or Password !";
            }

        }

    }
}