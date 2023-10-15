using dominio;
using negocio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using negocio;
using dominio;

namespace TPWebCarritoPIII
{
    public partial class Default : System.Web.UI.Page
    {
        public List<Articulo> listaArticulo { get; set; }
        public List<Articulo> listaFiltro = new List<Articulo>();
        protected void Page_Load(object sender, EventArgs e)
        {
            ArticuloNegocio negocio = new ArticuloNegocio();
            listaArticulo = negocio.listar();
            if(! IsPostBack )
            {
                Repeater1.DataSource = listaArticulo;
                Repeater1.DataBind();
            }
        }
        protected void BtnComprar_Click(object sender, EventArgs e)
        {
            int valor = int.Parse(((Button)sender).CommandArgument);

            ArticuloNegocio dato = new ArticuloNegocio();
            Articulo articulo = new Articulo();
            List<Articulo> temporal = new List<Articulo>();

            if (Session["listaSesionCarrito"] == null)
            {
                temporal.Add(dato.obtenerPorId(valor));
                Session.Add("listaSesionCarrito", temporal);
            }
            else
            {
                ((List<Articulo>)Session["listaSesionCarrito"]).Add(dato.obtenerPorId(valor)); //forma corta

                //temporal = (List<Articulo>)Session["listaSesionCarrito"];
                //temporal.Add(articulo);

            }

            
        }

        protected void BtnFilter_Click(object sender, EventArgs e)
        {
            string filter = TxtFilter.Text;

            List<Articulo> listaFiltrada;
            if (filter.Length >= 3)
            {
                listaFiltrada = listaArticulo.FindAll(x => x.nombre.ToUpper().Contains(filter.ToUpper())
                || x.descripcion.ToUpper().Contains(filter.ToUpper())
                || x.codigo.ToUpper().Contains(filter.ToUpper()));

            }
            else
            {
                listaFiltrada = listaArticulo;
            }

            Repeater1.DataSource = listaFiltrada;
            Repeater1.DataBind();
        }
    }
}