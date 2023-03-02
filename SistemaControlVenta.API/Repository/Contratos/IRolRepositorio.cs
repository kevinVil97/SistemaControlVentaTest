using SistemaControlVenta.API.Models;

namespace SistemaControlVenta.API.Repository.Contratos
{
    public interface IRolRepositorio
    {
        Task<List<Rol>> Lista();
    }
}
