using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class admin_ilanDetayEkle : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        DropDownListIlanimiz.Enabled = false;
        SqlConnection baglanti = new SqlConnection(@"Data Source=USER-PC\MSSQLSERVERS; password=12345;Initial Catalog=emlakDB;Integrated Security=True;MultipleActiveResultSets=True");
        baglanti.Open();
        SqlCommand cmdIlan = new SqlCommand("select TOP 1 * from ilan order by ilanID desc", baglanti);
        SqlDataReader drIlan = cmdIlan.ExecuteReader();

        DropDownListIlanimiz.DataTextField = "ilanBaslik";
        DropDownListIlanimiz.DataValueField = "ilanID";

        DropDownListIlanimiz.DataSource = drIlan;
        DropDownListIlanimiz.DataBind();


    }
    protected void ButtonKaydetIlanDetayEkle_Click(object sender, EventArgs e)
    {
        SqlConnection baglanti = new SqlConnection(@"Data Source=USER-PC\MSSQLSERVERS; password=12345;Initial Catalog=emlakDB;Integrated Security=True;MultipleActiveResultSets=True");
        baglanti.Open();

        SqlCommand cmdDetayEkle = new SqlCommand("insert into ilanDetay(idOdaSayisi,idBinaYasi,idBinaKat,idBinaKacinciKat,idIsitma,idEsyaliMi,ilanID) values('"+TextBoxOdaSayisi.Text+"','"+TextBoxBinaYasi.Text+"','"+TextBoxBinaKacKatli.Text+"','"+TextBoxKacinciKatta.Text+"','"+TextBoxIsitma.Text+"','"+CheckBoxEsyaliMi.Checked+"','"+DropDownListIlanimiz.SelectedValue+"')",baglanti);
        cmdDetayEkle.ExecuteNonQuery();
        Response.Redirect("ilanResimEkle.aspx");
    }
   
}