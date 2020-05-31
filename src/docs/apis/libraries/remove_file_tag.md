# **POST**   /libraries/{libraryId}/cmd/remove-tag

Search within a library for directories or files with a query and an optional filter.

## Request

### Query Parameters

| Name | Type | Format | Required | Description |
| ---- | ---- | ------ | -------- | ----------- |
--8<-- "_partials/schemas/path_param.md"
| `key` | _string_ | | ✔ | The key name of the tag to remove. |
--8<-- "_partials/schemas/tenantId_param.md"

### Path Parameters

| Name | Type | Format | Required | Description |
| ---- | ---- | ------ | -------- | ----------- |
--8<-- "_partials/schemas/libraryId_param.md"

## Responses

### HTTP 204

Successfully removed the tag.

### HTTP 400

--8<-- "_partials/schemas/error.md"

## Examples

### Requests

!!! note
    Authentication is not shown in these examples. For details refer to the [Authentication](../auth.md) page.

=== "cURL"

    ```bash
    curl --location --request POST 'https://api.vendorhub.io/libraries/d31d18d9-43d6-4ab5-a10a-bd39402c1fb2/cmd/remove-tag?path=/test.txt&key=tagA&api-version=2019-09-01'
    ```

=== "C#"

    ```csharp
    IDocumentLibraryClient client = ...;
    Guid libraryId = Guid.Parse("d31d18d9-43d6-4ab5-a10a-bd39402c1fb2");
    await client.RemoveFileTagAsync(libraryId, "/test.txt", "tagA");
    ```

=== "C# (Raw)"

    ```csharp
    HttpClient httpClient = new HttpClient();
    string url = "https://api.vendorhub.io/libraries/d31d18d9-43d6-4ab5-a10a-bd39402c1fb2/cmd/remove-tag?/test.txt&key=tagA&api-version=2019-09-01";
    HttpResponseMessage response = await httpClient.PostAsync(url, new StringContent(string.Empty));
    ```
