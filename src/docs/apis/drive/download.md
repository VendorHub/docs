# **GET**   /libraries/{libraryId}/cmd/download

## Request

### Query Parameters

| Name | Type | Format | Required | Description |
| ---- | ---- | ------ | -------- | ----------- |
--8<-- "_partials/schemas/path_param.md"
--8<-- "_partials/schemas/tenantId_param.md"

### Path Parameters

| Name | Type | Format | Required | Description |
| ---- | ---- | ------ | -------- | ----------- |
--8<-- "_partials/schemas/libraryId_param.md"

## Responses

### HTTP 200

The response content body contains the file bytes directly.

### HTTP 400

--8<-- "_partials/schemas/error.md"

## Examples

### Requests

!!! note
    Authentication is not shown in these examples. For details refer to the [Authentication](../auth.md) page.

```bash
curl --location --request GET 'https://api.vendorhub.io/libraries/d31d18d9-43d6-4ab5-a10a-bd39402c1fb2/cmd/download?api-version=2019-09-01&path=/test.txt'
```

```csharp
IDocumentLibraryClient client = ...;
Guid libraryId = Guid.Parse("d31d18d9-43d6-4ab5-a10a-bd39402c1fb2");
HttpFileResponse response = await client.DownloadContentAsync(libraryId, "/test.txt");
```

```csharp
HttpClient httpClient = new HttpClient();
string url = "https://api.vendorhub.io/libraries/d31d18d9-43d6-4ab5-a10a-bd39402c1fb2/cmd/download?api-version=2019-09-01&path=/test.txt";
HttpResponseMessage response = await httpClient.GetAsync(url);
```

### Response

#### Body

File bytes are directly in the response body

#### Headers

File information is found in the `Content-Disposition` header: https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Content-Disposition