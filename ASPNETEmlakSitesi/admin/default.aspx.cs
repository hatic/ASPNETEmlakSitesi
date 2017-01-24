using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class admin_default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void ButtonGirisYap_Click(object sender, EventArgs e)
    {
        SqlConnection baglanti = new SqlConnection(@"Data Source=USER-PC\MSSQLSERVERS; password=12345;Initial Catalog=emlakDB;Integrated Security=True;MultipleActiveResultSets=True");
        baglanti.Open();
        SqlCommand cmdGiris = new SqlCommand("select *  from admin where adminKullanici='" + TextBoxKullaniciAdi.Text + "' and adminSifre='" + TextBoxSifre.Text + "'", baglanti);

        SqlDataReader drGiris = cmdGiris.ExecuteReader();
        if (drGiris.Read())
        {
            Response.Redirect("panel.aspx");
        }
        else
        {
            Response.Write("Yanlış Kullanıcı adı veya şifre lütfen kontrol edip tekrar deneyin");
        }
    }
}