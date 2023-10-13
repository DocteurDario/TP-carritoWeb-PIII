using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace dominio
{
    class Carrito
    {
        List<ArticuloEnCarrito> listaArticulo = new List<ArticuloEnCarrito>();

        public void agregarArticulo(ArticuloEnCarrito art)
        {
            ArticuloEnCarrito existingArticle = listaArticulo.Find(a => a.idArt == art.idArt);
            if (existingArticle != null)
            {
                existingArticle.Cantidad++;
            }
            else
            {
                listaArticulo.Add(art);
            }
        }

        public void eliminarArticulo(ArticuloEnCarrito art)
        {
            ArticuloEnCarrito existingArticle = listaArticulo.Find(a => a.idArt == art.idArt);
            if (existingArticle != null && existingArticle.Cantidad > 1)
            {
                existingArticle.Cantidad--;
            }
            else if (existingArticle != null && existingArticle.Cantidad == 1)
            {
                RemoverArticle(art);
            }
        }


        public void RemoverArticle(ArticuloEnCarrito art)
        {
            ArticuloEnCarrito current = GetArticulo(art.idArt);
            listaArticulo.Remove(current);
        }

        public ArticuloEnCarrito GetArticulo(int id)
        {
            return listaArticulo.Find(a => a.idArt == id);
        }

        public bool HasArticleId(int id)
        {
            return listaArticulo.Contains(GetArticulo(id));
        }

        public int ObtenerTotal()
        {
            int total = 0;
            foreach (var article in listaArticulo)
            {
                total += article.Cantidad;
            }
            return total;
        }

        public int ObtenerCantidadArticulos(int id)
        {
            return GetArticulo(id).Cantidad;
        }
    }
}
