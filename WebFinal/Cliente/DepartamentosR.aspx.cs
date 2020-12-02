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
    public partial class Departamentos : System.Web.UI.Page
    {
        OracleConnection ora = new OracleConnection("DATA SOURCE =localhost:1521/xe ; PASSWORD = 123 ; USER ID = admin1");

        protected void Page_Load(object sender, EventArgs e)
        {
            listadoinicio();
            if (!IsPostBack)
            {

                if (Request.Cookies["rut"] == null)
                {

                    Response.Redirect("../Base/Iniciarsesion.aspx");
                }
                if (Request.Cookies["Pago"] != null)
                {

                    Response.Cookies["Pago"].Expires = DateTime.Now.AddDays(-1);


                }
                if (Request.Cookies["Pago1"] != null)
                {

                    Response.Cookies["Pago1"].Expires = DateTime.Now.AddDays(-1);

                }

            }
        }


        void listadoinicio()
        {

            OracleCommand comando = new OracleCommand("select id_depto,img, departamento.descripcion,departamento.DIRECCION ||', '||zonas.descripcion as direccion, precio from departamento join ZONAS on ZONAS.ID_ZONAS= departamento.ZONAS_ID_ZONAS ", ora);

            OracleDataAdapter da = new OracleDataAdapter();
            da.SelectCommand = comando;
            DataTable tb = new DataTable();
            da.Fill(tb);
            this.GridView1.DataSource = tb;
            GridView1.DataBind();


        }
        void listaid()
        {
            OracleCommand comando = new OracleCommand("select id_depto,img, departamento.descripcion,departamento.DIRECCION ||', '||zonas.descripcion as direccion, precio from departamento join ZONAS on ZONAS.ID_ZONAS= departamento.ZONAS_ID_ZONAS where ZONAS.DESCRIPCION  like '" + DropDownList1.Text + "%' ", ora);

            OracleDataAdapter da = new OracleDataAdapter();
            da.SelectCommand = comando;
            DataTable tb = new DataTable();
            da.Fill(tb);
            this.GridView1.DataSource = tb;
            GridView1.DataBind();

        }

        protected void GridView1_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
        {
            GridView1.PageIndex = e.NewSelectedIndex;
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            int f = GridView1.SelectedIndex;
            string id = (GridView1.Rows[f].Cells[1].FindControl("lblid") as Label).Text;
            

            HttpCookie dato = new HttpCookie("dato");
            dato.Values["id"] = id;
            

            Response.Cookies.Add(dato);
            Response.Redirect("../Cliente/Reservar.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (DropDownList1.Text == "Elija zona de Busqueda")
            {

                listadoinicio();

            }
            else
            {
                listaid();
            }

        }
    }
}