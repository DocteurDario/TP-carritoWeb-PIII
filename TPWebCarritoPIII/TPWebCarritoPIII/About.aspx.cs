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
            if (!IsPostBack)
            {
                List<Articulo> temporal = (List<Articulo>)Session["listaSesionCarrito"];
                dgvCarrito.DataSource = temporal;
                dgvCarrito.DataBind();

                decimal totalPrecio = 0;

                if (temporal != null)
                {
                    foreach (Articulo articulo in temporal)
                    {
                        totalPrecio += articulo.precio;
                    }
                }
                lblTotal.Text = "Total a pagar: " + totalPrecio.ToString("C");
            }
        }

        protected void dgvCarrito_SelectedIndexChanged(object sender, EventArgs e)
        {
            var algo = dgvCarrito.SelectedRow.Cells[0].Text;
            int idArt = int.Parse(dgvCarrito.SelectedDataKey.Value.ToString());// contiene el id;

            List<Articulo> temporal = (List<Articulo>)Session["listaSesionCarrito"];

            // Busca y elimina el artículo de la lista
            for (int i = 0; i < temporal.Count; i++)
            {
                if (temporal[i].id == idArt)
                {
                    temporal.RemoveAt(i);
                    break; 
                }
            }
            // Actualiza la lista en la sesión 
            Session["listaSesionCarrito"] = temporal;

            // Actualiza el GridView 
            dgvCarrito.DataSource = temporal;
            dgvCarrito.DataBind();
            decimal totalPrecio = 0;

            if (temporal != null)
            {
                foreach (Articulo articulo in temporal)
                {
                    totalPrecio += articulo.precio;
                }
            }
            lblTotal.Text = "Total a pagar: " + totalPrecio.ToString("C");

        }
    }
}