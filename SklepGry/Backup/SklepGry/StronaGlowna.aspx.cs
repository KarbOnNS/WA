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
    public partial class StronaGlowna : System.Web.UI.Page
    {

        SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["s2KarbowiakMConnectionString"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {
            LabelLoginAdmin.Text = (string)Session["LoginAdmina"];
            if (LabelLoginAdmin.Text == "")
            {
                Response.Redirect("Default.aspx");
            }

        }

        protected void ButtonWyloguj_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }

        protected void ButtonWyloguj_Click1(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }

        protected void ButtonDodajGre_Click(object sender, EventArgs e)
        {
            Response.Redirect("DodajGre.aspx");
        }

        protected void ButtonDodajAdmina_Click(object sender, EventArgs e)
        {
            Response.Redirect("DodajAdmina.aspx");
        }

        

        protected void GridViewGra_SelectedIndexChanged(object sender, EventArgs e)
        {
            LabelIDGra.Text = GridViewGra.SelectedRow.Cells[0].Text;
            LabelKod.Text = GridViewGra.SelectedRow.Cells[1].Text;
            LabelIlosc.Text = GridViewGra.SelectedRow.Cells[6].Text;
            LabelNazwa.Text = GridViewGra.SelectedRow.Cells[2].Text;
            LabelCena.Text = GridViewGra.SelectedRow.Cells[4].Text;
            LabelKategoria.Text = GridViewGra.SelectedRow.Cells[5].Text;
            CheckBoxGra.Checked = true;
        }

        
       

        }
    }

