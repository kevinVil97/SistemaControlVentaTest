using Microsoft.EntityFrameworkCore;
using SistemaControlVenta.API.Models;
using SistemaControlVenta.API.Repository.Contratos;

namespace SistemaControlVenta.API.Repository.Implementacion
{
    public class CategoriaRepositorio : ICategoriaRepositorio
    {
        private readonly DBVentaAngularContext _dbContext;

        public CategoriaRepositorio(DBVentaAngularContext dbContext)
        {
            _dbContext = dbContext;
        }
        public async Task<List<Categoria>> Lista()
        {
            try
            {
                return await _dbContext.Categoria.ToListAsync();
            }
            catch
            {
                throw;
            }
        }
    }
}
