using NetCoreAPIMySQL.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace NetCoreAPIMySQL.Data.Repositorio
{
    public interface Interf_Transferencias
    {

        Task<IEnumerable<Model_Transferencias>> GetTransferencias();
        Task<Model_Transferencias> GetDetalles(int Id);
        Task<bool> InsertTransferencias(Model_Transferencias _Transferencias);
        Task<bool> UpdateTransferencias(Model_Transferencias _Transferencias);
        Task<bool> DeleteTransferencias(Model_Transferencias _Transferencias);


    }
}
 