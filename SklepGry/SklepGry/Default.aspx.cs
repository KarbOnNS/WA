using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;

namespace SklepGry
{
    public partial class _Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void ButtonZaloguj_Click(object sender, EventArgs e)
        {

            string constr = WebConfigurationManager.ConnectionStrings["KarbonConnection"].ConnectionString;
            SqlConnection con = new SqlConnection(constr);
            try
            {
                con.Open();
                SqlCommand cmdAdmin = new SqlCommand("select count(*) from Pracownik where imie='" + TextBoxLogin.Text + "' AND nazwisko='" + TextBoxHaslo.Text + "'", con);
                SqlDataAdapter sdaAdmin = new SqlDataAdapter(cmdAdmin);
               
                DataTable dtAdmin = new DataTable();
                sdaAdmin.Fill(dtAdmin);
                cmdAdmin.ExecuteNonQuery();
                if (dtAdmin.Rows[0][0].ToString() == "1")
                {
                    Session["LoginAdmina"] = TextBoxLogin.Text;
                    Response.Redirect("StronaGlowna.aspx");

                }
                else
                {
                    Response.Write("<script>alert ('BŁĄD LOGOWANIA')</script>");
                }


            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }

        }

    }
}
