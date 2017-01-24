using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class admin_ilanResimEkle : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        DropDownListIlan.Enabled = false;
        SqlConnection baglanti = new SqlConnection(@"Data Source=USER-PC\MSSQLSERVERS; password=12345;Initial Catalog=emlakDB;Integrated Security=True;MultipleActiveResultSets=True");
        baglanti.Open();
        SqlCommand cmdilan = new SqlCommand("select top 1 * from ilan order by ilanID desc",baglanti);
        SqlDataReader drir = cmdilan.ExecuteReader();

        DropDownListIlan.DataTextField = "ilanBaslik";
        DropDownListIlan.DataValueField = "ilanID";
        DropDownListIlan.DataSource = drir;
        DropDownListIlan.DataBind();

    }
    protected void ButtonIlanResimEkle_Click(object sender, EventArgs e)
    {
        SqlConnection baglanti = new SqlConnection(@"Data Source=USER-PC\MSSQLSERVERS; password=12345;Initial Catalog=emlakDB;Integrated Security=True;MultipleActiveResultSets=True");
        baglanti.Open();
        if (FileUploadIlanResim.HasFile)
        {
            FileUploadIlanResim.SaveAs(Server.MapPath("/ilanResim/"+FileUploadIlanResim.FileName));
            SqlCommand cmde = new SqlCommand("insert into resim(ilanID,resimAd,resimResim) values('"+DropDownListIlan.SelectedValue+"','"+TextBoxResimAdi.Text+"','/ilanResim/"+FileUploadIlanResim+"')",baglanti);
            cmde.ExecuteNonQuery();
            Response.Redirect("ilanResimEkle.aspx");
        }
        else {
            Response.Write("Lütfen ilana ait fotoğraflar ekleyin...");

        }
    }
    protected void ButtonBitir_Click(object sender, EventArgs e)
    {
        Response.Redirect("ilanOzellikEkle.aspx");
    }
}