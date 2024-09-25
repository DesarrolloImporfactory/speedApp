using System.Net.Http;
using System.Text;
using System.Text.Json;
using System.Threading.Tasks;
using speed.Models;

namespace speed.Services
{
    public class ApiService
    {
        private readonly HttpClient _httpClient;

        public ApiService()
        {
            _httpClient = new HttpClient();
        }

        public async Task<string> LoginAsync(string email, string password)
        {
            var loginData = new Login
            {
                Email = email,
                Password = password
            };

            var json = JsonSerializer.Serialize(loginData);
            var content = new StringContent(json, Encoding.UTF8, "application/json");

            var response = await _httpClient.PostAsync("https://new.imporsuitpro.com/Acceso/login", content);

            if (response.IsSuccessStatusCode)
            {
                var result = await response.Content.ReadAsStringAsync();
                // Aquí puedes guardar el token o datos de sesión
                return result;
            }
            else
            {
                throw new Exception("Login fallido");
            }
        }
    }
}
