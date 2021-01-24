using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace ReBox
{
    public partial class Index : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {

        }


        public static string getBinsJson()
        {
            string conString = ConfigurationManager.ConnectionStrings["recycleboxEntities"].ConnectionString;

            List<RecycleBox> bins = new List<RecycleBox>();

            using (SqlConnection con = new SqlConnection(conString))
            {
                using (SqlCommand cmd = new SqlCommand("SELECT * FROM dbo.RecycleBox"))
                {

                    using (SqlDataAdapter sda = new SqlDataAdapter())
                    {
                        cmd.Connection = con;
                        sda.SelectCommand = cmd;
                        con.Open();
                        DataSet ds = new DataSet();
                        sda.Fill(ds);
                        foreach (DataRow dr in ds.Tables[0].Rows)
                        {

                            bins.Add(new RecycleBox
                            {

                                idLocation = (int)dr["idlocation"],
                                latitude = (double)dr["latitude"],
                                longitude = (double)dr["longitude"],
                                type =(string)dr[ "type"],
                                name = (string)dr["name"]
                            });
                        }

                    }
                }
            }


            return JsonConvert.SerializeObject(bins);


        }
    }
}

