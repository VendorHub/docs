# **GET**   /libraries

## Request

### Query Parameters

| Name | Type | Format | Required | Description |
| ---- | ---- | ------ | -------- | ----------- |
{!_partials/schemas/tenantId_param.md!}

## Responses

### HTTP 200

#### Response Schema

| Name      | Type     | Format | Required | Description |
| --------- | -------- | ------ | -------- | ----------- |
| libraryId | _string_ | _uuid_ | ✔        |             |
| tenantId  | _string_ | _uuid_ | ✔        |             |
| name      | _string_ |        | ✔        |             |
| location  | _string_ |        | ✔        |             |
| createdOn | _string_ | date   | ✔        |             |

### HTTP 400

{!_partials/schemas/error.md!}

## Examples

### Requests

!!! note
    Authentication is not shown in these examples. For details refer to the [Authentication](../auth.md) page.

```cURL tab=
curl --location --request GET 'https://api.vendorhub.io/libraries?api-version=2019-09-01&tenantId=f28300ed-aa67-4cfc-95e2-e473be474df0'
```

```C# tab=
IDocumentLibraryClient client = ...;
Guid tenantId = Guid.Parse("f28300ed-aa67-4cfc-95e2-e473be474df0");
ICollection<Library> libraries = await client.ListLibrariesAsync(tenantId);
```

```C# tab='C# (Raw)'
HttpClient httpClient = new HttpClient();
string url = "https://api.vendorhub.io/libraries?api-version=2019-09-01&tenantId=f28300ed-aa67-4cfc-95e2-e473be474df0";
HttpResponseMessage response = await httpClient.GetAsync(url);
```

### Response

```json
[
    {
        "libraryId": "d31d18d9-43d6-4ab5-a10a-bd39402c1fb2",
        "tenantId": "f28300ed-aa67-4cfc-95e2-e473be474df0",
        "name": "Main Storage",
        "location": "C:/MainStorage",
        "createdOn": "2019-09-01T00:00:00.0000000+00:00",
        "isSearchEnabled": false
    }
]
```