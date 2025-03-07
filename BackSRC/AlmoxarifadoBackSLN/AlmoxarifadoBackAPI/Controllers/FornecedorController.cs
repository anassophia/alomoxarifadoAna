using AlmoxarifadoBackAPI.DTO;
using AlmoxarifadoBackAPI.Models;
using AlmoxarifadoBackAPI.Repositorio;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace AlmoxarifadoBackAPI.Controllers
{
    [Route("[controller]")]
    [ApiController]
    public class FornecedorController : ControllerBase
    {
        private readonly IFornecedorRepositorio _db;
        public FornecedorController(IFornecedorRepositorio db)
        {
            _db = db;

        }

        [HttpGet("/lista")]
        public IActionResult listaFornecedors()
        {
            return Ok(_db.GetAll());
        }

        [HttpPost("/fornecedor")]
        public IActionResult listaFornecedors(FornecedorDTO fornecedor)
        {
            return Ok(_db.GetAll().Where(x => x.Codigo == fornecedor.Codigo));
        }

        [HttpPost("/criarfornecedor")]
        public IActionResult criarFornecedor(FornecedorCadastroDTO fornecedor)
        {

            var novaFornecedor = new Fornecedor()
            {
                Nome = fornecedor.Nome,
                Telefone = fornecedor.Telefone,
                Estado = fornecedor.Estado,
                Cidade = fornecedor.Cidade,
                CNPJ = fornecedor.CNPJ
            };
            //_categorias.Add(novaCategoria);
            _db.Add(novaFornecedor);
            return Ok("Cadastro com Sucesso");
        }

       


    }
}

