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
    public partial class Exito : System.Web.UI.Page
    {
        OracleConnection ora = new OracleConnection("DATA SOURCE =localhost:1521/xe ; PASSWORD = 123 ; USER ID = admin1");
        protected void Page_Load(object sender, EventArgs e)
        {
            listadoinicio();
            IdCheck();

        }

        void listadoinicio()
        {
            var pg = Request.Cookies["check"].Values["idpg"];
            OracleCommand comando = new OracleCommand("select reservas.PAGO_RESERVA,reservas.SUBTOTAL , (reservas.SUBTOTAL-reservas.PAGO_RESERVA) as pgresto  from registro_pago join reservas on registro_pago.RESERVAS_ID_RESERVAS=reservas.ID_RESERVAS where registro_pago.ID_REG_PAGO = '" + pg + "'", ora);

            OracleDataAdapter da = new OracleDataAdapter();
            da.SelectCommand = comando;
            DataTable tb = new DataTable();
            da.Fill(tb);
            this.GridView1.DataSource = tb;
            GridView1.DataBind();
            string pgreserva = GridView1.Rows[0].Cells[0].Text;
            string pgTotal = GridView1.Rows[0].Cells[1].Text;
            string pgResto = GridView1.Rows[0].Cells[2].Text;
            Label1.Text = pgResto;
            

        }
        void IdCheck()
        {


            OracleCommand comando = new OracleCommand("select id_check_in from check_in where registro_pago_id_reg_pago  =" + Request.Cookies["check"].Values["idpg"] + "and personal_id_personal  =" + Request.Cookies["pers"].Values["id_pers"] + " ", ora);

            OracleDataAdapter da = new OracleDataAdapter();
            da.SelectCommand = comando;
            DataTable tb = new DataTable();
            da.Fill(tb);
            this.GridView1.DataSource = tb;
            GridView1.DataBind();
            string id_check = GridView1.Rows[0].Cells[0].Text;
            HttpCookie ck = new HttpCookie("ck");
            ck.Values["checkid"] = id_check;
            Response.Cookies.Add(ck);
            Label2.Text = Request.Cookies["ck"].Values["checkid"];

        }



        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                ora.Open();
                OracleCommand comando = new OracleCommand("REGISTRO_ARRIENDO", ora);
                comando.CommandType = System.Data.CommandType.StoredProcedure;

                comando.Parameters.Add("C_DESCRIPCION", OracleDbType.Varchar2).Value = "Pago realizado con exito";
                comando.Parameters.Add("C_PAGO", OracleDbType.Int32).Value = Label1.Text;
                comando.Parameters.Add("C_CHECK", OracleDbType.Int32).Value = Label2.Text;


                comando.ExecuteNonQuery();
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alertIns", "alert('La arriendo guardado correctamente');", true);

                Server.Transfer("../Funcionario/Funcionario.aspx");
                ora.Close();

            }
            catch
            {

                ScriptManager.RegisterStartupScript(this, this.GetType(), "alertIns", "alert('El registro de arriendo no se guardo');", true);

            }
        }
    }
}