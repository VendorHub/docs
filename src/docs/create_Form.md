# **POST**   /tenants/{tenantId}/forms

## __Request Parameters__

### Path Parameters

   | Property | Description          | Type     | Format | Required |
   | -------- | -------------------- | -------- | ------ | ----------- |
   | tenantId | The ID of the tenant | _string_ | uuid   | ✔           |

## __Responses__

### __200__

### Schema

| Property | Description | Type          | Format | Required |
| -------- | ----------- | ------------- | ------ | ----------- |
| _Object_ |             |               |        |             |
| name     |             | _string_      |        |             |
| fields*  |             | array[object] |        |             |

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
