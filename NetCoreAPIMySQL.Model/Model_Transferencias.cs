using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace NetCoreAPIMySQL.Model
{
    public class Model_Transferencias
    {
        public int Id { get; set; }
        public string Beneficiario { get; set; }
        public string Remitente { get; set; }
        public string Monto { get; set; }
        public string Comision { get; set; }
        public string Destino { get; set; }
        public string Origen { get; set; }
        public string Fecha { get; set; }

    }
}
