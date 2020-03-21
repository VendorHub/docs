---
title: Overview
summary: A brief description of my document.
authors:
    - Samuel McAravey
    - Jared McAravey
date: 2018-07-10
some_url: https://example.com
---

# **GET** /tenants/{tenantId}/cmd/info

## Request Parameters

### 1 Path Parameter

   | Property | Description                                                                              | Type     | Format | Required |
   | -------- | ---------------------------------------------------------------------------------------- | -------- | ------ | -------- |
   | tenantId | Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididun | _string_ | uuid   | ✔        |

### 1 Query Parameter

 | Property | Description                                                                                                 | Type     | pattern | Required |
 | -------- | ----------------------------------------------------------------------------------------------------------- | -------- | ------- | -------- |
 | Path     | quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur | _string_ |         | ✔        |
  _

## Responses

### 200

### Headers

 | Property         | Description                                           | Type     | Format    | Required |
 | ---------------- | ----------------------------------------------------- | -------- | --------- | -------- |
 | date             | quae ab illo inventore                                | _string_ | date-time |          |
 | Content-Type     | laboriosam, nisi ut aliquid ex ea commodi consequatur | _string_ |           |          |
 | Content-Encoding | dolore magnam aliquam                                 | _string_ |           |          |
  
### Schema

| Property       | Description                                                                                                                                           | Type     | Format | Required |
| -------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------- | -------- | ------ | -------- |
| id             | dolorum fuga. Et harum                                                                                                                                | _string_ | uuid   | ✔        |
| parentid       |                                                                                                                                                       | _string_ | uuid   | ✔        |
| tenantId       |                                                                                                                                                       | _string_ | uuid   | ✔        |
| volumeId       | tenetur a sapiente delectus                                                                                                                           | _string_ | uuid   | ✔        |
| partitionId    |                                                                                                                                                       | _string_ | uuid   | ✔        |
| name           |                                                                                                                                                       | _string_ |        | ✔        |
| fullPath       |                                                                                                                                                       | _string_ |        | ✔        |
| attributes     |                                                                                                                                                       | _string_ |        | ✔        |
| creationTime   | On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment | _string_ |        | ✔        |
| lastAccessTime |                                                                                                                                                       | _string_ |        | ✔        |
| lastWriteTime  | dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam                                                                                    | _string_ |        | ✔        |

## Example Responses

```cURL tab="cURL"
Example1
```

```C# tab="C#"
Example2
```