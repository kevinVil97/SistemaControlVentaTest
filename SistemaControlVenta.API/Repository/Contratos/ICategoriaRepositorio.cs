using SistemaControlVenta.API.Models;

namespace SistemaControlVenta.API.Repository.Contratos
{
    public interface ICategoriaRepositorio
    {
        Task<List<Categoria>> Lista();
    }
}
