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
    public partial class CheckIn : System.Web.UI.Page
    {
        OracleConnection ora = new OracleConnection("DATA SOURCE =localhost:1521/xe ; PASSWORD = 123 ; USER ID = admin1");
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {

                if (Request.Cookies["check"] == null)
                {

                    Response.Redirect("../Funcionario/SeleccionarcehckinPrueba.aspx");
                }
                else
                {

                    lbldpto.Text = Request.Cookies["check"].Values["iddpto"];
                    lblrut.Text = Request.Cookies["check"].Values["rutcl"];
                    lblresv.Text = Request.Cookies["check"].Values["idresv"];
                    lblresv1.Text= Request.Cookies["check"].Values["idresv"];
                    listadoinicio();
                    idrPers();

                }


            }

              



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
            lblResto.Text = pgResto;
            lbltt.Text = pgTotal;
            lblres.Text = pgreserva;

        }



        void idrPers()
        {


            OracleCommand comando = new OracleCommand("select id_personal from personal where RUT  =" + Request.Cookies["rutf"].Values["rut"] +  " ", ora);

            OracleDataAdapter da = new OracleDataAdapter();
            da.SelectCommand = comando;
            DataTable tb = new DataTable();
            da.Fill(tb);
            this.GridView2.DataSource = tb;
            GridView2.DataBind();
            string id_pers = GridView2.Rows[0].Cells[0].Text;
            HttpCookie pers = new HttpCookie("pers");
            pers.Values["id_pers"] = id_pers;
            Response.Cookies.Add(pers);

            


        }

   


        void guardarcheck()
        {
           
            try
            {
                ora.Open();
                OracleCommand comando = new OracleCommand("REGISTRO_CHECK", ora);
                comando.CommandType = System.Data.CommandType.StoredProcedure;

                comando.Parameters.Add("C_DESCRIPCION", OracleDbType.Varchar2).Value = TextBox1.Text;
                comando.Parameters.Add("C_ID_PES", OracleDbType.Int32).Value = Request.Cookies["check"].Values["idpg"];
                comando.Parameters.Add("C_ID_PAGO", OracleDbType.Int32).Value = Request.Cookies["pers"].Values["id_pers"];
                
               
                comando.ExecuteNonQuery();
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alertIns", "alert('El check in se realizo correctamente');", true);
                Server.Transfer("../Funcionario/Exito.aspx");

                ora.Close();

            }
            catch
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alertIns", "alert('El reserva no se guardó correctamente');", true);


            }

        }



        void IdCheck()
        {


            OracleCommand comando = new OracleCommand("select id_check_in from check_in where registro_pago_id_reg_pago  =" + Request.Cookies["check"].Values["idpg"] + "and personal_id_personal  =" + Request.Cookies["pers"].Values["id_pers"] + " ", ora);

            OracleDataAdapter da = new OracleDataAdapter();
            da.SelectCommand = comando;
            DataTable tb = new DataTable();
            da.Fill(tb);
            this.GridView3.DataSource = tb;
            GridView3.DataBind();
            string id_check = GridView3.Rows[0].Cells[0].Text;
            HttpCookie checkid = new HttpCookie("checkid");
            checkid.Values["checkid"] = id_check;
            Response.Cookies.Add(checkid);




        }




        protected void Button1_Click(object sender, EventArgs e)
        {
            guardarcheck();
           





        }
    }
}