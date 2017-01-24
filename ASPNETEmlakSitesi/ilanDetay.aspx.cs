using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class ilanDetay : System.Web.UI.Page
{
    string ilanID = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection baglanti = new SqlConnection(@"Data Source=USER-PC\MSSQLSERVERS; password=12345;Initial Catalog=emlakDB;Integrated Security=True;MultipleActiveResultSets=True");
        baglanti.Open();
        ilanID=Request.QueryString["ilanID"];
        


        SqlCommand cmds = new SqlCommand("select * from resim where ilanID='"+ilanID+"'",baglanti);
        SqlDataReader drs = cmds.ExecuteReader();

        DataListDetaySlider.DataSource = drs;
        DataListDetaySlider.DataBind();

        SqlCommand cmdd = new SqlCommand("select * from ilanDetay where ilanID='" + ilanID + "'", baglanti);
        SqlDataReader drd = cmdd.ExecuteReader();

        DataListIlanDetay.DataSource = drd;
        DataListIlanDetay.DataBind();

        SqlCommand cmda = new SqlCommand("select * from ilan where ilanID='"+ilanID+"'", baglanti);
        SqlDataReader dra = cmda.ExecuteReader();

        DataListIlanAciklamaAdres.DataSource = dra;
        DataListIlanAciklamaAdres.DataBind();

        SqlCommand cmdio = new SqlCommand("select * from icOzellik where ilanID='" + ilanID + "'", baglanti);
        SqlDataReader drio = cmdio.ExecuteReader();

        DataListicOzellik.DataSource = drio;
        DataListicOzellik.DataBind();


        SqlCommand cmddo = new SqlCommand("select * from disOzellik where ilanID='" + ilanID + "'", baglanti);
        SqlDataReader drdo = cmddo.ExecuteReader();

        DataListdisOzellik.DataSource = drdo;
        DataListdisOzellik.DataBind();
    }
}