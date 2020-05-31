# **GET**   /tenants/{tenantId}/apps

## __Request Parameters__

### Path Parameters
  
   | Property | Description          | Type     | Format | Required |
   | -------- | -------------------- | -------- | ------ | ----------- |
   | tenantId | The ID of the tenant | _string_ | uuid   | ✔           |

## __Responses__

___200___

### Schema

| Property       | Description                       | Type     | Format | Required |
| -------------- | --------------------------------- | -------- | ------ | ----------- |
| array [object] |                                   |          |        |             |
| applicationId  |                                   | _string_ | uuid   |             |
| name           | The name of the file or directory | _string_ |        | ✔           |

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
