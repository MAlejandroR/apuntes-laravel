---
title: "Helper en Laravel"
date: 2023-04-08T18:21:47+02:00
draft: false
weight: 10
---

# Helpers en Laravel

## ¿Qué son los Helpers?

Helpers en Laravel son funciones globales que proporcionan una manera conveniente y eficiente para realizar tareas comunes en la programación con Laravel. Estas funciones están disponibles globalmente en cualquier parte de tu aplicación.

## Grupos Principales de Helpers

### Helpers de Rutas
- `route()`: Genera una URL para una ruta nombrada.
- `url()`: Genera una URL absoluta.
- `action()`: Genera una URL para un controlador y método específicos.

### Helpers de Strings
- `str_*`: Varias funciones para manipular strings.
- `__()`: Traduce el texto dado según tu localización.

### Helpers de Arrays
- `array_*`: Funciones para manipular arrays.
- `head()`: Devuelve el primer elemento de un array.
- `last()`: Devuelve el último elemento de un array.

### Helpers de Vistas
- `view()`: Genera una nueva vista.
- `response()`: Crea una instancia de respuesta.

### Helpers de URL
- `asset()`: Genera una URL para un asset usando el esquema de URL actual.
- `secure_asset()`: Genera una URL segura para un asset.

### Helpers Generales
- `app()`: Accede a la instancia del contenedor de servicios.
- `config()`: Obtiene o establece valores de configuración.