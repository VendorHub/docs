# **GET**   /tenants/{tenantId}/cmd/watcher

## __Request Parameters__

### Path Parameters

   | Property | Description          | Type     | Format | Required |
   | -------- | -------------------- | -------- | ------ | ----------- |
   | tenantId | The ID of the tenant | _string_ | uuid   | ✔           |

## __Responses__

### __200__

### Schema

| Property              | Description | Type      | Format | Required |
| --------------------- | ----------- | --------- | ------ | ----------- |
| _object_              |             |           |        |             |
| directoryWatcherId    |             | _string_  | uuid   | ✔           |
| directoryId           |             | _string_  | uuid   | ✔           |
| includeSubdirectories |             | _boolean_ |        |             |
| notifyFilter          |             | _integer_ |        |             |
| monitorFilter         |             | _string_  |        |             |
| notificationUri       |             | _string_  |        | ✔           |

## 400

See [Error's response page](errors.md)

##### Examples

## __Test Requests__

```bash 
Example1
```

```csharp
Example2
```

## __Test Responses__

```bash 
Example1
```

```csharp
Example2
```
