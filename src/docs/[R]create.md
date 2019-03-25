# **post**   /tenants/{tenantId}/cmd/create

## __Request Parameters__

### 1 Path Parameter

   | Property | Description | Type     | Format | Is Required |
   | -------- | ----------- | -------- | ------ | ----------- |
   | tenantId |             | _string_ | guid   | ✔           |

### 1 Query Parameter

 | Property | Description | Type     | pattern | Is Required |
 | -------- | ----------- | -------- | ------- | ----------- |
 | path     |             | _string_ |         | ✔           |

## __Responses__

### __200__

### Schema

| Property       | Description | Type     | Format | Is Required |
| -------------- | ----------- | -------- | ------ | ----------- |
| id             |             | _string_ | guid   | ✔           |
| parentid       |             | _string_ | guid   | ✔           |
| tenantId       |             | _string_ | guid   | ✔           |
| volumeId       |             | _string_ | guid   | ✔           |
| partitionId    |             | _string_ | guid   | ✔           |
| name           |             | _string_ |        | ✔           |
| fullPath       |             | _string_ |        | ✔           |
| attributes     |             | _string_ |        | ✔           |
| creationTime   |             | _string_ |        | ✔           |
| lastAccessTime |             | _string_ |        | ✔           |
| lastWriteTime  |             | _string_ |        | ✔           |

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
