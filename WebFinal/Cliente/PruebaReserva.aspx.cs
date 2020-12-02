using Oracle.DataAccess.Client;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Transbank.Webpay;

namespace WebFinal.Cliente
{
    public partial class PruebaReserva : System.Web.UI.Page
    {
        OracleConnection ora = new OracleConnection("DATA SOURCE =localhost:1521/xe ; PASSWORD = 123 ; USER ID = admin1");

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                if (Request.Cookies["dato"] == null)
                {

                    Response.Redirect("Departamentos.aspx");
                }
                else
                {


                    TextBox9.Text = Request.Cookies["dato"].Values["id"];

                 

                    if (Request.Cookies["rut"] == null)
                    {

                        Response.Redirect("../Cliente/IniciarSesion.aspx");

                    }
                    else
                    {
                        TextBox8.Text = Request.Cookies["rut"].Values["rut"];


                    }

                }

            }
        }

        void guardado()
        {
 

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
            DateTime fecha1 = Convert.ToDateTime(TextBox4.Text);
            String fecha11 = fecha1.ToString("dd/MM/yyyy");
            DateTime fecha2 = Convert.ToDateTime(TextBox5.Text);
            String fecha22 = fecha2.ToString("dd/MM/yyyy");
            int acomp = DropDownList1.SelectedIndex;
            int metop = DropDownList2.SelectedIndex + 1;

            string ac = Convert.ToString(acomp);
            string mp = Convert.ToString(metop);
            
            string pr = TextBox2.Text;
            string mt = TextBox6.Text;
            string st = TextBox7.Text;
            string rc = TextBox8.Text;
            string di = TextBox9.Text;
            
            HttpCookie Pago = new HttpCookie("Pago");
            Pago.Values["Pago_Reserva"] = pr;
            Pago.Values["Acomp"] = ac;
            Pago.Values["Fecha_in"] = fecha11;
            Pago.Values["Fecha_out"] = fecha22;
            Pago.Values["Multa"] = mt;
            Pago.Values["SubTotal"] = st;
            Pago.Values["Rut_Cliente"] = rc;
            Pago.Values["Depto_Id"] = di;
            Pago.Values["Met_pago"] = mp;
            
            Response.Cookies.Add(Pago);
            Server.Transfer("../Cliente/Intermediario.aspx");

        }
   
    }
}