# **GET**   /tenants/{tenantId}/volumes

## __Request Parameters__

### Path Parameters

   | Property | Description          | Type     | Format | Is Required |
   | -------- | -------------------- | -------- | ------ | ----------- |
   | tenantId | The ID of the tenant | _string_ | guid   | ✔           |

## __Responses__

### __200__

### Schema

| Property        | Description                       | Type     | Format | Is Required |
| --------------- | --------------------------------- | -------- | ------ | ----------- |
| tenantId        | The ID of the tenant              | _string_ | guid   | ✔           |
| id              | he ID of the file or directory    | _string_ | guid   | ✔           |
| name            | The name of the file or directory | _string_ | guid   | ✔           |
| _array_[object] |                                   |          |        |             |

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
