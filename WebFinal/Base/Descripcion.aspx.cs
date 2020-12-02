
using Oracle.DataAccess.Client;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebFinal.Base
{
    public partial class Descripcion : System.Web.UI.Page
    {
        OracleConnection ora = new OracleConnection("DATA SOURCE =localhost:1521/xe ; PASSWORD = 123 ; USER ID = admin1");

        protected void Page_Load(object sender, EventArgs e)
        {
            listadoid();
            if (!IsPostBack)
            {

                if (Request.Cookies["dato"] == null)
                {

                    Response.Redirect("Departamentos.aspx");
                }
                else
                {


                    lblid.Text = Request.Cookies["dato"].Values["id"];
                                           

                    listadoid();
                    asignar();
                   
                }

            }
        }

       
       
        void asignar()
        {

            string id = GridView1.Rows[0].Cells[0].Text;
            string mt = GridView1.Rows[0].Cells[1].Text;
            string dec = GridView1.Rows[0].Cells[2].Text;
            string dir = GridView1.Rows[0].Cells[3].Text;
            string hb = GridView1.Rows[0].Cells[4].Text;
            string cm = GridView1.Rows[0].Cells[5].Text;
            string price = GridView1.Rows[0].Cells[6].Text;
            string includ = GridView1.Rows[0].Cells[7].Text;
            lblub1.Text = dir;
            lblub.Text = dir;
            lblmt.Text = mt;

            lblprice.Text = price;
            lblcm.Text = cm;
            lblhb.Text = hb;
            lblinclud.Text = includ;
            Image1.ImageUrl = "~/ImgDpto/" + lblid.Text + ".jpg";
        }
    
     
        



  void listadoid()
        {

            OracleCommand comando = new OracleCommand("SELECT id_depto, metros_cua, departamento.descripcion,departamento.DIRECCION ||', '||zonas.descripcion as direccion,inventario.habitacion,INVENTARIO.CAMAS,inventario.incluido ,precio from DEPARTAMENTO join INVENTARIO on DEPARTAMENTO.INVENTARIO_ID_INVENTARIO = INVENTARIO.ID_INVENTARIO join zonas on zonas.ID_ZONAS = DEPARTAMENTO.ZONAS_ID_ZONAS WHERE id_depto = '" + Request.Cookies["dato"].Values["id"] + "'", ora);
            OracleDataAdapter da = new OracleDataAdapter();
            da.SelectCommand = comando;
            DataTable tb = new DataTable();
            da.Fill(tb);
            this.GridView1.DataSource = tb;
            GridView1.DataBind();




        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Server.Transfer("../Base/IniciarSesion.aspx");
        }
    }
}