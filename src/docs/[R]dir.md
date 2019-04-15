# **GET**   /tenants/{tenantId}/cmd/dir

## __Request Parameters__

### Path Parameters

   | Property | Description                       | Type     | Format | Is Required |
   | -------- | --------------------------------- | -------- | ------ | ----------- |
   | tenantId | The path to the file or directory | _string_ | guid   | ✔           |

### 1 Query Parameter

 | Property | Description                       | Type     | Format | Is Required |
 | -------- | --------------------------------- | -------- | ------ | ----------- |
 | Path     | The path to the file or directory | _string_ |        | ✔           |

## __Responses__

### __200__

### Examples
  
### Schema


| Property        | Description                                                                                | Type     | Format | Is Required |
| --------------- | ------------------------------------------------------------------------------------------ | -------- | ------ | ----------- |
| id              | The ID of the file or directory                                                            | _string_ | guid   | ✔           |
| parentid        | **The** ID of the parent directory                                                             | _string_ | guid   | ✔           |
| tenantId        | The ID of the tenant                                                                       | _string_ | guid   | ✔           |
| volumeId        | The ID of the volume                                                                       | _string_ | guid   | ✔           |
| partitionId     | The ID of the partition containing the file or directory                                   | _string_ | guid   | ✔           |
| name            | The name of the file or directory                                                          | _string_ |        | ✔           |
| fullPath        | The full path of the file or directory                                                     | _string_ |        | ✔           |
| attributes      |                                                                                            | _string_ |        | ✔           |
| creationTime    | The time the resource was created                                                          | _string_ |        | ✔           |
| lastAccessTime  | The last time the resource was accessed. Either reading or writing are considered accesses | _string_ |        | ✔           |
| lastWriteTime   | The last time the resource was written                                                     | _string_ |        | ✔           |
| _array[object]_ |                                                                                            |          |        |             |

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
