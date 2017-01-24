using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class admin_ilanOzellikEkle : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        DropDownListIlan.Enabled = false;
        SqlConnection baglanti = new SqlConnection(@"Data Source=USER-PC\MSSQLSERVERS; password=12345;Initial Catalog=emlakDB;Integrated Security=True;MultipleActiveResultSets=True");
        baglanti.Open();
        SqlCommand cmd = new SqlCommand("select top 1 * from ilan order by ilanID desc",baglanti);
        SqlDataReader dr = cmd.ExecuteReader();

        DropDownListIlan.DataTextField = "ilanBaslik";
        DropDownListIlan.DataValueField = "ilanID";

        DropDownListIlan.DataSource = dr;
        DropDownListIlan.DataBind();

    }
    protected void ButtonOzellikEkle_Click(object sender, EventArgs e)
    {
        SqlConnection baglanti = new SqlConnection(@"Data Source=USER-PC\MSSQLSERVERS; password=12345;Initial Catalog=emlakDB;Integrated Security=True;MultipleActiveResultSets=True");
        baglanti.Open();

        SqlCommand cmdIcOz = new SqlCommand("insert into icOzellik(ilanID,kuvet,asansor,somine,kapici) values('"+DropDownListIlan.SelectedValue+"','"+CheckBoxKuvet.Checked+"','"+CheckBoxAsansor.Checked+"','"+CheckBoxSomine.Checked+"','"+CheckBoxKapici.Checked+"')",baglanti);
        cmdIcOz.ExecuteNonQuery();

        SqlCommand cmddisOz= new SqlCommand("insert into disOzellik(ilanID,park, alarm,oyunAlani,yuruyusParkuru) values('"+DropDownListIlan.SelectedValue+"','"+CheckBoxPark.Checked+"','"+CheckBoxAlarm.Checked+"','"+CheckBoxOyunAlani.Checked+"','"+CheckBoxYuruyusParkuru.Checked+"')",baglanti);
        cmddisOz.ExecuteNonQuery();
        Response.Redirect("panel.aspx");
    }
}