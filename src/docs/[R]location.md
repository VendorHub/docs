# **GET**   /tenants/{tenantId}/apps/[appId]/location

## __Request Parameters__

### Path Parameters

   | Property | Description          | Type     | Format | Is Required |
   | -------- | -------------------- | -------- | ------ | ----------- |
   | tenantId | The ID of the tenant | _string_ | guid   | ✔           |
   | appId    |                      | _string_ | guid   | ✔           |

## __Responses__

### __200__

### Schema

| Property       | Description                                                                                | Type      | Format | Is Required |
| -------------- | ------------------------------------------------------------------------------------------ | --------- | ------ | ----------- |
| id             | The ID of the file or directory                                                            | _string_  | guid   | ✔           |
| parentid       | The ID of the parent directory                                                             | _string_  | guid   | ✔           |
| tenantId       | The ID of the tenant                                                                       | _string_  | guid   | ✔           |
| volumeId       | The ID of the volume                                                                       | _string_  | guid   | ✔           |
| partitionId    | The ID of the partition containing the file or directory                                   | _string_  | guid   | ✔           |
| name           | The name of the file or directory                                                          | _string_  |        | ✔           |
| fullPath       | The full path of the file or directory                                                     | _string_  |        | ✔           |
| attributes     |                                                                                            | _string_  |        | ✔           |
| creationTime   | The time the resource was created                                                          | _string_  |        | ✔           |
| lastAccessTime | The last time the resource was accessed. Either reading or writing are considered accesses | _string_  |        | ✔           |
| lastWriteTime  | The last time the resource was written                                                     | _string_  |        | ✔           |
| hasChildren    |                                                                                            | _boolean_ |        | ✔           |

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


