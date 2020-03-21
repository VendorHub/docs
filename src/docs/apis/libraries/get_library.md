# **GET**   /libraries/{libraryId}

## __Request Parameters__

### Query Parameters

| Property | Description                                                         | Type     | Format | Required |
| -------- | ------------------------------------------------------------------- | -------- | ------ | ----------- |
| tenantId | The tenant identifier. Assumes the default tenant if not specified. | _string_ | _uuid_ |             |

### Path Parameters

| Property  | Description           | Type     | Format | Required |
| --------- | --------------------- | -------- | ------ | ----------- |
| libraryId | The ID of the library | _string_ | uuid   | ✔           |

## __Responses__

### __200__

### Schema

| Property  | Description | Type     | Format | Required |
| --------- | ----------- | -------- | ------ | ----------- |
| libraryId |             | _string_ | _uuid_ | ✔           |
| tenantId  |             | _string_ | _uuid_ | ✔           |
| name      |             | _string_ |        | ✔           |
| location  |             | _string_ |        | ✔           |
| createdOn |             | _string_ | date   | ✔           |

## 400

See [Error's response page](../../errors.md)

## Examples

### __Requests__

!!! note
    Authentication is not shown in these examples.

```cURL tab=
curl --location --request POST 'https://api.vendorhub.io/libraries/d31d18d9-43d6-4ab5-a10a-bd39402c1fb2?api-version=2019-09-01' \
--header 'Content-Type: application/json' \
--data-raw '{
    "name": "Main Library",
    "location": "C:/MainLibrary",
    "enableSearch": true
}'
```

```C# tab=
IDocumentLibraryClient client = ...;
Guid libraryId = Guid.Parse("d31d18d9-43d6-4ab5-a10a-bd39402c1fb2");
Library library = await client.CreateLibraryAsync(libraryId);
```

```C# tab='C# (Raw)'
HttpClient httpClient = new HttpClient();
string url = "https://api.vendorhub.io/libraries/d31d18d9-43d6-4ab5-a10a-bd39402c1fb2?api-version=2019-09-01";
HttpResponseMessage response = await httpClient.GetAsync(url);
```

### __Response__

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
