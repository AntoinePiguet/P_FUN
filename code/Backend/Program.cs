using System;
using System.Net.Http;
using System.Text.Json;
using System.Threading.Tasks;

public class ApiCaller
{
    private static readonly HttpClient finnhub = new HttpClient();
    public static async Task CallApiAsync(string apiUrl)
    {
        try 
        {
            HttpResponseMessage response = await client.GetAsync(apiUrl);
            response.EnsureSuccessStatusCode();

            string responseBody = await response.Content.ReadAsStringAsync();
            Console.WriteLine("API answer :"  + responseBody);
        }
        catch(HttpRequestException e)
        {
            Console.WriteLine("Erreur lors de l'appel API : " + e.Message);
        }
    }
}