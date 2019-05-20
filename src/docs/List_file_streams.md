# **GET**   /tenants/{tenantId}/cmd/streams

## __Request Parameters__

### Path Parameters

   | Property | Description          | Type     | Format | Is Required |
   | -------- | -------------------- | -------- | ------ | ----------- |
   | tenantId | The ID of the tenant | _string_ | guid   | ✔           |

### Query Parameters

 | Property | Description                       | Type     | Format | Is Required |
 | -------- | --------------------------------- | -------- | ------ | ----------- |
 | Path     | The path to the file or directory | _string_ |        | ✔           |

## __Responses__

### __200__

### Schema

| Property        | Description | Type | Format | Is Required |
| --------------- | ----------- | ---- | ------ | ----------- |
| _array_[string] |             |      |        |             |

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
