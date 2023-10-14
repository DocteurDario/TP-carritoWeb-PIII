using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace dominio
{
    class ArticuloEnCarrito
    {
        public ArticuloEnCarrito(int IdArt)
        {
            idArt = IdArt;
            Cantidad = 1;
        }
        public int idArt { get; set; }
        public int Cantidad { get; set; }
    }
}
