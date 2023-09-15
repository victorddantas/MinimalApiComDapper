using System.Data.SqlClient;
using static MinimalApiComDapper.Data.CarroContext;

namespace MinimalApiComDapper.Extensions
{
    public static class ServiceCollectionsExtensions
    {
        //Essa classe vai conter o método de extensão para conexão com a connection string para persistencia no banco
  
         public static WebApplicationBuilder AddPersistence(this WebApplicationBuilder builder)
        {
            var connectionString = builder.Configuration.GetConnectionString("DefaultConnection");


            //Passando o delegate do context
            builder.Services.AddScoped<GetConnection>(sp =>
            async () => 
            {
                var connection = new SqlConnection(connectionString);
                await connection.OpenAsync();
                return connection;
            });

            return builder;
        }
    
    }
}
