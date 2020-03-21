# **POST**   /tenants/{tenantId}/cmd/move

## __Request Parameters__

## Path Parameters

   | Property | Description          | Type     | Format | Required |
   | -------- | -------------------- | -------- | ------ | ----------- |
   | tenantId | The ID of the tenant | _string_ | uuid   | ✔           |

### Query Parameters

 | Property | Description | Type     | Format | Required |
 | -------- | ----------- | -------- | ------ | ----------- |
 | source   |             | _string_ |        | ✔           |
 | target   |             | _string_ |        | ✔           |
  ___

## __Responses__

### __204__

### Schema

| Property | Description | Type | Format | Required |
| -------- | ----------- | ---- | ------ | ----------- |
| _object_ |             |      |        |             |

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
