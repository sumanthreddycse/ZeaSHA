using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class DocMessages : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        int DOCID1 = Convert.ToInt32(Session["newid"]);
        if (Session["USERNAME"] != null)
        {
            String CS = ConfigurationManager.ConnectionStrings["DBMSConnectionString1"].ConnectionString;
            SqlConnection con = new SqlConnection(CS);
            con.Open();
            string cmd = "select UserID, UserName, UserMessage from Messages where Docid='" + DOCID1 + "'";
            SqlDataAdapter da = new SqlDataAdapter(cmd, con);
            DataSet ds = new DataSet();
            da.Fill(ds);
            GridView1.DataSource = ds.Tables[0];
            GridView1.DataBind();
        }
        else
        {
            Response.Redirect("~/SignIn.aspx");
        }
    }

    protected void btnSignOut_Click(object sender, EventArgs e)
    {

        Session["USERNAME"] = null;
        Response.Redirect("~/Default.aspx");
    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
        int senderid = Convert.ToInt32(Session["newid"]);
        string sendername = Convert.ToString(Session["USERNAME"]);
        if (TextBox1.Text != "")
        {
            String CS = ConfigurationManager.ConnectionStrings["DBMSConnectionString1"].ConnectionString;
            using (SqlConnection con = new SqlConnection(CS))
            {
                SqlCommand cmd = new SqlCommand("Insert into Messages(Userid,UserName,UserMessage,EmpID) values('" + senderid + "','" + sendername + "','" + TextBox3.Text + "','" + Convert.ToInt32(TextBox1.Text) + "')", con);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                TextBox1.Text = "";
                TextBox2.Text = "";
                TextBox3.Text = "";
                /* sda.InsertCommand = new SqlCommand("INSERT INTO Messages VALUES (@UserID, @UserName, @UserMessage, @DocID, @PatID, @EmpID)", con);
                 sda.InsertCommand.Parameters.Add("@UserID", SqlDbType.Int).Value = senderid;
                 sda.InsertCommand.Parameters.Add("@UserName", SqlDbType.VarChar).Value = sendername;
                 sda.InsertCommand.Parameters.Add("@UserMessage", SqlDbType.VarChar).Value = TextBox3.Text;
                 sda.InsertCommand.Parameters.Add("@DocID", SqlDbType.Int).Value = null;
                 sda.InsertCommand.Parameters.Add("@UserID", SqlDbType.Int).Value = null;
                 sda.InsertCommand.Parameters.Add("@EmpID", SqlDbType.Int).Value = Convert.ToInt32(TextBox1.Text);
                 con.Open();
                 sda.InsertCommand.ExecuteNonQuery();
                 con.Close();
                 TextBox1.Text = String.Empty;
                 TextBox2.Text = String.Empty;
                 TextBox3.Text = String.Empty;*/
            }
        }
        else if (TextBox2.Text != "")
        {
            String CS = ConfigurationManager.ConnectionStrings["DBMSConnectionString1"].ConnectionString;
            using (SqlConnection con = new SqlConnection(CS))
            {
                SqlCommand cmd = new SqlCommand("Insert into Messages(Userid,UserName,UserMessage,PatID) values('" + senderid + "','" + sendername + "','" + TextBox3.Text + "','" + Convert.ToInt32(TextBox2.Text) + "')", con);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                TextBox1.Text = "";
                TextBox2.Text = "";
                TextBox3.Text = "";

                //SqlDataAdapter sda = new SqlDataAdapter();
                //sda.InsertCommand = new SqlCommand("INSERT INTO Messages VALUES (@UserID, @UserName, @UserMessage, @DocID, @PatID, @EmpID)", con);
                //sda.InsertCommand.Parameters.Add("@UserID", SqlDbType.Int).Value = senderid;
                //sda.InsertCommand.Parameters.Add("@UserName", SqlDbType.VarChar).Value = sendername;
                //sda.InsertCommand.Parameters.Add("@UserMessage", SqlDbType.VarChar).Value = TextBox3.Text;
                //sda.InsertCommand.Parameters.Add("@DocID", SqlDbType.Int).Value = null;
                //sda.InsertCommand.Parameters.Add("@PatID", SqlDbType.Int).Value = Convert.ToInt32(TextBox2.Text);
                //sda.InsertCommand.Parameters.Add("@EmpID", SqlDbType.Int).Value = null;

                //con.Open();
                //sda.InsertCommand.ExecuteNonQuery();
                //con.Close();
                //TextBox1.Text = String.Empty;
                //TextBox2.Text = String.Empty;
                //TextBox3.Text = String.Empty;
            }
        }
        else
        { Label1.Text = "Please Enter Valid ID"; }

    }
}