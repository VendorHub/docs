# **POST**   /libraries

## Request

### Query Parameters

| Name | Type | Format | Required | Description |
| ---- | ---- | ------ | -------- | ----------- |
{!_partials/schemas/tenantId_param.md!}

### Body

The following body should be submitted as JSON, i.e. with the `Content-Type` header set to `application/json`.

| Name           | Type      | Format | Required | Description                                                                  |
| -------------- | --------- | ------ | -------- | ---------------------------------------------------------------------------- |
| `name`         | _string_  |        | ✔        | The name of the library.                                                     |
| `location`     | _string_  |        |          | The location of the library in your Rixian Drive account.                    |
| `enableSearch` | _boolean_ |        |          | Enables searching within this library if set to `true`. Defaults to `false`. |

## Responses

### HTTP 200

#### Response Schema

| Name        | Type     | Format | Required | Description |
| ----------- | -------- | ------ | -------- | ----------- |
| `libraryId` | _string_ | _uuid_ | ✔        |             |
| `tenantId`  | _string_ | _uuid_ | ✔        |             |
| `name`      | _string_ |        | ✔        |             |
| `location`  | _string_ |        | ✔        |             |
| `createdOn` | _string_ | date   | ✔        |             |

### HTTP 400

{!_partials/schemas/error.md!}

## Examples

### Requests

!!! note
    Authentication is not shown in these examples. For details refer to the [Authentication](../auth.md) page.

```cURL tab=
curl --location --request POST 'https://api.vendorhub.io/libraries?api-version=2019-09-01' \
--header 'Content-Type: application/json' \
--data-raw '{
    "name": "Main Library",
    "location": "C:/MainLibrary",
    "enableSearch": true
}'
```

```C# tab=
IDocumentLibraryClient client = ...;
Library library = await client.CreateLibraryAsync(new CreateLibraryRequest
{
    Name = "Main Library",
    Location = "C:/MainLibrary",
    EnableSearch = true,
});
```

```C# tab='C# (Raw)'
HttpClient httpClient = new HttpClient();
string url = "https://api.vendorhub.io/libraries?api-version=2019-09-01";
string json = JsonConvert.SerializeObject(new
{
    name = "Main Library",
    location = "C:/MainLibrary",
    enableSearch = true,
});
HttpResponseMessage response = await httpClient.PostAsync(url, new StringContent(json, Encoding.UTF8, MediaTypeNames.Application.Json));
```

### Response

```json
{
    "libraryId": "d31d18d9-43d6-4ab5-a10a-bd39402c1fb2",
    "tenantId": "f28300ed-aa67-4cfc-95e2-e473be474df0",
    "name": "Main Storage",
    "location": "C:/MainStorage",
    "createdOn": "2019-09-01T00:00:00.0000000+00:00",
    "isSearchEnabled": false
}
```
