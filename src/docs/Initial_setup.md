# **POST**   /tenants/{tenantId}/apps/{appleId}/install

## __Request Parameters__

### Path Parameters
  
   | Property | Description          | Type     | Format | Required |
   | -------- | -------------------- | -------- | ------ | ----------- |
   | tenantId | The ID of the tenant | _string_ | uuid   | ✔           |
   | appId    |                      | _string_ | uuid   | ✔           |

## __Responses__

### __200__

### Schema

| Property      | Description                       | Type     | Format | Required |
| ------------- | --------------------------------- | -------- | ------ | ----------- |
| object        |                                   |          |        |             |
| applicationId |                                   | _string_ | uuid   |             |
| name          | The name of the file or directory | _string_ |        | ✔           |

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
