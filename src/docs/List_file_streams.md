# **GET**   /tenants/{tenantId}/cmd/streams

## __Request Parameters__

### Path Parameters

   | Property | Description          | Type     | Format | Required |
   | -------- | -------------------- | -------- | ------ | ----------- |
   | tenantId | The ID of the tenant | _string_ | uuid   | ✔           |

### Query Parameters

 | Property | Description                       | Type     | Format | Required |
 | -------- | --------------------------------- | -------- | ------ | ----------- |
 | Path     | The path to the file or directory | _string_ |        | ✔           |

## __Responses__

### __200__

### Schema

| Property        | Description | Type | Format | Required |
| --------------- | ----------- | ---- | ------ | ----------- |
| _array_[string] |             |      |        |             |

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
