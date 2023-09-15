using MinimalApiComDapper.Endpoints;
using MinimalApiComDapper.Extensions;

var builder = WebApplication.CreateBuilder(args);

//Invocando o méotodo extesnão para registrar os serviços do Dapper no Delegate GetConnection
builder.AddPersistence();

var app = builder.Build();

//Meétodo omde será definido o Mapeamento 
app.MapCarrosEndPoint();

app.Run();
