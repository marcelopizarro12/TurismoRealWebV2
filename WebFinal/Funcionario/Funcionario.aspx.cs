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
    public partial class Funcionario : System.Web.UI.Page
    {
        OracleConnection ora = new OracleConnection("DATA SOURCE =localhost:1521/xe ; PASSWORD = 123 ; USER ID = admin1");

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                if (Request.Cookies["rutf"] == null)
                {

                    Response.Redirect("../Funcionario/IniciarSesion.aspx");
                }
                else
                {

                    listadoactivo();


                }
                if (Request.Cookies["check"] != null)
                {
                    Response.Cookies["check"].Expires = DateTime.Now.AddDays(-1);


                }
                if (Request.Cookies["checkid"] != null)
                {
                    Response.Cookies["checkid"].Expires = DateTime.Now.AddDays(-1);


                }
                if (Request.Cookies["pers"] != null)
                {
                    Response.Cookies["pers"].Expires = DateTime.Now.AddDays(-1);


                }
                if (Request.Cookies["chechkout"] != null)
                {
                    Response.Cookies["checkout"].Expires = DateTime.Now.AddDays(-1);


                }


            }
        }

        void listadoactivo()
        {

            OracleCommand comando = new OracleCommand("select nombre from personal   where  personal.rut = '" + Request.Cookies["rutf"].Values["rut"] + "'", ora);

            OracleDataAdapter da = new OracleDataAdapter();
            da.SelectCommand = comando;
            DataTable tb = new DataTable();
            da.Fill(tb);
            this.GridView1.DataSource = tb;
            GridView1.DataBind();

            string id = GridView1.Rows[0].Cells[0].Text;
            Label2.Text = id;
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
           
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Server.Transfer("../Funcionario/SeleccionarcehckinPrueba.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Server.Transfer("../Funcionario/SeleccionarChekout.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Server.Transfer("../Funcionario/IniciarSesion.aspx");
        }
    }
}