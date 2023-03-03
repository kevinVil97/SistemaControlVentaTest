using SistemaControlVenta.Models;

namespace SistemaControlVenta.Repository.Contratos
{
    public interface IRolRepositorio
    {
        Task<List<Rol>> Lista();
    }
}
