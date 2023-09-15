using MinimalApiComDapper.Endpoints;
using MinimalApiComDapper.Extensions;

var builder = WebApplication.CreateBuilder(args);

//Invocando o m�otodo extesn�o para registrar os servi�os do Dapper no Delegate GetConnection
builder.AddPersistence();

var app = builder.Build();

//Me�todo omde ser� definido o Mapeamento 
app.MapCarrosEndPoint();

app.Run();
