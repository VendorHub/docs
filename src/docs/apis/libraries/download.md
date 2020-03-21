# **GET**   /libraries/{libraryId}/cmd/download

## Request Parameters

### Query Parameters

 | Property | Description                                                         | Type     | Format | Required |
 | -------- | ------------------------------------------------------------------- | -------- | ------ | -------- |
 | path     | The path to a file. Formatting details: [Paths](../paths.md)        | _string_ |        | ✔        |
 | tenantId | The tenant identifier. Assumes the default tenant if not specified. | _string_ | _uuid_ |          |

### Path Parameters

| Property  | Description           | Type     | Format | Required |
| --------- | --------------------- | -------- | ------ | -------- |
| libraryId | The ID of the library | _string_ | uuid   | ✔        |

## Responses

### HTTP 200

The response content body contains the file bytes directly.

### HTTP 400

See [Error's response page](../../errors.md)

## Examples

### Requests

!!! note
    Authentication is not shown in these examples.

```cURL tab=
curl --location --request GET 'https://api.vendorhub.io/libraries/d31d18d9-43d6-4ab5-a10a-bd39402c1fb2/cmd/download?api-version=2019-09-01&path=/test.txt'
```

```C# tab=
IDocumentLibraryClient client = ...;
Guid libraryId = Guid.Parse("d31d18d9-43d6-4ab5-a10a-bd39402c1fb2");
HttpFileResponse response = await client.DownloadContentAsync(libraryId, "/test.txt");
```

```C# tab='C# (Raw)'
HttpClient httpClient = new HttpClient();
string url = "https://api.vendorhub.io/libraries/d31d18d9-43d6-4ab5-a10a-bd39402c1fb2/cmd/download?api-version=2019-09-01&path=/test.txt";
HttpResponseMessage response = await httpClient.GetAsync(url);
```

### Response

#### Body

File bytes are directly in the response body

#### Headers

File information is found in the `Content-Disposition` header: https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Content-Disposition