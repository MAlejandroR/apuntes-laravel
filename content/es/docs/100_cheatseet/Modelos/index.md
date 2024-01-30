
---
title: "Modelos y Eloquent"
date: 2023-04-08T18:21:47+02:00
draft: false
weight: 40
---


# Eloquent Cheat Sheet

## Obtención y Búsqueda

- `Model::all()` - Recupera todos los registros.
- `Model::get()` - Obtiene una colección de modelos basada en una consulta.
- `Model::find($id)` - Encuentra un modelo por su clave primaria.
- `Model::findOrFail($id)` - Encuentra un modelo por su clave primaria o lanza un error si no se encuentra.
- `Model::first()` - Obtiene el primer registro encontrado en la base de datos.
- `Model::where('column', 'value')` - Aplica una condición a la consulta.

## Creación y Actualización

- `Model::create($data)` - Crea un nuevo registro en la base de datos.
- `Model::updateOrCreate($attributes, $values)` - Actualiza un modelo o lo crea si no existe.
- `Model::findOrFail($id)->update($data)` - Actualiza un modelo existente o lanza un error si no se encuentra.

## Eliminación

- `Model::destroy($id)` - Elimina un modelo por su clave primaria.
- `Model::findOrFail($id)->delete()` - Elimina un modelo existente o lanza un error si no se encuentra.

## Relaciones

- `Model::with('relation')` - Eager load de una relación.
- `Model::has('relation')` - Aplica una condición de existencia de una relación.

## Otros

- `Model::count()` - Cuenta el número de registros.
- `Model::orderBy('column', 'desc')` - Ordena los resultados de la consulta.
