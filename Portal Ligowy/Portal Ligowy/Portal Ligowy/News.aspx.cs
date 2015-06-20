using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace Portal_Ligowy
{
    public partial class News : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {




            int Id = 0;

            int Mode = 0;
            try
            {
                Id = int.Parse(Request.QueryString["Id"].ToString());
                Mode = int.Parse(Request.QueryString["Mode"].ToString());
            }
            catch {
            // jak ktos zabawi sie w hakiera
            }

            DataSet ds=db.Select("select 'asd'");
            try
            {
                ds = db.Select(string.Format(@"
select 
Pn.ID , 
Pn.Title , 
convert(varchar, DateAdd, 105) as DateAdd ,
Pn.TypeRecipient , 
(Pu.FirstName + ' ' + Pu.LastName) as Name , 
Pn.AutorID ,
Pn.Txt
from 
News Pn left outer join Users Pu on pu.ID=Pn.AutorID
where Pn.ID={0}

"
                , Id));
            }
            catch {
                Response.Redirect("Default.aspx");
            // jak nie znajdzie takiego News'a to wywala na strone startową mozna dodać popup "  ups cos sie zjebało i wyjebało cie "
            }
            try
            {
                Txt.Text = ds.Tables[0].Rows[0]["Txt"].ToString();
                Autor.Text = ds.Tables[0].Rows[0]["Name"].ToString();
                Data.Text = ds.Tables[0].Rows[0]["DateAdd"].ToString();
                Tit.Text = ds.Tables[0].Rows[0]["Title"].ToString();
            }
            catch { 
            //\jak nie zalapie danych 
            }

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }
    }
}
