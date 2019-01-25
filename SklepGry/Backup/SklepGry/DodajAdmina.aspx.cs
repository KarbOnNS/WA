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
    public partial class DodajAdmina : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["s2KarbowiakMConnectionString"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonAnuluj_Click(object sender, EventArgs e)
        {
            Response.Redirect("StronaGlowna.aspx");
        }

        protected void ButtonPotwierdzDodawanie_Click(object sender, EventArgs e)
        {
            try
            {
                con.Open();
                SqlCommand cmdAdmin = new SqlCommand("select count(*) from Pracownik where imie='" + TextBoxLogin.Text + "'", con);
                SqlDataAdapter sdaAdmin = new SqlDataAdapter(cmdAdmin);

                DataTable dtUser = new DataTable();
                sdaAdmin.Fill(dtUser);
                cmdAdmin.ExecuteNonQuery();
                if (dtUser.Rows[0][0].ToString() == "1")
                {
                    Response.Write("<script>alert ('TAKI UŻYTKOWNIK ISTNIEJE')</script>");
                    con.Close();
                }
                else
                {
                    con.Close();
                    DodajAdminaDoBazy();
                }


            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }

        }

        protected void DodajAdminaDoBazy()
        {

            try
            {
                string command = "INSERT INTO Pracownik (imie, nazwisko) VALUES ('" + TextBoxLogin.Text + "','" + TextBoxHaslo.Text + "');";
                con.Open();
                SqlCommand cmd = new SqlCommand(command, con);
                cmd.ExecuteNonQuery();
                Response.Write("<script>alert ('DODANO NOWEGO ADMINISTRATORA')</script>");
                Response.Redirect("StronaGlowna.aspx");

            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }
    }
}