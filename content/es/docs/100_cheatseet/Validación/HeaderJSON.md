---
title: "Header esperados JSON:API"
linkTitle: "Laravel"
weight: 100
icon: fa-brands fa-laravel
draft: false
---
| Request Type    | Method(s)        | Header                                     | Status Code            |
|------------------------|------------------|--------------------------------------------|------------------------|
| Request          | GET, POST, PATCH, DELETE | `Accept: application/vnd.api+json`       | `406 Not Acceptable`   |
| Request                | POST, PATCH      | `Content-Type: application/vnd.api+json`   | `415 Unsupported Media Type` |
| Response               | All              | `Content-Type: application/vnd.api+json`   | `415 Unsupported Media Type` |
