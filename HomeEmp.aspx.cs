using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class HomeEmp : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        int EMPID1 = Convert.ToInt32(Session["newid"]);
        if (Session["USERNAME"] != null)
        {
            String CS = ConfigurationManager.ConnectionStrings["DBMSConnectionString1"].ConnectionString;
            SqlConnection con = new SqlConnection(CS);
            con.Open();
            string cmd = "select UserID, UserName, UserMessage from Messages where EmpID='" + EMPID1 + "'";
            SqlDataAdapter da = new SqlDataAdapter(cmd, con);
            DataSet ds = new DataSet();
            da.Fill(ds);
            GridView1.DataSource = ds.Tables[0];
            GridView1.DataBind();
            //lblSuccess.Text = "Login Success, Welcome " + Session["USERNAME"].ToString() + "";
        }
        else
        {
            Response.Redirect("~/SignInEmp.aspx");
        }
    }

    protected void btnSignOut_Click(object sender, EventArgs e)
    {
        Session["USERNAME"] = null;
        Response.Redirect("~/Default.aspx");
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        int senderid = Convert.ToInt32(Session["newid"]);
        string sendername = Convert.ToString(Session["USERNAME"]);
        if (TextBox1.Text != "")
        {
            String CS = ConfigurationManager.ConnectionStrings["DBMSConnectionString1"].ConnectionString;
            using (SqlConnection con = new SqlConnection(CS))
            {
                SqlCommand cmd = new SqlCommand("Insert into Messages(Userid,UserName,UserMessage,DocID) values('" + senderid + "','" + sendername + "','" + TextBox2.Text + "','" + Convert.ToInt32(TextBox1.Text) + "')", con);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                TextBox1.Text = "";
                TextBox2.Text = "";
            }

        }
        else
        { Label1.Text = "Please Enter Valid ID"; }
    }
        }