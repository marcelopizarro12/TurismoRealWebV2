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
    public partial class CheckOut : System.Web.UI.Page
    {
        OracleConnection ora = new OracleConnection("DATA SOURCE =localhost:1521/xe ; PASSWORD = 123 ; USER ID = admin1");
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {

                if (Request.Cookies["checkout"] == null)
                {

                    Response.Redirect("../Funcionario/SeleccionarcehckinPrueba.aspx");
                }
                else
                {

                    lblreg.Text = Request.Cookies["checkout"].Values["idarri"];
                    //   lblrut.Text = Request.Cookies["checkout"].Values["idpers"];
                    lblrut.Text = Request.Cookies["checkout"].Values["rutc"];
                    lblreserva.Text = Request.Cookies["checkout"].Values["idres"];
                    lbldpto.Text = Request.Cookies["checkout"].Values["iddpto"];
                    listar();


                }


            }
        }
        void listar()
        {
                OracleCommand comando = new OracleCommand("select nombre ||' ' || apellidos as nombre, id_personal from personal where RUT  =" + Request.Cookies["rutf"].Values["rut"] + " ", ora);

                OracleDataAdapter da = new OracleDataAdapter();
                da.SelectCommand = comando;
                DataTable tb = new DataTable();
                da.Fill(tb);
                this.GridView1.DataSource = tb;
                GridView1.DataBind();
                string id_pers = GridView1.Rows[0].Cells[0].Text;
                string pers = GridView1.Rows[0].Cells[1].Text;

                lblrutp.Text = id_pers;
                  lblidpers.Text = pers;

            }

        void guardar()
        {
            try
            {
                ora.Open();
                OracleCommand comando = new OracleCommand("REGISTRO_CHECK_OUT", ora);
                comando.CommandType = System.Data.CommandType.StoredProcedure;
                var multa = Convert.ToInt32(TextBox2.Text);
                comando.Parameters.Add("C_DESCRIPCION", OracleDbType.Varchar2).Value = TextBox1.Text;
                comando.Parameters.Add("C_MULTA", OracleDbType.Int32).Value = multa;
                comando.Parameters.Add("C_ID_ARRI", OracleDbType.Int32).Value = Request.Cookies["checkout"].Values["idarri"];
                comando.Parameters.Add("C_ID_PERS", OracleDbType.Int32).Value = lblidpers.Text;


                comando.ExecuteNonQuery();
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alertIns", "alert('El check in se realizo correctamente');", true);
                Server.Transfer("../Funcionario/Funcionario.aspx");

                ora.Close();

            }
            catch
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alertIns", "alert('El reserva no se guardó correctamente');", true);


            }


        }


        protected void Button1_Click(object sender, EventArgs e)
        {
            guardar();

        }






    }
}