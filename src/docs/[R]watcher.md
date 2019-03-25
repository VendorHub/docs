# **GET**   /tenants/{tenantId}/cmd/watcher

## __Request Parameters__

### 1 Path Parameter

   | Property | Description | Type     | Format | Is Required |
   | -------- | ----------- | -------- | ------ | ----------- |
   | tenantId |             | _string_ | guid   | ✔           |

## __Responses__

### __200__

### Schema

| Property              | Description | Type      | Format | Is Required |
| --------------------- | ----------- | --------- | ------ | ----------- |
| _object_              |             |           |        |             |
| directoryWatcherId    |             | _string_  | guid   | ✔           |
| directoryId           |             | _string_  | guid   | ✔           |
| includeSubdirectories |             | _boolean_ |        |             |
| notifyFilter          |             | _integer_ |        |             |
| monitorFilter         |             | _string_  |        |             |
| notificationUri       |             | _string_  |        | ✔           |

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
