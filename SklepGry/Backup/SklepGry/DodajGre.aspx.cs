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
    public partial class DodajGre : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["s2KarbowiakMConnectionString"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonAnuluj_Click(object sender, EventArgs e)
        {
            Response.Redirect("StronaGlowna.aspx");
        }

        protected void ButtonDodaj_Click(object sender, EventArgs e)
        {
            try
            {
                con.Open();
               
                SqlCommand cmdAdmin = new SqlCommand("select count(*) from gra where nazwa='" + TextBoxNazwa.Text + "'", con);
                SqlDataAdapter sdaAdmin = new SqlDataAdapter(cmdAdmin);

                DataTable dtAdmin = new DataTable();
                sdaAdmin.Fill(dtAdmin);
                cmdAdmin.ExecuteNonQuery();
                if (dtAdmin.Rows[0][0].ToString() == "1")
                {
                    Response.Write("<script>alert ('TAKA GRA JUŻ ISTNIEJE')</script>");
                    con.Close();
                }
                else
                {
                    con.Close();
                    DodajGreDoBazy();
                }

            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }

        }

        protected void DodajGreDoBazy()
        {
            try
            {
                int kategoria = 0;
                if (DropDownList1.Text == "Horror")
                {
                    kategoria = 1;
                }
                else if (DropDownList1.Text == "Wyscigi")
                {
                    kategoria = 2;
                }
                else if (DropDownList1.Text == "Shooter")
                {
                    kategoria = 3;
                }
                else if (DropDownList1.Text == "Przygodowe")
                {
                    kategoria = 4;
                }
                else if (DropDownList1.Text == "Zrecznosciowe")
                {
                    kategoria = 5;
                }   

                string command = "INSERT INTO gra (id_kategoria_gry, kod_produktu, ilosc, nazwa, opis, cena) VALUES ('" + kategoria + "','" + TextBoxKod.Text + "','" + TextBoxIlosc.Text + "','" + TextBoxNazwa.Text + "','" + TextBoxOpis.Text + "','" + TextBoxCena.Text + "');";
                con.Open();
                SqlCommand cmd = new SqlCommand(command, con);
                cmd.ExecuteNonQuery();
                Response.Write("<script>alert ('DODANO NOWĄ GRĘ')</script>");
                Response.Redirect("StronaGlowna.aspx");

            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
            Response.Write("<script>alert ('po try ')</script>");
        }
            
        
    }
}