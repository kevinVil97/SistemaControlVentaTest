namespace SistemaControlVenta.API.Repository.Contratos
{
    public interface IDashBoardRepositorio
    {
        Task<int> TotalVentasUltimaSemana();
        Task<string> TotalIngresosUltimaSemana();
        Task<int> TotalProductos();
        Task<Dictionary<string, int>> VentasUltimaSemana();

    }
}
