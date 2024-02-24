---
title: "Cheet Sheet"
linkTitle: "Validación (Request)"
weight: 100
menu:
main:
weight: 100
icon: fa-brands fa-laravel
draft: false
---

# Reglas de Validación Comunes
| Regla  | Descripción                                                      |
|--------|------------------------------------------------------------------|
| required | Campo obligatorio.                                               |
| min:valor | Mínimo valor o tamaño.                                           |
| max:valor | Máximo valor o tamaño.                                           |
| between:min,max | Entre un rango.                                                |
| in:val1,val2 | Debe ser uno de los valores listados.                           |
| not_in:val1,val2 | No debe ser uno de los valores listados.                     |
| email | Debe ser un correo electrónico válido.                           |
| url   | Debe ser una URL válida.                                         |
| unique:tabla,campo | Debe ser único en la tabla especificada.                    |
| exists:tabla,campo | Debe existir en la tabla especificada.                       |
| date | Debe ser una fecha válida.                                       |
| numeric| Debe ser numérico.                                               |
| integer | Debe ser un entero.                                              |
| boolean | Debe ser booleano (true o false).                                |
| confirmed | Debe tener un campo de confirmación correspondiente (ej: password y password_confirmation). |
