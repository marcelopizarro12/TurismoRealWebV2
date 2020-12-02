using Oracle.DataAccess.Client;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebFinal.Funcionario
{
    public partial class IniciarSesion : System.Web.UI.Page
    {
        OracleConnection ora = new OracleConnection("DATA SOURCE =localhost:1521/xe ; PASSWORD = 123 ; USER ID = admin1");

        protected void Page_Load(object sender, EventArgs e)
        {
            Session.Abandon();
            if (Request.Cookies["rutf"] != null)
            {
                Response.Cookies["rutf"].Expires = DateTime.Now.AddDays(-1);


            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            ora.Open();
            OracleCommand comando = new OracleCommand("Select * from personal WHERE rut =  :usuario AND contraseña = :contra", ora);

            comando.Parameters.Add(":usuario", txtUsuario.Text);
            comando.Parameters.Add(":contra", txtContra.Text);
            
            OracleDataReader lector = comando.ExecuteReader();
            string id = txtUsuario.Text;
            if (lector.Read())
            {
                HttpCookie rutf = new HttpCookie("rutf");
                rutf.Values["rut"] = id;


                Response.Cookies.Add(rutf);
                Response.Redirect("../Funcionario/Funcionario.aspx");
                
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