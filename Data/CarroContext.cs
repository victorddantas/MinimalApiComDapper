using System.Data;

namespace MinimalApiComDapper.Data
{
    public class CarroContext
    {
        //Definindo o delegate para instacia do contexto  
        public delegate Task<IDbConnection> GetConnection();
    }
}
