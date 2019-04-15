# **GET**   /tenants/{tenantId}/forms/{formId}/submissions/{submissionId}

## __Request Parameters__

### Path Parameters

   | Property     | Description          | Type     | Format | Is Required |
   | ------------ | -------------------- | -------- | ------ | ----------- |
   | tenantId     | The ID of the tenant | _string_ | guid   | ✔           |
   | FormId       |                      | _string_ | guid   | ✔           |
   | submissionId |                      | _string_ | guid   | ✔           |

## __Responses__

### __200__

### Schema

| Property     | Description | Type          | Format | Is Required |
| ------------ | ----------- | ------------- | ------ | ----------- |
| _object_     |             |               |        |             |
| formId       |             | _string_      | guid   |             |
| submissionId |             | _string_      | guid   |             |
| submittedOn  |             | _string_      |        |             |
| fields*      |             | array[object] |        |             |
| attachments* |             | array[object] |        |             |
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
