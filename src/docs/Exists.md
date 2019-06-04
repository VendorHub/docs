# **GET**   /tenants/{tenantId}/cmd/exists

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

| Property | Description | Type | Format | Is Required |
| -------- | ----------- | ---- | ------ | ----------- |
| _object_ |             |      |        |             |

## 400

See [Error's response page](errors.md)

##### Examples

Example of "innererror":

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
