# **GET**   /libraries/{libraryId}/cmd/dir

TODO

## Request

### Query Parameters

| Name | Type | Format | Required | Description |
| ---- | ---- | ------ | -------- | ----------- |
{!_partials/schemas/path_param.md!}
{!_partials/schemas/tenantId_param.md!}

### Path Parameters

| Name | Type | Format | Required | Description |
| ---- | ---- | ------ | -------- | ----------- |
{!_partials/schemas/libraryId_param.md!}

## Responses

### HTTP 200

#### Response Schema

Returns an array of library items:

{!_partials/schemas/drive_item_info.md!}

### HTTP 400

{!_partials/schemas/error.md!}

## Examples

### Requests

!!! note
    Authentication is not shown in these examples. For details refer to the [Authentication](../auth.md) page.

```cURL tab=
curl --location --request GET 'https://api.vendorhub.io/libraries/d31d18d9-43d6-4ab5-a10a-bd39402c1fb2/cmd/dir?path=/documents/&api-version=2019-09-01'
```

```C# tab=
IDocumentLibraryClient client = ...;
Guid libraryId = Guid.Parse("d31d18d9-43d6-4ab5-a10a-bd39402c1fb2");
ICollection<LibraryItemInfo> children = await client.GetChildrenAsync(libraryId, "/documents/");
```

```C# tab='C# (Raw)'
HttpClient httpClient = new HttpClient();
string url = "https://api.vendorhub.io/libraries/d31d18d9-43d6-4ab5-a10a-bd39402c1fb2/cmd/dir?path=/documents/&api-version=2019-09-01";
HttpResponseMessage response = await httpClient.GetAsync(url);
```

### Response

TODO
