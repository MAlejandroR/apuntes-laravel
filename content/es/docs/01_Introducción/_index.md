---
title: "Introducción"
date: 2023-04-08T18:21:47+02:00
draft: false
weight: 10
icon: fa-solid fa-info
---

# Introducción a los Frameworks

{{% pageinfo%}}
Un {{<color_green>}}framework{{</color_green>}} en un entorno o marko de trabajo.
Va a ser una manera de desarrollar organizada y en parte establecida utilizando una determinada tecnología (lenguaje d programación). 
En el caso de {{<color_green>}}Laravel{{</color_green>}} nos va a facilitar:
* Una organización (estructura de carpetas)
* Una serie de utilidades o librerías
{{% /pageinfo%}}

Un **framework** es una estructura conceptual y tecnológica de soporte definida, normalmente con artefactos o módulos de software concretos, con base en la cual se puede organizar y diseñar el desarrollo de software. Facilita el desarrollo de aplicaciones al permitir a los desarrolladores trabajar sobre una estructura base predefinida.


## Características Principales
- **Eficiencia**: Los frameworks permiten a los desarrolladores ahorrar tiempo en el desarrollo de aplicaciones, ya que proporcionan una serie de funcionalidades y herramientas predefinidas que pueden ser reutilizadas.
- **Estandarización**: Promueven el uso de buenas prácticas y patrones de diseño, asegurando un código más limpio, mantenible y escalable.
- **Seguridad**: Incluyen mecanismos para proteger las aplicaciones de ataques comunes, como la inyección de SQL, XSS, entre otros.
- **Comunidad**: Al ser ampliamente utilizados, suelen tener una gran comunidad de desarrolladores que contribuyen a su mejora y expansión.

## ¿Qué es Laravel?

[Laravel](https://laravel.com/) es un framework de desarrollo web con sintaxis expresiva y elegante, diseñado para facilitar tareas comunes utilizadas en la mayoría de los proyectos web, como la autenticación, enrutamiento, sesiones y caché. 
 Laravel se destaca por su elegante sintaxis, su sistema de migración de base de datos, y por estar construido sobre componentes de Symfony, lo que le proporciona una base sólida de código confiable y bien probado.

### Características de Laravel

- **Eloquent ORM**: Un ORM (Object-Relational Mapping) incluido que facilita la interacción con bases de datos a través de modelos de objetos.
- **Blade Template Engine**: Un potente motor de plantillas para crear vistas dinámicas de forma sencilla y limpia.
- **Migraciones de bases de datos**: Permiten versionar la base de datos de tu aplicación, facilitando el despliegue y actualizaciones.
- **Middleware**: Proporciona una forma conveniente de filtrar las peticiones HTTP en tu aplicación.
- **Artisan**: Una interfaz de línea de comandos incluida con Laravel para realizar tareas repetitivas y tediosas durante el desarrollo de una aplicación.

Laravel es ideal para el desarrollo de aplicaciones web modernas, proporcionando un rico conjunto de funcionalidades que permiten a los desarrolladores construir de forma eficiente sin sacrificar la flexibilidad.

## Poniéndolo en funcionamiento

Para comenzar con Laravel, primero necesitas tener instalado PHP y Composer, el gestor de dependencias de PHP. Laravel utiliza Composer para manejar sus dependencias y paquetes.

## Instalar Composer

Composer es una herramienta imprescindible para el desarrollo moderno de PHP. Si aún no lo tienes instalado, puedes descargarlo y obtener instrucciones de instalación desde [getcomposer.org](https://getcomposer.org/).

En sistemas basados en Unix/Linux/MacOS:

```bash
curl -sS https://getcomposer.org/installer | php
mv composer.phar /usr/local/bin/composer
```
En Windows, puedes descargar y ejecutar el [instalador de Composer](https://getcomposer.org/Composer-Setup.exe).

## Instalar Laravel Installer

Una vez que Composer esté instalado, puedes instalar el instalador de Laravel globalmente en tu sistema. Esto te permitirá crear nuevos proyectos de Laravel fácilmente desde cualquier lugar en tu sistema.

```bash
composer global require laravel/installer
```
Asegúrate de que el directorio de instalación global de Composer esté en tu PATH, para que el ejecutable laravel pueda ser localizado por tu sistema.

Crear un proyecto de Laravel
Para crear un nuevo proyecto, simplemente usa el comando laravel new, seguido del nombre que deseas darle a tu proyecto:

```bash

laravel new nombre_del_proyecto
```
Alternativamente, puedes usar Composer directamente para crear un nuevo proyecto:

```
bash
composer create-project --prefer-dist laravel/laravel nombre_del_proyecto
```
