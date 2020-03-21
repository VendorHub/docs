# **GET**   /tenants/{tenantId}/cmd/dir

## __Request Parameters__

### Path Parameters

   | Property | Description                       | Type     | Format | Required |
   | -------- | --------------------------------- | -------- | ------ | ----------- |
   | tenantId | The path to the file or directory | _string_ | uuid   | ✔           |

### 1 Query Parameter

 | Property | Description                       | Type     | Format | Required |
 | -------- | --------------------------------- | -------- | ------ | ----------- |
 | Path     | The path to the file or directory | _string_ |        | ✔           |

## __Responses__

### __200__

### Examples
  
### Schema


| Property        | Description                                                                                | Type     | Format | Required |
| --------------- | ------------------------------------------------------------------------------------------ | -------- | ------ | ----------- |
| id              | The ID of the file or directory                                                            | _string_ | uuid   | ✔           |
| parentid        | **The** ID of the parent directory                                                         | _string_ | uuid   | ✔           |
| tenantId        | The ID of the tenant                                                                       | _string_ | uuid   | ✔           |
| volumeId        | The ID of the volume                                                                       | _string_ | uuid   | ✔           |
| partitionId     | The ID of the partition containing the file or directory                                   | _string_ | uuid   | ✔           |
| name            | The name of the file or directory                                                          | _string_ |        | ✔           |
| fullPath        | The full path of the file or directory                                                     | _string_ |        | ✔           |
| attributes      |                                                                                            | _string_ |        | ✔           |
| creationTime    | The time the resource was created                                                          | _string_ |        | ✔           |
| lastAccessTime  | The last time the resource was accessed. Either reading or writing are considered accesses | _string_ |        | ✔           |
| lastWriteTime   | The last time the resource was written                                                     | _string_ |        | ✔           |
| _array[object]_ |                                                                                            |          |        |             |

## 400

See [Error's response page](errors.md)

##### Examples

## __Test Requests__

```cURL tab= 
Example1
```

```C# tab=
Example2
```

## __Test Responses__

```cURL tab= 
Example1
```

```C# tab=
Example2
```
