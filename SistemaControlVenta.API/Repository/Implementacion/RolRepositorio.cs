using Microsoft.EntityFrameworkCore;
using SistemaControlVenta.API.Models;
using SistemaControlVenta.API.Repository.Contratos;
using System.Linq.Expressions;

namespace SistemaControlVenta.API.Repository.Implementacion
{
    public class RolRepositorio : IRolRepositorio
    {
        private readonly DBVentaAngularContext _dbContext;

        public RolRepositorio(DBVentaAngularContext dbContext)
        {
            _dbContext = dbContext;
        }
        public async Task<List<Rol>> Lista()
        {
            try
            {
                return await _dbContext.Rols.ToListAsync();
            }
            catch
            {
                throw;
            }
        }
    }
}
