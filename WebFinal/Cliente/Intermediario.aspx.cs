using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Transbank.Webpay;

namespace WebFinal.Cliente
{
    public partial class Intermediario : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Cookies["Pago"] == null)
            {

                Response.Redirect("../Cliente/IniciarSesion.aspx");

            }
            else
            {

                Label2.Text = new Random().Next(100000, 999999999).ToString();
                var transaction = new Webpay(Configuration.ForTestingWebpayPlusNormal()).NormalTransaction;
                var lbl1 = Convert.ToInt32(Request.Cookies["Pago"].Values["Pago_Reserva"]);
                Rellenar();

                var amount = lbl1;
                var sessionId = "sessionId";
                var buyOrder = Label2.Text;
                string returnUrl = "http://localhost:51077/Cliente/Exito.aspx";
                string finalUrl = "http://localhost:51077/Cliente/error.aspx";
                var initReuslt = transaction.initTransaction(amount, buyOrder, sessionId, returnUrl, finalUrl);
                var tokenWs = initReuslt.token;
                token_ws.Text = tokenWs;
                var formAction = initReuslt.url;
                form1.Action = formAction;

                Label1.Text = Convert.ToString(lbl1);
                HttpCookie Pago1 = new HttpCookie("Pago1");
                Pago1.Values["buyorder"] = buyOrder;
                Response.Cookies.Add(Pago1);
            }

            
        }
        protected void Button1_Click(object sender, EventArgs e)
        {




        }

        void Rellenar()
        {
            lbldesde.Text = Request.Cookies["Pago"].Values["Fecha_in"];
            lblhasta.Text = Request.Cookies["Pago"].Values["Fecha_out"];
            lblacomp.Text = Request.Cookies["Pago"].Values["Acomp"];
            lblPago.Text = Request.Cookies["Pago"].Values["Pago_Reserva"];
            lblBoleta.Text = Label2.Text;
            lblrut.Text = Request.Cookies["Pago"].Values["Rut_Cliente"];


        }
    }
}