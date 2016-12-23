using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class DocAppointments : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["USERNAME"] != null)
        {
            int DOCID1 = Convert.ToInt32(Session["newid"]);
            String CS = ConfigurationManager.ConnectionStrings["DBMSConnectionString1"].ConnectionString;
            SqlConnection con = new SqlConnection(CS);
            con.Open();
            string cmd = "select Pid, Name, Age, Gender, Diagnosis, Date from PatientData where Docid='" + DOCID1 + "'";
            SqlDataAdapter da = new SqlDataAdapter(cmd, con);
            DataSet ds = new DataSet();
            da.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
            con.Close();

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
}