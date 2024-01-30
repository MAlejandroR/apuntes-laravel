---
title: "Creando un api"
date: 2023-04-08T18:21:47+02:00
draft: false
weight: 100
icon: fas fa-code
---

# Creando una API

{{% pageinfo%}}

### Términos importantes que hay que conocer

* API
* REST
* VERBOS HTTP
* RECURSOS
* CÓDIGOS DE ESTADO

####  

****
{{% /pageinfo%}}

## API

Una {{<color_green>}}Interfez de programación de aplicaciones {{</color_green>}}
*****Son programas que permiten que otros programas se conecten con él para obtener recursos.*****

Para ello establecen una {{<color_blue>}}interfaz{{</color_blue>}} para que puedan conectarse a él.

Por un lado una aplicación solicita datos {{<color_blue>}}(request){{</color_blue>}}, y la API se los devuelve {{<
color_blue>}}(response){{</color_blue>}}.

{{<color_green>}}Application Programming Interface{{</color_green>}}
{{< imgproc API Fill "1800x1000" >}}
API Programa que recibe solicitudes y envía respuesta a otros programas
{{< /imgproc >}}

## REST

{{<color_green>}}REpresentational State Transfer{{</color_green>}}(
Transferencia de Estado representacional)

{{< alert title="REST" color="warning" >}}
{{<color_green>}}REST{{</color_green>}} es una especificación o recomendación basada {{<color_green>}}en seis principios
fundamentales {{</color_green>}}que definen su arquitectura.
{{< /alert >}}

Estos principios indican {{<color_green>}}cómo deben representarse los datos que se desean transferir{{</color_green>}},
proporcionando una guía para el desarrollo de sistemas web eficientes y bien estructurados.
{{% pageinfo%}}

## PRINCIPIOS QUE DEFINEN LA ARQUITECTURA DE REST

****
{{<color_green>}}REST se basa en una serie de principios y restricciones que definen su arquitectura. A continuación, se
resumen las seis guías o restricciones principales de REST:
{{</color_green>}}
_________

#### Arquitectura Cliente-Servidor:

- La arquitectura cliente-servidor separa la interfaz de usuario y la lógica del usuario (cliente) de la lógica del
  servidor.
- Mejora la portabilidad del cliente y la escalabilidad del servidor, ya que cada parte puede evolucionar
  independientemente.
- O sea que el API y el CLIENTE son dos entes independientes

#### Sin Estado (Stateless):

- Cada solicitud del cliente al servidor debe contener toda la información necesaria para entender y procesar la
  solicitud.
- El servidor no debe almacenar el estado del cliente entre solicitudes; cada solicitud desde un cliente se trata de
  forma independiente. (Ni cookies ni sesiones)
- El estado de la sesión del usuario se mantiene en el cliente (usando tokens)

#### Cacheable (Almacenamiento en Caché):

- Las respuestas del servidor deben indicar si se pueden almacenar en caché o no.
- La caché puede mejorar la eficiencia y la escalabilidad al reducir la necesidad de recuperar la misma información una
  y otra vez.

#### Interfaz Uniforme:

- Define una interfaz uniforme entre los componentes, lo que facilita la independencia y la evolución de cada
  componente.
-
- La interfaz uniforme se compone de cuatro restricciones:
    - Identificación de Recursos: Cada recurso (información o servicio) se identifica mediante un URI (Uniform Resource
      Identifier).
    - Manipulación de Recursos a través de Representaciones: Los recursos pueden ser representados y manipulados en
      diferentes formatos, como JSON o XML.
    - Mensajes Autodescriptivos: Cada mensaje incluye suficiente información para describir cómo procesar la solicitud.
    - HATEOAS (Hypertext As The Engine Of Application State): La aplicación es conducida por hipermedios proporcionados
      dinámicamente a través de aplicaciones de navegadores, es decir {{<color_green>}}el servidor debe de facilitar
      información que nos diga cómo navegar por la API, no solo facilitar datso{{</color_green>}}

#### Sistema de Capas (Layered System):

- La arquitectura se puede organizar en capas jerárquicas.
- Cada capa realiza una funcionalidad específica y solo interactúa directamente con las capas adyacentes.

#### Codigo Bajo Demanda (Code on Demand) [opcional]:

- Los clientes pueden descargar y ejecutar código (como applets o scripts) desde el servidor.
- Esta restricción es opcional y no se utiliza comúnmente en aplicaciones RESTful.

Estas restricciones definen los principios clave de REST y proporcionan una guía para desarrollar sistemas web
eficientes, escalables y bien estructurados.

{{% /pageinfo%}}

## Verbos HTTP

Si la API funciona con el protocolo HTTP, entonces establos hablando de una {{<color_blue>}}API RestFull{{<
/color_blue>}}
HTTP sabemos que es un protocolo para transferir texto a través de internet
{{< alert title="Recurso" color="warning" >}}
Un recurso es información que está en el servidor a la cual vamos a poder acceder a través de una url
ej: http://localhost:8000/alumnos {{<color_green>}}alumnos es un recurso{{</color_green>}}
{{< /alert >}}

### Resource

