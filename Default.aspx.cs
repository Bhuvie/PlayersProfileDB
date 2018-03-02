using System;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Drawing;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        this.UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection("Data Source=192.169.34.32\\SQLEXPRESS,1433;Initial Catalog=catalogname;Integrated Security=False;User ID=xxx;Password=xxx;Trusted_Connection=False");
        con.Open();
        SqlCommand cmd = new SqlCommand("select COUNT(*)FROM cricket WHERE emailid='" + TextBox1.Text + "' and mobileno='" + TextBox2.Text + "'");
        cmd.Connection = con;
        int OBJ = Convert.ToInt32(cmd.ExecuteScalar());
        if (OBJ > 0)
        {
            Session["emailid"] = TextBox1.Text;
            Response.Write("Sucessfully Login");
          GridView1.Visible = true;

        }
        else
        {
            Label1.Text = "Invalid username or password";
            this.Label1.ForeColor = Color.Red;
        }
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Default2.aspx");
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}
