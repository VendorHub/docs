# **POST**   /libraries/{libraryId}/cmd/upsert-tags

Search within a library for directories or files with a query and an optional filter.

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

### Body

The body should be submitted as JSON, i.e. with the `Content-Type` header set to `application/json`. The body must be a flat list of simple properties, i.e. a dictionary or map.

## Responses

### HTTP 204

Successfully upserted tags.

### HTTP 400

--8<-- "_partials/schemas/error.md"

## Examples

### Requests

!!! note
    Authentication is not shown in these examples. For details refer to the [Authentication](../auth.md) page.

=== "cURL"

    ```bash
    curl --location --request POST 'https://api.vendorhub.io/libraries/d31d18d9-43d6-4ab5-a10a-bd39402c1fb2/cmd/upsert-tags?path=/test.txt&api-version=2019-09-01' \
    --header 'Content-Type: application/json' \
    --data-raw '{
        "tagA": "111",
        "tagB": "XYZ",
    }'
    ```

=== "C#"

    ```csharp
    IDocumentLibraryClient client = ...;
    Guid libraryId = Guid.Parse("d31d18d9-43d6-4ab5-a10a-bd39402c1fb2");
    await client.UpsertFileTagsAsync(libraryId, "/test.txt", new UpsertFileTagsRequest
    {
        Tags = new Dictionary<string, string>
        {
            ["tagA"] = "111",
            ["tagB"] = "XYZ",
        }
    });
    ```

=== "C# (Raw)"

    ```csharp
    HttpClient httpClient = new HttpClient();
    string url = "https://api.vendorhub.io/libraries/d31d18d9-43d6-4ab5-a10a-bd39402c1fb2/cmd/upsert-tags?/test.txt&api-version=2019-09-01";
    string json = JsonConvert.SerializeObject(new
    {
        tags = new Dictionary<string, string>
        {
            ["tagA"] = "111",
            ["tagB"] = "XYZ",
        }
    });
    HttpResponseMessage response = await httpClient.PostAsync(url, new StringContent(json, Encoding.UTF8, MediaTypeNames.Application.Json));
    ```
