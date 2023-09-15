using Dapper.Contrib.Extensions;
using MinimalApiComDapper.Data;
using static MinimalApiComDapper.Data.CarroContext;

namespace MinimalApiComDapper.Endpoints
{
    public static class CarrosEndpoints
    {
        //Método de extensão que conterá os endPoints da aplicação  
        public static void MapCarrosEndPoint(this WebApplication app)
        {
            //retorna um carro
            app.MapGet("/", () => $"Bem vindo - {DateTime.Now}");

            //retorna uma lista de carros
            //Injetado uma instância do delegate GetConnection como parâmetro que irá retorna uma instância de IDbConnection 
            app.MapGet("/Carros", async (GetConnection connectionGetter) =>
            {

                //O GetAll do dapper vai retornar a lista de carros 
                using var con = await connectionGetter();
                var carros = con.GetAll<Carro>().ToList();

                return carros is null ? Results.NotFound() : Results.Ok(carros);
            });

            //retorna um carro pelo ID 
            app.MapGet("/Carros/{Id}", async (GetConnection connectionGetter, int id) =>
            {
                using var con = await connectionGetter();
                var carro = con.Get<Carro>(id);
                return carro is null ? Results.NotFound() : Results.Ok(carro);
            });

            //inserir um carro
            app.MapPost("/Carros", async (GetConnection connectionGetter, Carro carro) =>
            {
                using var con = await connectionGetter();
                var id = con.Insert(carro);
                return Results.Created($"/Carros/{id}", carro);
            });


            //atualizar um carro 
            app.MapPut("/Carros", async (GetConnection connectionGetter, Carro carro) =>
            {
                using var con = await connectionGetter();
                var id = con.Update(carro);
                return Results.Created($"/Carros/{id}", carro);
            });

            //deletar veículo

            app.MapDelete("/Carros/{Id}", async (GetConnection connectionGetter, int id) =>
            {
                using var con = await connectionGetter();
                var carro = con.Get<Carro>(id);

                if (carro is null)
                {
                    return Results.NotFound();
                }

                con.Delete(carro);
                return Results.Ok(carro);
            });
        }
    }
}
