using dominio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TPWebCarritoPIII
{
    public partial class About : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            List<Articulo> temporal = (List<Articulo>)Session["listaSesionCarrito"];
            dgvCarrito.DataSource = temporal;
            dgvCarrito.DataBind();

        }
    }
}