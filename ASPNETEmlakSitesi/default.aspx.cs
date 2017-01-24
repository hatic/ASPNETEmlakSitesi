using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class _default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection baglanti = new SqlConnection(@"Data Source=USER-PC\MSSQLSERVERS; password=12345;Initial Catalog=emlakDB;Integrated Security=True;MultipleActiveResultSets=True");
        baglanti.Open();
        SqlCommand cmdslider = new SqlCommand("select top 5 * from ilan where ilanVitrin=1 order by ilanID",baglanti);
        SqlDataReader drslider = cmdslider.ExecuteReader();

        DataListdl_slider.DataSource = drslider;
        DataListdl_slider.DataBind();

        SqlCommand cmdv = new SqlCommand("select top 12 * from ilan where ilanVitrin=1 order by ilanID",baglanti);
        SqlDataReader drv = cmdv.ExecuteReader();

        DataListVitrin.DataSource = drv;
        DataListVitrin.DataBind();

        
    }
   
}