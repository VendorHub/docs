# **GET**   /libraries/{libraryId}

## Request

### Query Parameters

| Name | Type | Format | Required | Description |
| ---- | ---- | ------ | -------- | ----------- |
--8<-- "_partials/schemas/tenantId_param.md"

### Path Parameters

| Name | Type | Format | Required | Description |
| ---- | ---- | ------ | -------- | ----------- |
--8<-- "_partials/schemas/libraryId_param.md"

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

--8<-- "_partials/schemas/error.md"

## Examples

### Requests

!!! note
    Authentication is not shown in these examples. For details refer to the [Authentication](../auth.md) page.

=== "cURL"

    ```bash
    curl --location --request POST 'https://api.vendorhub.io/libraries/d31d18d9-43d6-4ab5-a10a-bd39402c1fb2?api-version=2019-09-01' \
    --header 'Content-Type: application/json' \
    --data-raw '{
        "name": "Main Library",
        "location": "C:/MainLibrary",
        "enableSearch": true
    }'
    ```

=== "C#"

    ```csharp
    IDocumentLibraryClient client = ...;
    Guid libraryId = Guid.Parse("d31d18d9-43d6-4ab5-a10a-bd39402c1fb2");
    Library library = await client.CreateLibraryAsync(libraryId);
    ```

=== "C# (Raw)"

    ```csharp
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
