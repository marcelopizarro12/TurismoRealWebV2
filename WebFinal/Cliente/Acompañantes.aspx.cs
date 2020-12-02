using Oracle.DataAccess.Client;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebFinal.Cliente
{
    public partial class Acompañantes : System.Web.UI.Page
    {

        OracleConnection ora = new OracleConnection("DATA SOURCE =localhost:1521/xe ; PASSWORD = 123 ; USER ID = admin1");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                if (Request.Cookies["Acomp"] == null)
                {

                    Response.Redirect("../Cliente/Usuario.aspx");
                }
                else
                {

                    lblres.Text = Request.Cookies["Acomp"].Values["id"];

                }
            }

        }




        protected void Button1_Click(object sender, EventArgs e)
        {

            try
            {
                ora.Open();
                OracleCommand comando = new OracleCommand("REGISTRO_ACOMP", ora);
                comando.CommandType = System.Data.CommandType.StoredProcedure;

                comando.Parameters.Add("C_RUT", OracleDbType.Int32).Value = TextBox1.Text;
                comando.Parameters.Add("C_NOMBRE", OracleDbType.Varchar2).Value = TextBox2.Text;
                comando.Parameters.Add("C_ID_RES", OracleDbType.Int32).Value = Request.Cookies["Acomp"].Values["id"];


                comando.ExecuteNonQuery();
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alertIns", "alert('Acompañante guardado correctamente');", true);

                TextBox1.Text = "";
                TextBox2.Text = "";
                ora.Close();

            }
            catch
            {

                ScriptManager.RegisterStartupScript(this, this.GetType(), "alertIns", "alert('El Acompañante no se guardo correctamente');", true);

            }


        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Server.Transfer("../Cliente/Usuario.aspx");
        }
    }
}