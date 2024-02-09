---
title: "Excepciones"
linkTitle: "Exception"
weight: 100
icon: fa-brands fa-laravel
draft: false
---



| Excepción                       | Descripción                                                          | Código HTTP |
|---------------------------------|----------------------------------------------------------------------|-------------|
| `ValidationException`           | Error en la validación de datos, usualmente en formularios.          | 422         |
| `QueryException`                | Problemas al realizar consultas a la base de datos.                  | 500         |
| `ModelNotFoundException`        | No se encuentra un modelo en una consulta Eloquent.                  | 404         |
| `AuthenticationException`       | Fallo en la autenticación, usuario no identificado.                  | 401         |
| `AuthorizationException`        | El usuario autenticado no tiene permiso para realizar una acción.    | 403         |
| `NotFoundHttpException`         | Ruta o recurso no encontrado en la aplicación.                       | 404         |
| `MethodNotAllowedHttpException` | Método HTTP usado en la solicitud no es válido para la ruta.         | 405         |
| `HttpException`                 | Excepción HTTP genérica para diferentes códigos de estado HTTP.      | Depende del caso |
| `MassAssignmentException`       | Asignación masiva de datos a un modelo Eloquent no permitida.        | 500         |
| `TokenMismatchException`        | Fallo en la verificación del token CSRF en formularios.              | 419         |
| `ErrorException`                | Error genérico de PHP.                                               | 500         |
| `FatalErrorException`           | Error fatal en PHP, como problemas de sintaxis o llamadas a funciones inexistentes. | 500 |
| `OptimisticLockingFailureException` | Fallo en la concurrencia optimista, usualmente con Eloquent.     | 409         |
