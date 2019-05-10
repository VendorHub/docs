# **GET**   /tenants/{tenantId}/forms/{formId}/submissions

## __Request Parameters__

### Path Parameters

   | Property | Description          | Type     | Format | Is Required |
   | -------- | -------------------- | -------- | ------ | ----------- |
   | tenantId | The ID of the tenant | _string_ | guid   | ✔           |
   | FormId   |                      | _string_ | guid   | ✔           |
## __Responses__

### __200__

### Schema

| Property        | Description | Type      | Format | Is Required |
| --------------- | ----------- | --------- | ------ | ----------- |
| _array_[object] |             |           |        |             |
| SubmissionId    |             | _string_  | guid   |             |
| formId          |             | _string_  | guid   |             |
| tenantId        |             | _string_  | guid   |             |
| submittedOn     |             | _string_  | date   |             |
| fieldCount      |             | _integer_ |        |             |
| attachmentCount |             | _integer_ |        |             |

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
