using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using dominio;

namespace TPWebCarritoPIII
{
    public partial class MasterPage : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }
        public void ActualizarCantidadArticulos(string valor)
        {
            Label1.Text = valor;
            lblCantidadArticulos.Text = valor;
        }

    }
}