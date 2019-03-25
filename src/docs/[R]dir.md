# **GET**   /tenants/{tenantId}/cmd/dir


## __Request Parameters__

### 1 Path Parameter
   | Property       | Description | Type     | Format | Is Required |
|----------------|-------------|----------|--------|-------------|
| tenantId            |      Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididun       | _string_ | guid   | ✔           |

### 1 Query Parameter

 | Property       | Description | Type     | pattern | Is Required |
|----------------|-------------|----------|--------|-------------|
| Path             |     quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur        | _string_ |    | ✔           |
  ___
## __Responses__

### __200__

### 1 Example
    
  - ### Schema


| Property | Description | Type | Format | Is Required |
|----------|-------------|------|--------|-------------|
| id       |         |   _string_   |    guid    | ✔           |
|   parentid       |             |    _string_  |    guid    |      ✔       |
|     tenantId     |             |   _string_   |     guid   |      ✔       |
|       volumeId   |          |   _string_   |     guid   |      ✔       |
|    partitionId      |             |    _string_  |    guid    |       ✔      |
|    name      |             |   _string_   |        |         ✔    |
|   fullPath       |             |   _string_   |        |       ✔      |
|    attributes      |             |  _string_    |        |        ✔     |
|      creationTime    |      |   _string_   |        |          ✔   |
|   lastAccessTime       |             |    _string_  |        |          ✔   |
|    lastWriteTime      |          |     _string_ |        |         ✔    |
|    _array[object]_      |           |  |        |             |
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
