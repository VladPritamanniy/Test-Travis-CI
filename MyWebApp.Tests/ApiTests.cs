using System.Net;
using System.Threading.Tasks;
using Xunit;
using Microsoft.AspNetCore.Mvc.Testing;
using MyWebApp;
using Microsoft.VisualStudio.TestPlatform.TestHost;

namespace MyWebApp.Tests
{
    public class ApiTests : IClassFixture<WebApplicationFactory<Program>>
    {
        private readonly WebApplicationFactory<Program> _factory;

        public ApiTests(WebApplicationFactory<Program> factory)
        {
            _factory = factory;
        }

        [Fact]
        public async Task GetHome_ReturnsSuccessStatusCode()
        {
            var client = _factory.CreateClient();
            var response = await client.GetAsync("/");

            response.EnsureSuccessStatusCode();
            Assert.Equal(HttpStatusCode.OK, response.StatusCode);
        }
    }
}
