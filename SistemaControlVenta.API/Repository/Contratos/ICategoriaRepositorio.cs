using SistemaControlVenta.Models;

namespace SistemaControlVenta.Repository.Contratos
{
    public interface ICategoriaRepositorio
    {
        Task<List<Categoria>> Lista();
    }
}
