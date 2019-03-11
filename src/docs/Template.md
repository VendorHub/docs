# **GET**   /tenants/{tenantId}/cmd/info


## Request Parameters
 - ### 1 Path Parameter
   -   tenantId 
    >- _string_
    >- ___required___
    >- __format__: guid
- ### 1 Query Parameter
     -  path
     >- _string_
     >- ___required___
     >- __pattern__:
  ___
## Responses
 ### __200__
 - ### 3 Headers
    - Date
   >- _string_
   >- ___format___: date-time

   - Content-Type
   >- _string_
   - Content-Encoding
   >- _string_
  - ### Schema


| Property | Description | Type | Format | Is Required |
|----------|-------------|------|--------|-------------|
| id       |             |   _string_   |    guid    | ✔           |
|   parentid       |             |    _string_  |    guid    |      ✔       |
|     tenantId     |             |   _string_   |     guid   |      ✔       |
|       volumeId   |             |   _string_   |     guid   |      ✔       |
|    partitionId      |             |    _string_  |    guid    |       ✔      |
|    name      |             |   _string_   |        |         ✔    |
|   fullPath       |             |   _string_   |        |       ✔      |
|    attributes      |             |  _string_    |        |        ✔     |
|      creationTime    |             |   _string_   |        |          ✔   |
|   lastAccessTime       |             |    _string_  |        |          ✔   |
|    lastWriteTime      |             |     _string_ |        |         ✔    |





```Bash tab=
#!/bin/bash
STR="Hello World!"
echo $STR
```

```C tab=
#include 

int main(void) {
  printf("hello, world\n");
}
```

```C++ tab=
#include <iostream>

int main() {
  std::cout << "Hello, world!\n";
  return 0;
}
```

```C# tab=
using System;

class Program {
  static void Main(string[] args) {
    Console.WriteLine("Hello, world!");
  }
}
```