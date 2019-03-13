# **GET**   /tenants/{tenantId}/cmd/info


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

### 3 Headers
    
 | Property         | Description | Type     | Format    | Is Required |
|------------------|-------------|----------|-----------|-------------|
| date             |      quae ab illo inventore       | _string_ | date-time |             |
| Content-Type     |    laboriosam, nisi ut aliquid ex ea commodi consequatur         | _string_ |           |             |
| Content-Encoding |        dolore magnam aliquam     | _string_ |           |             |
  
  - ### Schema


| Property | Description | Type | Format | Is Required |
|----------|-------------|------|--------|-------------|
| id       |         dolorum fuga. Et harum    |   _string_   |    guid    | ✔           |
|   parentid       |             |    _string_  |    guid    |      ✔       |
|     tenantId     |             |   _string_   |     guid   |      ✔       |
|       volumeId   |     tenetur a sapiente delectus        |   _string_   |     guid   |      ✔       |
|    partitionId      |             |    _string_  |    guid    |       ✔      |
|    name      |             |   _string_   |        |         ✔    |
|   fullPath       |             |   _string_   |        |       ✔      |
|    attributes      |             |  _string_    |        |        ✔     |
|      creationTime    |     On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment        |   _string_   |        |          ✔   |
|   lastAccessTime       |             |    _string_  |        |          ✔   |
|    lastWriteTime      |         dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam    |     _string_ |        |         ✔    |





```Test Responses tab= 
200 dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam
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