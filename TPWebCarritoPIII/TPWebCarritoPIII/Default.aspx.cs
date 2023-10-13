﻿using dominio;
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
        }
    }
}