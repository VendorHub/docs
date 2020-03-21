##### ErrorResponse : Object

| Property | Type  | Required | Description       |
| -------- | ----- | -------- | ----------------- |
| `error`  | Error | ✔        | The error object. |

##### Error : Object

| Property     | Type                                          | Required | Description                                                                              |
| ------------ | --------------------------------------------- | -------- | ---------------------------------------------------------------------------------------- |
| `code`       | String (enumerated)                           | ✔        | One of a server-defined set of error codes.                                              |
| `message`    | String                                        | ✔        | A human-readable representation of the error.                                            |
| `target`     | String                                        |          | The target of the error.                                                                 |
| `details`    | Error[]                                       |          | An array of details about specific errors that led to this reported error.               |
| `innererror` | [innererror](#innererror-object) |          | An object containing more specific informatFion than the current object about the error. |

##### InnerError : Object

| Property     | Type       | Required | Description                                                                             |
| ------------ | ---------- | -------- | --------------------------------------------------------------------------------------- |
| `code`       | String     |          | A more specific error code than was provided by the containing error.                   |
| `innererror` | InnerError |          | An object containing more specific information than the current object about the error. |

##### Examples

Example of "innererror":
