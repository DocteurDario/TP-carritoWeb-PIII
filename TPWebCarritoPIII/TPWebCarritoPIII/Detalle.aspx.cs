using dominio;
using negocio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TPWebCarritoPIII
{
    public partial class Detalle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["id"] != null)
            {
                int userId = int.Parse(Request.QueryString["id"]);
                ArticuloNegocio dato = new ArticuloNegocio();
                Articulo articulo = new Articulo();
                articulo = dato.obtenerPorId(userId);

                imgArticulo.ImageUrl = articulo.imagen.imagenUrl;
                lblNombre.Text = articulo.nombre;
                lblDescripcion.Text = articulo.descripcion;
                lblCategoria.Text = articulo.categoria.descripcion;
                lblMarca.Text = articulo.marca.descripcion;
                lblPrecio.Text = articulo.precio.ToString();
               
            }
        }
    }
}