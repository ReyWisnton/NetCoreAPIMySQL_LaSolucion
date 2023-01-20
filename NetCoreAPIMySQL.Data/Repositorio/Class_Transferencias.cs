using Dapper;
using MySql.Data.MySqlClient;
using NetCoreAPIMySQL.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace NetCoreAPIMySQL.Data.Repositorio
{
    public class Class_Transferencias : Interf_Transferencias
    {

        private readonly MySQLConfigurations_Cadena _connectionString;
        public Class_Transferencias(MySQLConfigurations_Cadena mySQLConfigurations_Cadena) {

            _connectionString = mySQLConfigurations_Cadena;

        }

        protected MySqlConnection DBconectar() {


            return new MySqlConnection(_connectionString.ConnectionString);
        }

        //************************************ ELIMINAR

        public async Task<bool> DeleteTransferencias(Model_Transferencias _Transferencias)
        {
            var db = DBconectar();
            var sql = @" DELETE FROM transferencias WHERE Id_Transferencias = @Id";
            var result = await db.ExecuteAsync(sql, new { Id = _Transferencias.Id});

            return result > 0; 
        }


        //************************************ MOSTRAR
        public async Task<IEnumerable<Model_Transferencias>> GetTransferencias()
        {
            var db = DBconectar();

            var sql = @" SELECT Id_Transferencias, Beneficiario, Remitente, Monto, Comision, Destino, Origen, Fecha 
                         FROM transferencias";

            return await db.QueryAsync<Model_Transferencias>(sql, new { });
        }


        //************************************ INSERTAR
        public async Task<bool> InsertTransferencias(Model_Transferencias _Transferencias)
        {
            var db = DBconectar();

            var sql = @" INSERT INTO transferencias (Beneficiario, Remitente, Monto, Comision, Destino, Origen, Fecha) 
                         VALUES (@Beneficiario, @Remitente, @Monto, @Comision, @Destino, @Origen, @Fecha)";
                         

            var result = await db.ExecuteAsync(sql, new 
            { _Transferencias.Beneficiario,
               _Transferencias.Remitente,
               _Transferencias.Monto,
               _Transferencias.Comision,
               _Transferencias.Destino,
               _Transferencias.Origen,
               _Transferencias.Fecha });

            return result > 0;
        }

        //************************************ MOSTRAR POR ID 
        public async Task<Model_Transferencias> GetDetalles(int Id)
        {
            var db = DBconectar();

            var sql = @" SELECT Id_Transferencias, Beneficiario, Remitente, Monto, Comision, Destino, Origen, Fecha 
                         FROM transferencias
                         WHERE Id_Transferencias = @Id";

            return await db.QueryFirstOrDefaultAsync<Model_Transferencias>(sql, new {Id = Id });
        }


        //************************************ ACTUALIZAR
        public async Task<bool> UpdateTransferencias(Model_Transferencias _Transferencias)
        {
            var db = DBconectar();

            var sql = @" UPDATE transferencias
                         SET Beneficiario = @Beneficiario,
                             Remitente = @Remitente,
                             Monto = @Monto,
                             Comision = @Comision,
                             Destino = @Destino,
                             Origen = @Origen,
                             Fecha = @Fecha
                         WHERE Id_Transferencias = @Id";


            var result = await db.ExecuteAsync(sql, new
            { _Transferencias.Beneficiario, _Transferencias.Remitente, _Transferencias.Monto, _Transferencias.Comision, _Transferencias.Destino, _Transferencias.Origen, _Transferencias.Fecha, _Transferencias.Id });

            return result > 0;
        }
    }
}
