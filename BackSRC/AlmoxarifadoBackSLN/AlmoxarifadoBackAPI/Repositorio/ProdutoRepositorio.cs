using AlmoxarifadoBackAPI.Models;

namespace AlmoxarifadoBackAPI.Repositorio
{
    public class ProdutoRepositorio : IProdutoRepositorio
    {
        private readonly Context _db;

        public ProdutoRepositorio(Context db)
        {
            _db = db;
        }

        public void Add(Produto produto)
        {

            _db.Produto.Add(produto);
            _db.SaveChanges();
        }

        public List<Produto> GetAll()
        {
            return _db.Produto.ToList();
        }

    }
}
