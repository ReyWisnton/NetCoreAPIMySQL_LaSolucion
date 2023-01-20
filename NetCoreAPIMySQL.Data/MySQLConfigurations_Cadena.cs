using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace NetCoreAPIMySQL.Data
{
    public class MySQLConfigurations_Cadena
    {

        public MySQLConfigurations_Cadena(string connectionString) {

            ConnectionString = connectionString;
        
        }

        public string ConnectionString { get; set; }
    }
}
