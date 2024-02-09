---
title: "Creando un proyecto Laravel"
date: 2023-04-08T18:21:47+02:00
draft: false
weight: 20
icon: fa-solid fa-arrow-right
---
## Levantar el proyecto
## Estructura de carpetas
### Estructura de carpetas
{{% pageinfo%}}

La estructura de carpetas de un proyecto de Laravel es intuitiva y bien organizada.

Aquí tienes un desglose de las carpetas más importantes:


![img.png](img.png)


* {{<color_green>}}/app{{</color_green>}}
> Contiene el código fuente de la aplicación, incluyendo modelos, controladores y políticas de acceso.    
 
* {{<color_green>}}/resources{{</color_green>}}
> Alberga las vistas (templates Blade), archivos de idiomas y otros archivos que se utilizan para generar la respuesta web.
* {{<color_green>}}/routes{{</color_green>}}
> Aquí se definen todas las rutas de la aplicación. Laravel separa las rutas en archivos como web.php (rutas web) y api.php (rutas API).
* {{<color_green>}}/config{{</color_green>}}
> Contiene todos los archivos de configuración de Laravel.
* {{<color_green>}}/public{{</color_green>}}
> Es el directorio raíz accesible públicamente. Aquí se encuentran el index.php y los assets como imágenes, JavaScript y CSS.
* {{<color_green>}}/database{{</color_green>}}
> Incluye las migraciones, modelos de fábrica y archivos de semillas para la base de datos.
* {{<color_green>}}/storage{{</color_green>}}
> Usado para almacenar logs, archivos generados por la aplicación y archivos subidos.
* {{<color_green>}}/tests{{</color_green>}}
> Contiene pruebas automatizadas que puedes escribir y ejecutar para tu aplicación.

  Esta estructura promueve un patrón de diseño limpio y una separación clara de responsabilidades, facilitando el mantenimiento y la escalabilidad de las aplicaciones.

{{% /pageinfo%}}
## MVC