En una API RESTful, los conceptos de {{<color_blue>}}recurso{{</color_blue>}} y {{<color_blue>}}representación{{<
/color_blue>}} son fundamentales y especifican relacionados con cómo se estructura y accede a los datos. :    
{{<color_blue>}}**Recurso**{{</color_blue>}}: En el contexto de una API RESTful, un recurso se refiere a una entidad o
concepto concreto que puede ser identificado de forma única.

Los recursos suelen estar asociados con entidades de base de datos, correspondiendo en la mayoría de casos con con una
tabla o un registro en la base de datos.

Por ejemplo, un recurso puede ser un usuario, un artículo de un blog, o un producto en una tienda en línea.

Si lo ubicamos en la base de datos, los recursos corresponden a filas en tablas específicas.
También puede ser una combinación de datos provenientes de múltiples tablas o incluso de sistemas externos.
en sí.

### Representación

{{<color_blue>}}** La representación**{{</color_blue>}} es la forma concreta en que se muestra o se expone un recurso a
los clientes de la API.

A menudo, esta representación es un documento JSON o XML que contiene la información del recurso.

La representación es una "vista" del recurso y puede ser personalizada o modificada para satisfacer las necesidades de
diferentes clientes o contextos, sin cambiar la naturaleza del recurso
Ej. de una representacioń de un recurso de profesor

````json
{
  "id": 1,
  "nombre": "D. Gabriel Palomo Segundo",
  "email": "smerino@example.net",
  "proyecto_id": null
},
````

### HTTP

Una api es Rest full cuando además de utilizar las 6 restricciones, utiliza el protocolo http para su implementación .
http es un protocolo que atiende a solicitudes según el verbo o palabra especial por el que solicitan; los que usaremos
son :
GET : Para solicitar un recurso o lista de recursos
POST: Para enviar un recurso al servidor que queremos crear
DELETE: Pare eliminar un recurso
PUT: Para sustituir un recurso por otro
PATCH: Para modificar algún valor de un recurso

| Método | Descripción           | Endpoint       | Ejemplo de Cuerpo                                                                 |
|--------|-----------------------|----------------|-----------------------------------------------------------------------------------|
| GET    | Obtener elementos     | /teachers      |                                                                                   |
| GET    | Obtener un elemento   | /teachers/{id} |                                                                                   |
| POST   | Insertar un recurso   | /teachers      | { "id": 1, "nombre": "María Ruiz", "email": "maria@gmail.net", "proyecto_id": 1 } |
| DELETE | Eliminar un recurso   | /teachers/{id} |                                                                                   |
| PATCH  | Actualizar un recurso | /teachers/{id} |                                                                                   |
| PUT    | Reemplazar un recurso | /teachers/{id} |                                                                                   |

#### Respuestas http

El servidor entregará la respuesta junto con un código de estado (lo más usado)

| Código | Tipo de Información  | Descripción                 |
|--------|----------------------|-----------------------------|
| 1xx    | Información          |                             |
| 2xx    | ÉXITO                |                             |
| 200    | ÉXITO                | OK                          |
| 201    | ÉXITO                | Created                     |
| 204    | ÉXITO                | No Content                  |
| 3xx    | REDIRECCIONAMIENTO   |                             |
| 301    | REDIRECCIONAMIENTO   | Movido                      |
| 302    | REDIRECCIONAMIENTO   | Otra URL                    |
| 303    | REDIRECCIONAMIENTO   | Otra URL                    |
| 307    | REDIRECCIONAMIENTO   | Redirección Temporal        |
| 308    | REDIRECCIONAMIENTO   | Redirección Permanente      |
| 4xx    | ERROR EN EL CLIENTE  |                             |
| 400    | ERROR EN EL CLIENTE  | Mala Solicitud              |
| 401    | ERROR EN EL CLIENTE  | Unauthorized                |
| 403    | ERROR EN EL CLIENTE  | Forbidden                   |
| 5xx    | ERROR EN EL SERVIDOR |                             |
| 500    | ERROR EN EL SERVIDOR | Error del Servidor          |
| 502    | ERROR EN EL SERVIDOR | Puerta de Enlace Incorrecta |
| 503    | ERROR EN EL SERVIDOR | Servicio No Alcanzable      |

### JSON:API Spect

Tiene el siguiente formato

```json
{
  "data": [],
  "errors": [],
  "meta": [],
  "included": [],
  "links": [],
  "jsonapi": {
    "version": "1.0"
  }
}
```

#### data

```json
{
  "data": {
    "type": "project",
    "id": (string),
    "1",
    "attribures": {
      "id": "1",
      "titulo": "....",
      "horas": "....",
      "web": "...."
    },
    "relationships": {
      "users": {
        "data": {
          "type"
          =
          "users",
          "id": "3"
        }
      },
      "teachers": {
      }
    },
    "links": {
      "self": "http://localhost:8000/prjects(1"
    },
    "meta": {
    }
  }
}
### errors

````json
"erors": [
    {
        "status": "422",
        "title": "..."
        "details": "..."
        "source": {
            "pointer": "/data/attribures/campo"
                  }
    }
]

```