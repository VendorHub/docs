# **GET**   /tenants/{tenantId}/forms/{formId}

## __Request Parameters__

### Path Parameters

   | Property | Description          | Type     | Format | Is Required |
   | -------- | -------------------- | -------- | ------ | ----------- |
   | tenantId | The ID of the tenant | _string_ | guid   | ✔           |
   | FormId   |                      | _string_ | guid   | ✔           |

## __Responses__

### __200__

### Schema

| Property           | Description | Type          | Format | Is Required |
| ------------------ | ----------- | ------------- | ------ | ----------- |
|  _object_     |             |               |        |             |
| formId             |             | _string_      | guid   | ✔           |
| name               |             | _string_      |        |             |
| fields*            |             | array[object] |        |             |
| submissionCount    |             | _integer_     |        |             |
| submissionThisWeek |             | _integer_     |        |             |
| submissionLastWeek |             | _integer_     |        |             |
| createdOn       |             | _string_      | date   |             |
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
