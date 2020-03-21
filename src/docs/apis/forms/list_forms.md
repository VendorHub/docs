# **GET**   /tenants/{tenantId}/forms

## __Request Parameters__

### Path Parameters

   | Property | Description          | Type     | Format | Required |
   | -------- | -------------------- | -------- | ------ | ----------- |
   | tenantId | The ID of the tenant | _string_ | uuid   | ✔           |

## __Responses__

### __200__

### Schema

| Property           | Description | Type                          | Format | Required |
| ------------------ | ----------- | ----------------------------- | ------ | ----------- |
| array [object]     |             |                               |        |             |
| formId             |             | _string_                      | uuid   | ✔           |
| name               |             | _string_                      |        |             |
| fields*            |             | array[[Field](#field-schema)] |        |             |
| submissionCount    |             | _integer_                     |        |             |
| submissionThisWeek |             | _integer_                     |        |             |
| submissionLastWeek |             | _integer_                     |        |             |
| createdOn          |             | _string_                      | date   |             |

##### Field schema

| Property   | Relation | Type          | Format | Description |
| ---------- | -------- | ------------- | ------ | ----------- |
| __fields__ | __main__ | array[object] |        |             |
| name       | Subset   | _string_      |        |             |
| value      | Subset   | _string_      |        |             |

## 400

See [Error's response page](../errors.md)

##### Examples

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

## Footnotes

