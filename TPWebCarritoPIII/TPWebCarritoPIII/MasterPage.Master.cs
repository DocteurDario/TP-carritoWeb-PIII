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
            if (!IsPostBack)
            {
                // Recupera la lista de artículos desde la sesión
                List<Articulo> temporal = (List<Articulo>)Session["listaSesionCarrito"];

                // Verifica si la lista no es nula y luego muestra la cantidad de artículos
                if (temporal != null)
                {
                    int cantidadArticulos = temporal.Count;
                    lblCantidadArticulos.Text = cantidadArticulos.ToString();
                }
                else
                {
                    lblCantidadArticulos.Text = "0"; // La lista está vacía
                }

            }
        } 

    }
}