# Authentication

All authentication in VendorHub is performed via OAuth2 and OpenID Connect. The federating authority is:
`https://identity.vendorhub.io`

## Examples

### Requests

=== "cURL"

    ```bash
    curl --location --request POST 'https://identity.vendorhub.io/connect/token' \
    --header 'Content-Type: application/x-www-form-urlencoded' \
    --data-urlencode 'client_id={{ID_HERE}}' \
    --data-urlencode 'client_secret={{SECRET_HERE}}' \
    --data-urlencode 'grant_type=client_credentials'
    ```

=== "C#"

    ```csharp
    HttpClient httpClient = new HttpClient();
    MultipartFormDataContent content = new MultipartFormDataContent();
    content.Add(new StringContent("{{ID_HERE}}"), "client_id");
    content.Add(new StringContent("{{SECRET_HERE}}"), "client_secret");
    content.Add(new StringContent("client_credentials"), "grant_type");
    HttpResponseMessage response = await httpClient.PostAsync("https://identity.vendorhub.io/connect/token", content);
    ```

### Response

    ```json
    {
        "access_token": "eyJhbGciO...",
        "expires_in": 3600,
        "token_type": "Bearer",
        "scope": "vendorhub.documents vendorhub.forms"
    }
    ```
