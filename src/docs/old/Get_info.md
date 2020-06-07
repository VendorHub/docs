# **GET**   /tenants/{tenantId}/cmd/info

Retreives details on a given file or directory.

## __Request Parameters__

### Path Parameters

   | Property | Description          | Type     | Format | Required |
   | -------- | -------------------- | -------- | ------ | ----------- |
   | tenantId | The ID of the tenant | _string_ | uuid   | ✔           |

### Query Parameters

 | Property | Description                       | Type     | Format | Required |
 | -------- | --------------------------------- | -------- | ------ | ----------- |
 | path     | The path to the file or directory | _string_ | uuid   | ✔           |
  
___

## __Responses__

### __200__

### Headers

 | Property         | Description | Type     | Format    | Required |
 | ---------------- | ----------- | -------- | --------- | ----------- |
 | date             |             | _string_ | date-time |             |
 | Content-Type     |             | _string_ |           |             |
 | Content-Encoding |             | _string_ |           |             |
  
### Schema

| Property       | Description                                                                                | Type     | Format | Required |
| -------------- | ------------------------------------------------------------------------------------------ | -------- | ------ | ----------- |
| id             | The ID of the file or directory                                                            | _string_ | uuid   | ✔           |
| parentid       | The ID of the parent directory                                                             | _string_ | uuid   | ✔           |
| tenantId       | The ID of the tenant                                                                       | _string_ | uuid   | ✔           |
| volumeId       | The ID of the volume                                                                       | _string_ | uuid   | ✔           |
| partitionId    | The ID of the partition containing the file or directory                                   | _string_ | uuid   | ✔           |
| name           | The name of the file or directory                                                          | _string_ |        | ✔           |
| fullPath       | The full path of the file or directory                                                     | _string_ |        | ✔           |
| attributes     |                                                                                            | _string_ |        | ✔           |
| creationTime   | The time the resource was created                                                          | _string_ |        | ✔           |
| lastAccessTime | The last time the resource was accessed. Either reading or writing are considered accesses | _string_ |        | ✔           |
| lastWriteTime  | The last time the resource was written                                                     | _string_ |        | ✔           |

## 400

See [Error's response page](errors.md)

##### Examples

Example of "innererror":

## __Example Requests__

```bash
curl -X GET \
  'https://api.vendorhub.dev/tenants/f88e77a3-287b-4556-a41e-3a70d403a45f/cmd/info?path=C:/test.png'
```

```csharp
Example2
```

## __Example Responses__

```bash
Example1
```

```csharp
Example2
```
