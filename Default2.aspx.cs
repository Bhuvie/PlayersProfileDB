using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{    
    static int i = 0, j = 0, r;
    SqlConnection sc;
    SqlCommand cmd;
    DataTable dt;
    
    protected void Page_Load(object sender, EventArgs e)
    {
        this.UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;
        sc = new SqlConnection("Data Source=192.169.34.32\\SQLEXPRESS,1433;Initial Catalog=catalogname;Integrated Security=False;User ID=xxx;Password=xxx;Trusted_Connection=False");
        sc.Open();
        SqlDataAdapter sda = new SqlDataAdapter("select * from dbo.cricket", sc);
        dt = new DataTable();
        sda.Fill(dt);
        r = dt.Rows.Count;
    }

   
    protected void Button1_Click(object sender, EventArgs e)
    {
        cmd = new SqlCommand("INSERT INTO dbo.cricket (category,firstname,lastname,sex,father,mother,dob,mobileno,residential,emailid,weighet,height,levl,bowlarm,bowlpace,wiktkeeper,cricketacademy,batstyle,firstpreference,captainexperience,coachname,coachnumber)VALUES(@category,@firstname,@lastname,@sex,@father,@mother,@dob,@mobileno,@residential,@emailid,@weighet,@height,@levl,@bowlarm,@bowlpace,@wiktkeeper,@cricketacademy,@batstyle,@firstpreference,@captainexperience,@coachname,@coachnumber)", sc);
        cmd.Parameters.AddWithValue("@category", RadioButtonList1.Text);
        cmd.Parameters.AddWithValue("@firstname", TextBox14.Text);
        cmd.Parameters.AddWithValue("@lastname", TextBox15.Text);
        cmd.Parameters.AddWithValue("@sex", RadioButtonList2.Text);
        cmd.Parameters.AddWithValue("@father", TextBox3.Text);
        cmd.Parameters.AddWithValue("@mother", TextBox4.Text);
        cmd.Parameters.AddWithValue("@dob", TextBox12.Text);
        cmd.Parameters.AddWithValue("@mobileno", TextBox6.Text);
        cmd.Parameters.AddWithValue("@residential", TextBox13.Text);
        cmd.Parameters.AddWithValue("@emailid", TextBox7.Text);
        cmd.Parameters.AddWithValue("@weighet", TextBox8.Text);
        cmd.Parameters.AddWithValue("@height", TextBox9.Text);
        cmd.Parameters.AddWithValue("@levl", RadioButtonList3.Text);
        cmd.Parameters.AddWithValue("@bowlarm", RadioButtonList4.Text);
        cmd.Parameters.AddWithValue("@bowlpace", RadioButtonList5.Text);
        cmd.Parameters.AddWithValue("@wiktkeeper", RadioButtonList6.Text);
        cmd.Parameters.AddWithValue("@cricketacademy", TextBox10.Text);
        cmd.Parameters.AddWithValue("@batstyle", RadioButtonList7.Text);
        cmd.Parameters.AddWithValue("@firstpreference", RadioButtonList8.Text);
        cmd.Parameters.AddWithValue("@captainexperience", RadioButtonList9.Text);
        cmd.Parameters.AddWithValue("@coachname", TextBox16.Text);
        cmd.Parameters.AddWithValue("@coachnumber", TextBox17.Text);
        cmd.ExecuteNonQuery();

        Response.Redirect("~/Default3.aspx?UserName=" + TextBox14.Text);
}
    }
