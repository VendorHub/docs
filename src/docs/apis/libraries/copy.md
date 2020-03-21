# **POST**   /libraries/{libraryId}/cmd/copy

Search within a library for directories or files with a query and an optional filter.

## Request

### Query Parameters

| Name     | Type     | Format | Required | Description                                                           |
| -------- | -------- | ------ | -------- | --------------------------------------------------------------------- |
| `source` | _string_ |        | ✔        | The path to the source file. Formatting details: [Paths](../paths.md) |
| `target` | _string_ |        | ✔        | The path to the target file. Formatting details: [Paths](../paths.md) |
{!_partials/schemas/tenantId_param.md!}

### Path Parameters

| Name | Type | Format | Required | Description |
| ---- | ---- | ------ | -------- | ----------- |
{!_partials/schemas/libraryId_param.md!}

## Responses

### HTTP 204

Successfully upserted tags.

### HTTP 400

{!_partials/schemas/error.md!}

## Examples

### Requests

!!! note
    Authentication is not shown in these examples. For details refer to the [Authentication](../auth.md) page.

```cURL tab=
curl --location --request POST 'https://api.vendorhub.io/libraries/d31d18d9-43d6-4ab5-a10a-bd39402c1fb2/cmd/copy?source=/test.txt&target=/other.txt&api-version=2019-09-01'
```

```C# tab=
IDocumentLibraryClient client = ...;
Guid libraryId = Guid.Parse("d31d18d9-43d6-4ab5-a10a-bd39402c1fb2");
await client.CopyAsync(libraryId, "/test.txt", "/other.txt");
```

```C# tab='C# (Raw)'
HttpClient httpClient = new HttpClient();
string url = "https://api.vendorhub.io/libraries/d31d18d9-43d6-4ab5-a10a-bd39402c1fb2/cmd/copy?source=/test.txt&target=other.txt&api-version=2019-09-01";
HttpResponseMessage response = await httpClient.PostAsync(url, new StringContent(string.Empty));
```
