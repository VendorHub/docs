# Getting Started

In order to get started using the Document Library you will need to obtain an account and API credentials. The following will walk through the basics of setting up a projec to use the .NET client library. The full sample code can be found on GitHub:
https://github.com/rixian/examples/tree/master/doclib-01-helloworld/HelloWorld

## Prerequisites

- .NET Core SDK - [Download](https://dotnet.microsoft.com/)
- Client ID and Secret obtained from the [Dashboard](https://dashboard.vendorhub.io)
- Library ID obtained from the [Dashboard](https://dashboard.vendorhub.io)

## Create new project

Start by creating a new folder called `HelloWorld`:

```bash
md HelloWorld
cd ./HelloWorld
```

Create a new Worker project:

```bash
dotnet new worker
```

## Add NuGet packages

Next we need to add the following NuGet package to start using Document Library:

```bash
dotnet add package VendorHub.DocumentLibrary.DependencyInjection --version 0.3.14
```

## Register the Document Library Client

Open the `Program.cs` file and update the `ConfigureServices` method with the code below. Be sure to replace the `ClientId` and `ClientSecret` properties with actual values.

```csharp hl_lines="6-15"
public static IHostBuilder CreateHostBuilder(string[] args) =>
    Host.CreateDefaultBuilder(args)
        .ConfigureServices((hostContext, services) =>
        {
            services.AddHostedService<Worker>();
            services.AddDocumentLibraryClient(new DocumentLibraryClientOptions
            {
                DocumentLibraryApiUri = new Uri("https://api.vendorhub.io"),
                TokenClientOptions = new ClientCredentialsTokenClientOptions
                {
                    Authority = "https://identity.vendorhub.io",
                    ClientId = "REPLACE_ME",
                    ClientSecret = "REPLACE_ME"
                }
            });
        });
```

## Make first call

```csharp hl_lines="3 6 8 14-16 18-19"
public class Worker : BackgroundService
{
    private readonly IDocumentLibraryClient client;
    private readonly ILogger<Worker> _logger;

    public Worker(IDocumentLibraryClient client, ILogger<Worker> logger)
    {
        this.client = client;
        _logger = logger;
    }

    protected override async Task ExecuteAsync(CancellationToken stoppingToken)
    {
        var libraryId = Guid.Parse("REPLACE_ME");
        ICollection<LibraryItemInfo> children =
            await this.client.ListChildrenAsync(libraryId, "/");

        _logger.LogInformation("Found children: {children}",
            JsonConvert.SerializeObject(children, Formatting.Indented));
    }
}
```
