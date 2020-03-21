#### Error Response

| Property | Type            | Required | Description       |
| -------- | --------------- | -------- | ----------------- |
| `error`  | [Error](#error) | ✔        | The error object. |

##### Error

| Property     | Type                        | Required | Description                                                                              |
| ------------ | --------------------------- | -------- | ---------------------------------------------------------------------------------------- |
| `code`       | string (enumerated)         | ✔        | One of a server-defined set of error codes.                                              |
| `message`    | string                      | ✔        | A human-readable representation of the error.                                            |
| `target`     | string                      |          | The target of the error.                                                                 |
| `details`    | array[[Error](#error)]      |          | An array of details about specific errors that led to this reported error.               |
| `innererror` | [Inner Error](#inner-error) |          | An object containing more specific informatFion than the current object about the error. |

##### Inner Error

| Property     | Type                        | Required | Description                                                                             |
| ------------ | --------------------------- | -------- | --------------------------------------------------------------------------------------- |
| `code`       | string                      |          | A more specific error code than was provided by the containing error.                   |
| `innererror` | [Inner Error](#inner-error) |          | An object containing more specific information than the current object about the error. |

##### Examples

Example of "innererror":
