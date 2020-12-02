using Oracle.DataAccess.Client;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebFinal.Base
{
    public partial class InicioSesion : System.Web.UI.Page
    {
        OracleConnection ora = new OracleConnection("DATA SOURCE =localhost:1521/xe ; PASSWORD = 123 ; USER ID = admin1");

        protected void Page_Load(object sender, EventArgs e)
        {
            Session.Abandon();
            if (Request.Cookies["rut"] != null)
            {
                Response.Cookies["rut"].Expires = DateTime.Now.AddDays(-1);
               

            }
          


        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            ora.Open();
            OracleCommand comando = new OracleCommand("Select * from cliente WHERE rut =  :usuario AND contraseña = :contra", ora);

            comando.Parameters.Add(":usuario", txtUsuario.Text);
            comando.Parameters.Add(":contra", txtContra.Text);

            OracleDataReader lector = comando.ExecuteReader();
            string id = txtUsuario.Text;
            if (lector.Read())
            {
                HttpCookie rut = new HttpCookie("rut");
                rut.Values["rut"] = id;


                Response.Cookies.Add(rut);
                Server.Transfer("../Cliente/Usuario.aspx");
                ora.Close();
            }
            else
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alertIns", "alert('no se pudo iniciar sesion');", true);

            }
            ora.Close();
        }
    }
}