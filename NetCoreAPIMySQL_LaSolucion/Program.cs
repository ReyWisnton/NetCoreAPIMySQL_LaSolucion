using MySql.Data.MySqlClient;
using NetCoreAPIMySQL.Data;
using NetCoreAPIMySQL.Data.Repositorio;

var builder = WebApplication.CreateBuilder(args);

// Add services to the container.

builder.Services.AddControllers();
// Learn more about configuring Swagger/OpenAPI at https://aka.ms/aspnetcore/swashbuckle
builder.Services.AddEndpointsApiExplorer();
builder.Services.AddSwaggerGen();

var SQLConfigurations = new MySQLConfigurations_Cadena(builder.Configuration.GetConnectionString("MySQLConnecction"));
builder.Services.AddSingleton(SQLConfigurations);

//builder.Services.AddSingleton(new MySqlConnection(builder.Configuration.GetConnectionString("MySQLConnecction")));
builder.Services.AddScoped<Interf_Transferencias, Class_Transferencias>();

var app = builder.Build();

// Configure the HTTP request pipeline.


if (app.Environment.IsDevelopment())
{
    app.UseSwagger();
    app.UseSwaggerUI();
}

app.UseHttpsRedirection();

app.UseAuthorization();

app.MapControllers();

app.Run();
