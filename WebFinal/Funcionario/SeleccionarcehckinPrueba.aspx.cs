using Oracle.DataAccess.Client;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebFinal.Funcionario
{
    public partial class SeleccionarcehckinPrueba : System.Web.UI.Page
    {
        OracleConnection ora = new OracleConnection("DATA SOURCE =localhost:1521/xe ; PASSWORD = 123 ; USER ID = admin1");

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        void listaid()
        {
            OracleCommand comando = new OracleCommand("select CHECK_IN.ID_CHECK_IN,REGISTRO_PAGO.ID_REG_PAGO,RESERVAS.CLIENTE_RUT,RESERVAS.ID_RESERVAS, RESERVAS.DEPARTAMENTO_ID_DEPTO from CHECK_IN full join REGISTRO_PAGO on CHECK_IN.REGISTRO_PAGO_ID_REG_PAGO=REGISTRO_PAGO.ID_REG_PAGO full join RESERVAS on RESERVAS.ID_RESERVAS=REGISTRO_PAGO.RESERVAS_ID_RESERVAS where CHECK_IN.ID_CHECK_IN is null and RESERVAS.CLIENTE_RUT  =" + TextBox1.Text + " ", ora);

            OracleDataAdapter da = new OracleDataAdapter();
            da.SelectCommand = comando;
            DataTable tb = new DataTable();
            da.Fill(tb);
            this.GridView1.DataSource = tb;
            GridView1.DataBind();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            listaid();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            int f = GridView1.SelectedIndex;
            
            string idpg = (GridView1.Rows[f].Cells[2].Text);
            string rutcl = (GridView1.Rows[f].Cells[3].Text);
            string idresv = (GridView1.Rows[f].Cells[4].Text);
            string iddpto = (GridView1.Rows[f].Cells[5].Text);
            HttpCookie check = new HttpCookie("check");
            
            check.Values["idpg"] = idpg;
            check.Values["rutcl"] = rutcl;
            check.Values["idresv"] = idresv;
            check.Values["iddpto"] = iddpto;



            Response.Cookies.Add(check);
            Response.Redirect("../Funcionario/CheckIn.aspx");
        }
    }
}