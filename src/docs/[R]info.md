# **GET**   /tenants/{tenantId}/cmd/info

Retreives details on a given file or directory.

## __Request Parameters__

### Path Parameters

   | Property | Description          | Type     | Format | Is Required |
   | -------- | -------------------- | -------- | ------ | ----------- |
   | tenantId | The ID of the tenant | _string_ | guid   | ✔           |

### Query Parameters

 | Property | Description                       | Type     | Format | Is Required |
 | -------- | --------------------------------- | -------- | ------ | ----------- |
 | path     | The path to the file or directory | _string_ | guid   | ✔           |
  
___

## __Responses__

### __200__

### 3 Headers

 | Property         | Description | Type     | Format    | Is Required |
 | ---------------- | ----------- | -------- | --------- | ----------- |
 | date             |             | _string_ | date-time |             |
 | Content-Type     |             | _string_ |           |             |
 | Content-Encoding |             | _string_ |           |             |
  
- ### Schema

| Property       | Description                                                                               | Type     | Format | Is Required |
| -------------- | ----------------------------------------------------------------------------------------- | -------- | ------ | ----------- |
| id             | The ID of the file or directory                                                           | _string_ | guid   | ✔           |
| parentid       | The ID of the parent directory                                                            | _string_ | guid   | ✔           |
| tenantId       | The ID of the tenant                                                                      | _string_ | guid   | ✔           |
| volumeId       | The ID of the volume                                                                      | _string_ | guid   | ✔           |
| partitionId    | The ID of the partition containing the file or directory                                  | _string_ | guid   | ✔           |
| name           | The name of the file or directory                                                         | _string_ |        | ✔           |
| fullPath       | The full path of the file or directory                                                    | _string_ |        | ✔           |
| attributes     |                                                                                           | _string_ |        | ✔           |
| creationTime   | The time the resource was created                                                         | _string_ |        | ✔           |
| lastAccessTime | The last time the resource was accesed. Either reading or writing are considered accesses | _string_ |        | ✔           |
| lastWriteTime  | The last time the resource was written                                                    | _string_ |        | ✔           |

## __Example Requests__

```cURL tab=cURL
curl -X GET \
  'https://api.vendorhub.dev/tenants/f88e77a3-287b-4556-a41e-3a70d403a45f/cmd/info?path=C:/test.png'
```

```C# tab=C#
Example2
```

## __Example Responses__

```cURL tab=cURL
Example1
```

```C# tab=C#
Example2
```
