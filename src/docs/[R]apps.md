# **GET**   /tenants/{tenantId}/apps


## __Request Parameters__

### 1 Path Parameter
  
   | Property | Description | Type     | Format | Is Required |
   | -------- | ----------- | -------- | ------ | ----------- |
   | tenantId |             | _string_ | guid   | ✔           |

## __Responses__

### __200__

### Schema

| Property       | Description | Type     | Format | Is Required |
| -------------- | ----------- | -------- | ------ | ----------- |
| array [object] |             |          |        |             |
| applicationId  |             | _string_ | guid   |             |
| name           |             | _string_ |        | ✔           |

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
