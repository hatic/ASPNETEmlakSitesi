using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class admin_ilanEkle : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
            SqlConnection baglanti = new SqlConnection(@"Data Source=USER-PC\MSSQLSERVERS; password=12345;Initial Catalog=emlakDB;Integrated Security=True;MultipleActiveResultSets=True");
            baglanti.Open();
            if (IsPostBack == false)
            {
            //kategori
            SqlCommand cmdk = new SqlCommand("select * from kategori", baglanti);
            SqlDataReader drk = cmdk.ExecuteReader();

            DropDownListKategori.DataTextField = "kategoriAdi";
            DropDownListKategori.DataValueField = "kategoriID";
            DropDownListKategori.DataSource = drk;
            DropDownListKategori.DataBind();


            //islem
            SqlCommand cmdi = new SqlCommand("select * from islem", baglanti);
            SqlDataReader dri = cmdi.ExecuteReader();
            DropDownListIslem.DataTextField = "islemAdi";
            DropDownListIslem.DataValueField = "islemID";
            DropDownListIslem.DataSource = dri;
            DropDownListIslem.DataBind();

            //kimden
            SqlCommand cmdKim = new SqlCommand("select * from kimden", baglanti);
            SqlDataReader drKim = cmdKim.ExecuteReader();
            DropDownListKimden.DataTextField = "kimdenAd";
            DropDownListKimden.DataValueField = "kimdenID";
            DropDownListKimden.DataSource = drKim;
            DropDownListKimden.DataBind();

        }
    }
    protected void ButtonKaydet_Click(object sender, EventArgs e)
    {
        SqlConnection baglanti = new SqlConnection(@"Data Source=USER-PC\MSSQLSERVERS; password=12345;Initial Catalog=emlakDB;Integrated Security=True;MultipleActiveResultSets=True");
        baglanti.Open();
        if (FileUploadVitrin.HasFile)
        {
            FileUploadVitrin.SaveAs(Server.MapPath("/vresim/"+FileUploadVitrin.FileName));
            SqlCommand cmdie = new SqlCommand("insert into ilan (ilanBaslik,ilanFiyat,kategoriID,islemID,kimdenID,ilanVitrin,ilanVResim,ilanAdres,ilanAciklama) Values('" + TextBoxIşanBasligi.Text + "','" + TextBoxIlanFiyat.Text + "','" + DropDownListKategori.SelectedValue + "','" + DropDownListIslem.SelectedValue + "','" + DropDownListKimden.SelectedValue + "','" + CheckBoxVitrinOlsunMu.Checked + "','/vresim/"+FileUploadVitrin.FileName+"','" + TextBoxAdres.Text + "','" + TextBoxAciklama.Text + "')", baglanti);
            cmdie.ExecuteNonQuery();
            Response.Redirect("ilanDetayEkle.aspx");
        }
        else {
            Response.Write("Lütfen resim seçiniz...");
        }
    }
}