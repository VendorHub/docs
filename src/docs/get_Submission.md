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
| fields*      |             | array[[Field](#field-schema)] |        |             |
| attachments* |             | array[[attachment](#attachment-schema)] |        |             |

##### Field schema

| Property        | Relation | Type          | Format | Description |
| --------------- | -------- | ------------- | ------ | ----------- |
| __fields__      | __main__ | array[object] |        |             |
| name            | Subset   | _string_      |        |             |
| value           | Subset   | _string_      |        |             |

##### attachment schema

| Property        | Relation | Type          | Format | Description |
| --------------- | -------- | ------------- | ------ | ----------- |
| __attachments__ | __main__ | array[object] |        |             |
| fileName        | Subset   | _string_      |        |             |
| length          | Subset   | __integer__   |        |             |
| mimeType        | Subset   | _string_      |        |             |

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
