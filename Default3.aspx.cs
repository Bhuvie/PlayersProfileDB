using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default3 : System.Web.UI.Page
{
    SqlConnection src;
    SqlCommand cmd0,cmd1,cmd2,cmd3;
   
        
        
    protected void Page_Load(object sender, EventArgs e)
    {
        this.UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;
        TextBox33.Text = Request.QueryString["UserName"];
    }
 
         protected void Button2_Click(object sender, EventArgs e)
    {
        src = new SqlConnection("Data Source=192.169.34.32\\SQLEXPRESS,1433;Initial Catalog=catalogname;Integrated Security=False;User ID=xxx;Password=xxx;Trusted_Connection=False");
        src.Open();
       
        cmd0 = new SqlCommand("INSERT INTO dbo.test (name,matches,run,notout,hs,averg,sr,hund,fifty)VALUES(@name,@matches,@run,@notout,@hs,@averg,@sr,@hund,@fifty)", src);
       cmd0.Parameters.AddWithValue("@name", TextBox33.Text);
        cmd0.Parameters.AddWithValue("@matches",TextBox1.Text);
        cmd0.Parameters.AddWithValue("@run", TextBox2.Text);
        cmd0.Parameters.AddWithValue("@notout", TextBox3.Text);
        cmd0.Parameters.AddWithValue("@hs", TextBox4.Text);
        cmd0.Parameters.AddWithValue("@averg", TextBox5.Text);
        cmd0.Parameters.AddWithValue("@sr", TextBox6.Text);
        cmd0.Parameters.AddWithValue("@hund", TextBox7.Text);
        cmd0.Parameters.AddWithValue("@fifty", TextBox8.Text);
        cmd0.ExecuteNonQuery();
        cmd1 = new SqlCommand("INSERT INTO dbo.odi (name,matches,run,notout,hs,averg,sr,hund,fifty)VALUES(@name,@matches,@run,@notout,@hs,@averg,@sr,@hund,@fifty)", src);
        cmd1.Parameters.AddWithValue("@name", TextBox33.Text);
        cmd1.Parameters.AddWithValue("@matches", TextBox9.Text);
        cmd1.Parameters.AddWithValue("@run", TextBox10.Text);
        cmd1.Parameters.AddWithValue("@notout", TextBox11.Text);
        cmd1.Parameters.AddWithValue("@hs", TextBox12.Text);
        cmd1.Parameters.AddWithValue("@averg", TextBox13.Text);
        cmd1.Parameters.AddWithValue("@sr", TextBox14.Text);
        cmd1.Parameters.AddWithValue("@hund", TextBox15.Text);
        cmd1.Parameters.AddWithValue("@fifty", TextBox16.Text);
        cmd1.ExecuteNonQuery();
        cmd2 = new SqlCommand("INSERT INTO dbo.t20 (name,matches,run,notout,hs,averg,sr,hund,fifty)VALUES(@name,@matches,@run,@notout,@hs,@averg,@sr,@hund,@fifty)", src);
        cmd2.Parameters.AddWithValue("@name", TextBox33.Text);
        cmd2.Parameters.AddWithValue("@matches", TextBox17.Text);
        cmd2.Parameters.AddWithValue("@run", TextBox18.Text);
        cmd2.Parameters.AddWithValue("@notout", TextBox19.Text);
        cmd2.Parameters.AddWithValue("@hs", TextBox20.Text);
        cmd2.Parameters.AddWithValue("@averg", TextBox21.Text);
        cmd2.Parameters.AddWithValue("@sr", TextBox22.Text);
        cmd2.Parameters.AddWithValue("@hund", TextBox23.Text);
        cmd2.Parameters.AddWithValue("@fifty", TextBox24.Text);
        cmd2.ExecuteNonQuery();
        cmd3 = new SqlCommand("INSERT INTO dbo.IPL (name,matches,run,notout,hs,averg,sr,hund,fifty)VALUES(@name,@matches,@run,@notout,@hs,@averg,@sr,@hund,@fifty)", src);
        cmd3.Parameters.AddWithValue("@name", TextBox33.Text);
        cmd3.Parameters.AddWithValue("@matches", TextBox25.Text);
        cmd3.Parameters.AddWithValue("@run", TextBox26.Text);
        cmd3.Parameters.AddWithValue("@notout", TextBox27.Text);
        cmd3.Parameters.AddWithValue("@hs", TextBox28.Text);
        cmd3.Parameters.AddWithValue("@averg", TextBox29.Text);
        cmd3.Parameters.AddWithValue("@sr", TextBox30.Text);
        cmd3.Parameters.AddWithValue("@hund", TextBox31.Text);
        cmd3.Parameters.AddWithValue("@fifty", TextBox32.Text);
        cmd3.ExecuteNonQuery();
        Response.Redirect("~/Default4.aspx");
    }
}