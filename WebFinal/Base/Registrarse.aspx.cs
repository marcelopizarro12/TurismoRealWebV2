using Oracle.DataAccess.Client;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebFinal.Base
{
    public partial class Registrarse : System.Web.UI.Page
    {
        OracleConnection ora = new OracleConnection("DATA SOURCE =localhost:1521/xe ; PASSWORD = 123 ; USER ID = admin1");

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                ora.Open();
                OracleCommand comando = new OracleCommand("REGISTRAR_CLIENTE", ora);
                comando.CommandType = System.Data.CommandType.StoredProcedure;
                int rut = Convert.ToInt32(this.TextBox1.Text);
                int fono = Convert.ToInt32(this.TextBox4.Text);                               
                comando.Parameters.Add("c_rut", rut);
                comando.Parameters.Add("c_nombre", OracleDbType.Varchar2).Value = TextBox2.Text;
                comando.Parameters.Add("c_apellido", OracleDbType.Varchar2).Value = TextBox3.Text;
                comando.Parameters.Add("c_telefono", fono);
                comando.Parameters.Add("c_correo", OracleDbType.Varchar2).Value = TextBox5.Text;
                comando.Parameters.Add("c_contraseña", OracleDbType.Varchar2).Value = TextBox6.Text;

                comando.ExecuteNonQuery();
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alertIns", "alert('El registro se guardó correctamente');", true);

                Server.Transfer("../Base/IniciarSesion.aspx");
                ora.Close();

            }
            catch
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alertIns", "alert('El registro no se guardó correctamente');", true);


            }
        }

     
    }
}