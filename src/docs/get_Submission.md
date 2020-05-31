# **GET**   /tenants/{tenantId}/forms/{formId}/submissions/{submissionId}

## __Request Parameters__

### Path Parameters

   | Property     | Description          | Type     | Format | Required |
   | ------------ | -------------------- | -------- | ------ | ----------- |
   | tenantId     | The ID of the tenant | _string_ | uuid   | ✔           |
   | FormId       |                      | _string_ | uuid   | ✔           |
   | submissionId |                      | _string_ | uuid   | ✔           |

## __Responses__

### __200__

### Schema

| Property     | Description | Type          | Format | Required |
| ------------ | ----------- | ------------- | ------ | ----------- |
| _object_     |             |               |        |             |
| formId       |             | _string_      | uuid   |             |
| submissionId |             | _string_      | uuid   |             |
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

## 400

See [Error's response page](errors.md)

##### Examples

Example of "innererror":

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
