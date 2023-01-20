using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using NetCoreAPIMySQL.Data.Repositorio;
using NetCoreAPIMySQL.Model;

namespace NetCoreAPIMySQL_LaSolucion.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class TransferenciasController : ControllerBase
    {

        private readonly Interf_Transferencias _TRepositorio;

        public TransferenciasController(Interf_Transferencias tRepositorio)
        {
            _TRepositorio = tRepositorio;
        }

        //***********************************
        [HttpGet]
        public async Task<IActionResult> GetTransferencias() {

            return Ok(await _TRepositorio.GetTransferencias());

        }

        //***********************************
        [HttpGet("{id}")]
        public async Task<IActionResult> GetDetalles(int id)
        {

            return Ok(await _TRepositorio.GetDetalles(id));

        }

        //***********************************
        [HttpPost]
        public async Task<IActionResult> createTransferencias([FromBody]Model_Transferencias _Transferencias)
        {

          if(_TRepositorio == null )
            
                return BadRequest();

            if (!ModelState.IsValid) 
            return BadRequest(ModelState);

            var created = await _TRepositorio.InsertTransferencias(_Transferencias);
            return Created("created", created);
        }

        //***********************************
        [HttpPut]
        public async Task<IActionResult> UpdateTransferencias([FromBody] Model_Transferencias _Transferencias)
        {

            if (_TRepositorio == null)

                return BadRequest();

            if (!ModelState.IsValid)
                return BadRequest(ModelState);

            await _TRepositorio.UpdateTransferencias(_Transferencias);
            return NoContent();
        }

        //***********************************
        [HttpDelete]
        public async Task<IActionResult> DeleteTransferencias(int id)
        {
            await _TRepositorio.DeleteTransferencias(new Model_Transferencias { Id = id} );

            return NoContent();

        }


    }
}
