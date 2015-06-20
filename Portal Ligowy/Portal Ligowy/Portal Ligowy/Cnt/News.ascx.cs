using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace Portal_Ligowy.Cnt
{
    public partial class News : System.Web.UI.UserControl
    {
        public void PrepareSQL()
        {

            ////////
            // TUTAJ MUSZE MIEC DOSTEP DO DANYCH USER'A najlepiej jak bd z jakiejs klasy np tools.get.userID lub tools.get.UserFirstName
            // mozna tez dac mozliowśc dodawania danych np tools.set.UserID lub tools.set.UserFirstName
            //
            ///////

            //int UserID = 2;
            
            
            int UserType = 4;
            int UserCaptainID=3;

            // 1 zawodnik
            // 2 kapitan
            // 3 admin ligi
            // 4 admin systemu



            //------------TypeRecipient-------------//

            //0 od admina systemu do wszystkich zalogowanych
            //1 od admina systemu do wszystkich zalogowanych + gosci
            //2 od admina systemu do adminów lig
            //3 od admina systemu do wszystich zawodników 

            //10 od admina ligi do wszystkich zalogowanych
            //11 od admina ligi do wszystkich zalogowanych + gosci
            //12 od admina ligi do kapitanów 

            //20 od kapitana do zawodników

            //-----------------------------------------//
           
            string SQL = string.Format(@"
select 
Pn.ID , 
Pn.Title , 
convert(varchar, DateAdd, 105) as dateAdd ,
Pn.TypeRecipient , 
(Pu.FirstName + ' ' + Pu.LastName) as Name , 
Pn.AutorID ,
Pn.TxtShort
from 
News Pn left outer join Users Pu on pu.ID=Pn.AutorID
@where order by Pn.DateAdd");

            string SQLOut;

            switch (UserType) {
                default : SQLOut = SQL.Replace("@where", " where Pn.ID=-1 "); break;
                case 0: SQLOut = SQL.Replace("@where", string.Format(@"
                                                                where  pn.TypeRecipient=1 or pn.TypeRecipient=11 
                                                                "));
                                                                break;
                case 1: 
                    SQLOut = SQL.Replace("@where", string.Format(@"
                                                                where (pn.TypeRecipient=0 or pn.TypeRecipient=1 or pn.TypeRecipient=3 or pn.TypeRecipient=10 or pn.TypeRecipient=11) 
                                                                or (pn.TypeRecipient=20 and Pu.ID={0})", UserCaptainID)); 
                                                                break;
                case 2: SQLOut = SQL.Replace("@where", string.Format(@"
                                                                where pn.TypeRecipient=0 or pn.TypeRecipient=1 or pn.TypeRecipient=3 or pn.TypeRecipient=10 or pn.TypeRecipient=11 or pn.TypeRecipient=12 
                                                                "));
                                                                break;
                case 3: SQLOut = SQL.Replace("@where", string.Format(@"
                                                                where pn.TypeRecipient=0 or pn.TypeRecipient=1 or pn.TypeRecipient=3 or pn.TypeRecipient=10 or pn.TypeRecipient=11 or pn.TypeRecipient=12 or pn.TypeRecipient=2
                                                                "));
                                                                break;
                case 4: SQLOut = SQL.Replace("@where", " "); break;
            }

            SqlDataSource1.SelectCommand = SQLOut;
            //ListView1.DataBind();
        }
        protected void Page_Load(object sender, EventArgs e)
        {

            PrepareSQL();
        }


       

      

    }
}