using AlmoxarifadoBackAPI.DTO;
using AlmoxarifadoBackAPI.Models;
using AlmoxarifadoBackAPI.Repositorio;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace AlmoxarifadoBackAPI.Controllers
{
    [Route("[controller]")]
    [ApiController]
    public class SecretariaController : ControllerBase
    {
        private readonly ISecretariaRepositorio _db;
        public SecretariaController(ISecretariaRepositorio db)
        {
            _db = db;

        }

        [HttpGet("/lista")]
        public IActionResult listaSecretarias()
        {
            return Ok(_db.GetAll());
        }

        [HttpPost("/secretaria")]
        public IActionResult listaSecretarias(SecretariaDTO secretaria)
        {
            return Ok(_db.GetAll().Where(x => x.Codigo == secretaria.Codigo));
        }

        [HttpPost("/criarsecretaria")]
        public IActionResult criarSecretaria(SecretariaCadastroDTO secretaria)
        {

            var novaSecretaria = new Secretaria()
            {
                Nome = secretaria.Nome,
                Telefone = secretaria.Telefone,
                Estado = secretaria.Estado,
                Cidade = secretaria.Cidade,
                CNPJ = secretaria.CNPJ
            };
            //_categorias.Add(novaCategoria);
            _db.Add(novaSecretaria);
            return Ok("Cadastro com Sucesso");
        }




    }
}
