using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class HomePat : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["USERNAME"] != null)
        {
            int PATID1 = Convert.ToInt32(Session["newid"]);
            String CS = ConfigurationManager.ConnectionStrings["DBMSConnectionString1"].ConnectionString;
            SqlConnection con = new SqlConnection(CS);
            con.Open();
            string cmd = "select Pid, Name, Age, Gender, BloodGroup, Diagnosis, Docid, Date, Severity, Remarks, Prescription, AdmissionDate, DischargeDate from PatientData where Pid='" + PATID1 + "'";
            SqlDataAdapter da = new SqlDataAdapter(cmd, con);
            DataSet ds = new DataSet();
            da.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
            con.Close();
            con.Open();
            string cmd1 = "select UserID, UserName, UserMessage from Messages where PatID='" + PATID1 + "'";
            SqlDataAdapter da1 = new SqlDataAdapter(cmd1, con);
            DataSet ds1 = new DataSet();
            da1.Fill(ds1);
            GridView2.DataSource = ds1.Tables[0];
            GridView2.DataBind();
            //lblSuccess.Text = "Login Success, Welcome " + Session["USERNAME"].ToString() + "";
        }
        else
        {
            Response.Redirect("~/SignInPat.aspx");
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
        else
        {
            Label2.Text = "Please Enter Valid ID";
        }

    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        string url = "http://www.webmd.com/drugs/search.aspx?stype=drug&query='"+TextBox3.Text+"'&source=2";
        Response.Redirect(url);
        TextBox3.Text = "";
    }
}