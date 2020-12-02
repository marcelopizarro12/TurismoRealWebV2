using Oracle.DataAccess.Client;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebFinal.Cliente
{
    public partial class Usuario : System.Web.UI.Page
    {

        OracleConnection ora = new OracleConnection("DATA SOURCE =localhost:1521/xe ; PASSWORD = 123 ; USER ID = admin1");


        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                if (Request.Cookies["rut"] == null)
                {

                    Response.Redirect("../Cliente/IniciarSesion.aspx");
                }
                else
                {
                    usuario();

                    lblid.Text = Request.Cookies["rut"].Values["rut"];
                    
                }
                if (Request.Cookies["Reg"] != null)
                {

                    Response.Cookies["Reg"].Expires = DateTime.Now.AddDays(-1);
                }
                if (Request.Cookies["dato"] != null)
                {

                    Response.Cookies["dato"].Expires = DateTime.Now.AddDays(-1);
                }
                if (Request.Cookies["Pago"] != null)
                {

                    Response.Cookies["Pago"].Expires = DateTime.Now.AddDays(-1);
                }
            }
        }

        void listadoHistorico()
        {

            OracleCommand comando = new OracleCommand("select id_reservas,fecha_entrada,fecha_salida,num_acomp,CLIENTE.NOMBRE,cliente.rut,reservas.DEPARTAMENTO_ID_DEPTO from reservas join CLIENTE on CLIENTE.rut = reservas.CLIENTE_rut where cliente.rut = '" + Request.Cookies["rut"].Values["rut"] + "'", ora);

            OracleDataAdapter da = new OracleDataAdapter();
            da.SelectCommand = comando;
            DataTable tb = new DataTable();
            da.Fill(tb);
            this.GridView1.DataSource = tb;
            GridView1.DataBind();


        }

        void listadoactivo()
        {

            OracleCommand comando = new OracleCommand("select id_reservas,fecha_entrada,fecha_salida,num_acomp,CLIENTE.NOMBRE,cliente.rut,reservas.DEPARTAMENTO_ID_DEPTO from reservas join CLIENTE on CLIENTE.rut = reservas.CLIENTE_rut where reservas.fecha_entrada > SYSDATE and cliente.rut = '" + Request.Cookies["rut"].Values["rut"] + "'", ora);

            OracleDataAdapter da = new OracleDataAdapter();
            da.SelectCommand = comando;
            DataTable tb = new DataTable();
            da.Fill(tb);
            this.GridView4.DataSource = tb;
            GridView4.DataBind();


        }
        protected void Btnhistorico_Click(object sender, EventArgs e)
        {
            listadoHistorico();
        }

        protected void Btnactivo_Click(object sender, EventArgs e)
        {
            listadoactivo();
        }

      
        protected void Btnreservar_Click(object sender, EventArgs e)
        {
            Server.Transfer("../Cliente/DepartamentosR.aspx");
        }


        void usuario()
        {
            OracleCommand comando = new OracleCommand("select NOMBRE ||' '|| Apellidos as nombre from CLIENTE where  cliente.rut = '" + Request.Cookies["rut"].Values["rut"] + "'", ora);

            OracleDataAdapter da = new OracleDataAdapter();
            da.SelectCommand = comando;
            DataTable tb = new DataTable();
            da.Fill(tb);
            this.GridView2.DataSource = tb;
            GridView2.DataBind();
            string nombre = GridView2.Rows[0].Cells[0].Text;
            lblnombre.Text = nombre;
        }


        void listAcomp()
        {
            OracleCommand comando = new OracleCommand("select id_reservas,fecha_entrada,fecha_salida,num_acomp,CLIENTE.NOMBRE,cliente.rut,reservas.DEPARTAMENTO_ID_DEPTO from reservas join CLIENTE on CLIENTE.rut = reservas.CLIENTE_rut where reservas.fecha_entrada > SYSDATE and cliente.rut = '" + Request.Cookies["rut"].Values["rut"] + "' and num_acomp > 0", ora);

            OracleDataAdapter da = new OracleDataAdapter();
            da.SelectCommand = comando;
            DataTable tb = new DataTable();
            da.Fill(tb);
            this.GridView3.DataSource = tb;
            GridView3.DataBind();
           

        }

        void listserv()
        {
            OracleCommand comando = new OracleCommand("select id_reservas,fecha_entrada,fecha_salida,num_acomp,CLIENTE.NOMBRE,cliente.rut,reservas.DEPARTAMENTO_ID_DEPTO from reservas join CLIENTE on CLIENTE.rut = reservas.CLIENTE_rut where reservas.fecha_entrada > SYSDATE and cliente.rut = '" + Request.Cookies["rut"].Values["rut"] + "' ", ora);

            OracleDataAdapter da = new OracleDataAdapter();
            da.SelectCommand = comando;
            DataTable tb = new DataTable();
            da.Fill(tb);
            this.GridView3.DataSource = tb;
            GridView3.DataBind();


        }
        protected void BtnAcomp_Click(object sender, EventArgs e)
        {

            listAcomp();


        }





        protected void BtnServ_Click(object sender, EventArgs e)
        {
            listserv();
        }

        protected void GridView3_SelectedIndexChanged(object sender, EventArgs e)
        {

            int f = GridView3.SelectedIndex;
            string id = GridView3.Rows[f].Cells[1].Text;

            HttpCookie Acomp = new HttpCookie("Acomp");
            Acomp.Values["id"] = id;
 
            Response.Cookies.Add(Acomp);
            Response.Redirect("../Cliente/Acompañantes.aspx");






        }

        protected void GridView4_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}