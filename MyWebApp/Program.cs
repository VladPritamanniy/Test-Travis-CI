using Microsoft.AspNetCore.Builder;

var builder = WebApplication.CreateBuilder(args);
var app = builder.Build();

app.MapGet("/", () => "Hello World!");
app.MapGet("/Page", () => "World Hello!");
app.MapGet("/Test", () => "Test");
app.MapGet("/TestTest", () => "TestTest");

app.Run();
public partial class Program { }