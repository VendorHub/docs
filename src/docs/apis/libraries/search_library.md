# **GET**   /libraries/{libraryId}/search

Search within a library for directories or files with a query and an optional filter.

## Request

### Query Parameters

 | Property | Description                                                                                                                                         | Type     | Format | Required |
 | -------- | --------------------------------------------------------------------------------------------------------------------------------------------------- | -------- | ------ | -------- |
 | query    | The search query using Lucene syntax. See: [Documentation](https://docs.microsoft.com/en-us/azure/search/query-lucene-syntax#bkmk_syntax)           | _string_ |        | ✔        |
 | filter   | Filter expression following a subset of OData syntax. See: [Documentation](https://docs.microsoft.com/en-us/azure/search/search-query-odata-filter) | _string_ |        |          |
 | tenantId | The tenant identifier. Assumes the default tenant if not specified.                                                                                 | _string_ | _uuid_ |          |

### Path Parameters

| Property  | Description           | Type     | Format | Required |
| --------- | --------------------- | -------- | ------ | -------- |
| libraryId | The ID of the library | _string_ | uuid   | ✔        |

## Responses

### HTTP 200

#### Response Schema

| Property  | Description | Type                                | Format | Required |
| --------- | ----------- | ----------------------------------- | ------ | -------- |
| score     |             | _string_                            |        |          |
| document* |             | [Document object](#document-schema) |        |          |

#### Document Schema

| Property    | Description | Type            | Format | Required |
| ----------- | ----------- | --------------- | ------ | -------- |
| driveItemId |             | _string_        | _uuid_ | ✔        |
| libraryId   |             | _string_        | _uuid_ | ✔        |
| name        |             | _string_        |        | ✔        |
| type        |             | _string_        |        | ✔        |
| path        |             | _string_        |        | ✔        |
| tags        |             | _array[string]_ |        | ✔        |
| createdOn   |             | _string_        | date   | ✔        |
| isReadOnly  |             | _boolean_       |        | ✔        |
| isHidden    |             | _boolean_       |        | ✔        |
| isSystem    |             | _boolean_       |        | ✔        |
| length      |             | _int64_         |        |          |
| isShortcut  |             | _boolean_       |        | ✔        |

### HTTP 400

See [Error's response page](../../errors.md)

## Examples

### Requests

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
